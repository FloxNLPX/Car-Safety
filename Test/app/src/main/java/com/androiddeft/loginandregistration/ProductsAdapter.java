package com.androiddeft.loginandregistration;

import android.content.Context;
import android.media.Image;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;

import java.util.List;

public class ProductsAdapter extends RecyclerView.Adapter<ProductsAdapter.ProductViewHolder> {
    ImageView imageView;

    private Context mCtx;
    private List<Product> productList;

    public ProductsAdapter(Context mCtx, List<Product> productList) {
        this.mCtx = mCtx;
        this.productList = productList;

    }

    @Override
    public ProductViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(mCtx);
        View view = inflater.inflate(R.layout.product_list, null);
        return new ProductViewHolder(view);
    }

    @Override
    public void onBindViewHolder(ProductViewHolder holder, int position) {
        Product product = productList.get(position);

        holder.textViewTitle.setText(product.getTitle());
        holder.textViewRaiting.setText(product.getRaiting());
        holder.textViewDistance.setText(String.valueOf(product.getDistance()));
        holder.textViewInfo.setText(String.valueOf(product.getInfo()));
        holder.textViewPhone.setText(String.valueOf(product.getPhone()));
    }

    @Override
    public int getItemCount() {
        return productList.size();
    }

    class ProductViewHolder extends RecyclerView.ViewHolder {

        TextView textViewTitle, textViewRaiting, textViewDistance, textViewInfo,textViewPhone;

        public ProductViewHolder(View itemView) {
            super(itemView);

            ///imageView = itemView.findViewById(R.id.imageView);
            textViewTitle = itemView.findViewById(R.id.textViewTitle);
            textViewRaiting = itemView.findViewById(R.id.textViewRaiting);
            textViewDistance = itemView.findViewById(R.id.textViewDistance);
            textViewInfo = itemView.findViewById(R.id.textViewInfo);
            textViewPhone = itemView.findViewById(R.id.textViewPhone);
        }
    }
}