<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public function increaseQuantity($rowId){
        $produc=Cart::instace('cart')->get($rowId);
        $qty=$produc->qty+1;
        Cart::instace('cart')->update($rowId,$qty);
        $this->emitTo('cart-icon-component','refreshComponent');
    }
    public function decreaseQuantity($rowId){
        $produc=Cart::instace('cart')->get($rowId);
        $qty=$produc->qty-1;
        Cart::instace('cart')->update($rowId,$qty);
        $this->emitTo('cart-icon-component','refreshComponent');
    }
    public function destroy($id){
        Cart::instace('cart')->remove($id);
        $this->emitTo('cart-icon-component','refreshComponent');
        session()->flash('success_message','Item has been removed!');
    }
    public  function clearAll(){
        Cart::instace('cart')->destroy();
        $this->emitTo('cart-icon-component','refreshComponent');
    }
    public function render()
    {
        return view('livewire.cart-component');
    }
}
