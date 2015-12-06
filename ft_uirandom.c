/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_uirandom.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fnieto <fnieto@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/28 21:27:04 by fnieto            #+#    #+#             */
/*   Updated: 2015/11/28 21:47:16 by fnieto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_uirandom(size_t min, size_t max, size_t seed)
{
	size_t m_z;
	size_t m_w;

	m_z = seed;
	m_w = seed % 65536 * 65536 + seed / 65536;
	m_z = 36969 * (m_z & 65535) + (m_z >> 16);
	m_w = 18000 * (m_w & 65535) + (m_w >> 16);
	return (((m_z << 16) + m_w) % (max - min) + min);
}
