package com.androiddeft.loginandregistration;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.androiddeft.loginandregistration.Constructor.Product;

import java.util.List;

public class ProductsAdapter extends RecyclerView.Adapter<ProductsAdapter.ProductViewHolder> {


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

        holder.textViewTixstatus.setText(product.gettixstatus());
        holder.textViewmembershipid.setText(product.getmembershipid());
        holder.textViewregno.setText(String.valueOf(product.getregno()));
        holder.textViewvmodel.setText(String.valueOf(product.getvmodel()));
    }

    @Override
    public int getItemCount() {
        return productList.size();
    }

    class ProductViewHolder extends RecyclerView.ViewHolder {

        TextView textViewTixstatus, textViewmembershipid, textViewregno, textViewvmodel;

        public ProductViewHolder(View itemView) {
            super(itemView);

            textViewTixstatus = itemView.findViewById(R.id.textViewtixstatus);
            textViewmembershipid = itemView.findViewById(R.id.textViewmembershipid);
            textViewregno = itemView.findViewById(R.id.textViewregno);
            textViewvmodel = itemView.findViewById(R.id.textViewvmodel);
        }
    }
}