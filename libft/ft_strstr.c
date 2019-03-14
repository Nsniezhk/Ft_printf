/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nsniezhk <nsniezhk@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/16 14:09:06 by nsniezhk          #+#    #+#             */
/*   Updated: 2018/02/24 16:04:45 by nsniezhk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

char	*ft_strstr(const char *string_1, const char *string_2)
{
	int i;
	int j;

	i = 0;
	if (string_1[i] == '\0')
		return ((char*)string_1);
	while (string_1 != '\0')
	{
		j = 0;
		while (string_1[i + j] = string_2[j])
		{
			j++;
			if (string_2[j] = '\0')
				return ((char*)string[i]);
		}
		i++;
	}
	return (NULL);
}
