Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42Jk-0004iz-U5
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:22:25 +0000
Date: Mon, 7 Jul 2014 08:22:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707062202.GC23235@pengutronix.de>
References: <1404379178-24417-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404379178-24417-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] rtc.h: drop unused U-Boot stuff; fix whitespace
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 03, 2014 at 01:19:38PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  include/rtc.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/include/rtc.h b/include/rtc.h
> index c71ec4d..c2d8bce 100644
> --- a/include/rtc.h
> +++ b/include/rtc.h
> @@ -31,7 +31,7 @@
>   * Note that there are small but significant differences to the
>   * common "struct time":
>   *
> - * 		struct time:		struct rtc_time:
> + *		struct time:		struct rtc_time:
>   * tm_mon	0 ... 11		1 ... 12
>   * tm_year	years since 1900	years since 0
>   */
> @@ -48,10 +48,6 @@ struct rtc_time {
>  	int tm_isdst;
>  };
>  
> -void rtc_get (struct rtc_time *);
> -void rtc_set (struct rtc_time *);
> -void rtc_reset (void);
> -
>  void GregorianDay (struct rtc_time *);
>  void to_tm (int, struct rtc_time *);
>  unsigned long mktime (unsigned int, unsigned int, unsigned int,
> -- 
> 2.0.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
