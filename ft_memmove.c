/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fnieto <fnieto@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/23 12:54:54 by fnieto            #+#    #+#             */
/*   Updated: 2015/12/06 15:49:13 by fnieto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	void	*buf;
	void	*tmp;
	size_t	i;

	i = n;
	buf = (void*)malloc(n);
	if (!buf)
		return (0);
	tmp = buf;
	while (i--)
		*((char*)tmp++) = *((char*)src++);
	tmp = dest;
	i = n;
	while (i--)
		*((char*)tmp++) = *((char*)buf++);
	free(buf - n);
	return (dest);
}
