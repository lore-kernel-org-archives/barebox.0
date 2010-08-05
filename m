Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgzfF-0007Jv-3J
	for barebox@lists.infradead.org; Thu, 05 Aug 2010 12:35:14 +0000
Date: Thu, 5 Aug 2010 14:23:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100805122349.GC24069@game.jcrosoft.org>
References: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] misc: introduce string_to_bin
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi,

	how about use the kernel printf format instead

Best Regards,
J.
On 14:23 Thu 05 Aug     , Baruch Siach wrote:
> Factor out string_to_bin from string_to_ethaddr. string_to_bin is useful for
> other hex data strings.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  include/common.h |    1 +
>  lib/misc.c       |   29 +++++++++++++++++++++++++++++
>  net/net.c        |   17 +----------------
>  3 files changed, 31 insertions(+), 16 deletions(-)
> 
> diff --git a/include/common.h b/include/common.h
> index 0edc778..f600eb0 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -127,6 +127,7 @@ struct memarea_info {
>  
>  int spec_str_to_info(const char *str, struct memarea_info *info);
>  int parse_area_spec(const char *str, ulong *start, ulong *size);
> +int string_to_bin(const char *str, u8 *buf, unsigned int buflen);
>  
>  /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
>  unsigned long strtoul_suffix(const char *str, char **endp, int base);
> diff --git a/lib/misc.c b/lib/misc.c
> index 549b960..7735725 100644
> --- a/lib/misc.c
> +++ b/lib/misc.c
> @@ -107,3 +107,32 @@ int parse_area_spec(const char *str, ulong *start, ulong *size)
>  	return -1;
>  }
>  EXPORT_SYMBOL(parse_area_spec);
> +
> +/*
> + * This function parses strings in the form "xx:xx:xx...", where x is an
> + * hexadecimal digit.
> + */
> +int string_to_bin(const char *str, u8 *buf, unsigned int buflen)
> +{
> +	int i;
> +	char *e;
> +
> +	if (!str || strlen(str) != buflen*3 - 1)
> +		return -1;
> +
> +	for (i = 0; i < buflen-1; i++)
> +		if (str[i*3 + 2] != ':')
> +			return -1;
> +
> +	for (i = 0; str[i]; i++)
> +		if (!isxdigit(str[i]) && !(str[i] == ':'))
> +			return -1;
> +
> +	for (i = 0; i < buflen; i++) {
> +		buf[i] = simple_strtoul(str, &e, 16);
> +		str = e + 1;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(string_to_bin);
> diff --git a/net/net.c b/net/net.c
> index 8d99595..017de8b 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -161,22 +161,7 @@ void print_IPaddr (IPaddr_t x)
>  
>  int string_to_ethaddr(const char *str, char *enetaddr)
>  {
> -	int reg;
> -	char *e;
> -
> -        if (!str || strlen(str) != 17)
> -                return -1;
> -
> -        if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
> -                        str[11] != ':' || str[14] != ':')
> -                return -1;
> -
> -	for (reg = 0; reg < 6; ++reg) {
> -		enetaddr[reg] = simple_strtoul (str, &e, 16);
> -			str = e + 1;
> -	}
> -
> -	return 0;
> +	return string_to_bin(str, enetaddr, 6);
>  }
>  
>  void ethaddr_to_string(const unsigned char *enetaddr, char *str)
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
