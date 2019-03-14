/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nsniezhk <nsniezhk@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/15 12:03:27 by nsniezhk          #+#    #+#             */
/*   Updated: 2018/02/24 15:59:40 by nsniezhk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

void	*ft_memset(void *destination, int c, size_t lengh)
{
	size_t			counter;
	unsigned char	*new_str;

	counter = 0;
	new_str = (unsigned char*)destination;
	while (counter < lengh)
	{
		new_str[counter] = (unsigned char)c;
		counter++;
	}
	destination = new_str;
	return (destination);
}
