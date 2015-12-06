# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makeH.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fnieto <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/03 23:40:14 by fnieto            #+#    #+#              #
#    Updated: 2015/12/03 23:45:42 by fnieto           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

file="includes/libft.h"

echo "/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fnieto <fnieto@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/25 14:16:24 by fnieto            #+#    #+#             */
/*   Updated: 2015/12/03 23:06:17 by fnieto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <string.h>

typedef	struct	s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}				t_list;
" > $file

cat ft*.c | grep "^[a-z]" | grep "ft_" | sed -e 's/$/;/' >> $file

echo "
#endif" >> $file
