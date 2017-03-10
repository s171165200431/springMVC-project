
package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
	  cartItemDao.addCartItem(cartItem);
		
	}
	public void removeCartItem(CartItem cartItem) {
		  cartItemDao.removeCartItem(cartItem);
			
		}
	public void removeAllCartItems(Cart cart) {
		  cartItemDao.removeAllCartItems(cart);
			
		}
	@Override
	public CartItem getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItem(cartItemId);
	}
	public Cart getCart(int cartId) {
		// TODO Auto-generated method stub
		return CartDao.getCart(cartId);
	}
}