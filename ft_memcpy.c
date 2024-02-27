/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yilim <yilim@student.42kl.edu.my>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 20:00:16 by yilim             #+#    #+#             */
/*   Updated: 2024/02/27 20:00:16 by yilim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	size_t	count;

	if (dest == NULL && src == NULL)
		return (NULL);
	count = 0;
	while (count < n)
	{
		((char *)dest)[count] = ((char *)src)[count];
		count++;
	}
	return (dest);
}
