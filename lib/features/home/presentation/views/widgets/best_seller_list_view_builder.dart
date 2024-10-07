import 'package:bookly/core/widgets/custom_circular_loading.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manager/best_seller_cubit/cubit/best_seller_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class BestSellerListViewBuilder extends StatelessWidget {
//   const BestSellerListViewBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(  physics: const NeverScrollableScrollPhysics(),      itemCount: 20, padding: EdgeInsets.zero, itemBuilder: (context, index) {
//       return const BestSellerListViewItem();
//     });
//   }
// }

class BestSellerSliverListBuilder extends StatelessWidget {
  const BestSellerSliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerFailureState) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else if (state is BestSellerSucessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,  
              (context, index) =>  BestSellerListViewItem(bookModel: state.books[index],)
     ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomCircularLoading(),
          );
        }

        
      },
    );
  }
}




