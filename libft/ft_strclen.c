/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strclen.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nsniezhk <nsniezhk@student.unit.ua>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/03 16:46:09 by nsniezhk          #+#    #+#             */
/*   Updated: 2018/04/05 16:47:48 by nsniezhk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strclen(char *str, char c)
{
	int	len;

	len = 0;
	while (str[len] && str[len] != c)
		len++;
	return (len);
}
