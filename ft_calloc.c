/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yilim <yilim@student.42kl.edu.my>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 02:43:57 by yilim             #+#    #+#             */
/*   Updated: 2024/03/04 02:43:57 by yilim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nelem, size_t elsize)
{
	void	*ptr;

	// if (nelem && (-1 / nelem) < elsize)
	// 	return (0);
	ptr = malloc(nelem * elsize);
	if (!ptr)
		return (NULL);
	ft_bzero(ptr, nelem * elsize);
	return (ptr);
}
