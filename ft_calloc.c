/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pbongiov <pbongiov@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/12 18:52:33 by pbongiov          #+#    #+#             */
/*   Updated: 2025/04/15 15:20:47 by pbongiov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t num, size_t size)
{
	void	*var;

	if (size != 0 && num > (size_t)-1 / size)
		return (NULL);
	var = malloc(num * size);
	if (!var)
		return (NULL);
	ft_memset(var, 0, (num * size));
	return (var);
}
