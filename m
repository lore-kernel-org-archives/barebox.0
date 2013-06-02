Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj4U2-0001UH-28
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 09:21:50 +0000
Date: Sun, 2 Jun 2013 11:21:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130602092127.GR32299@pengutronix.de>
References: <1370095105-63468-1-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370095105-63468-1-git-send-email-monaka@monami-ya.com>
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
Subject: Re: [PATCH] Enables to build bootm command on generic_x86.
To: monaka@monami-ya.jp
Cc: barebox@lists.infradead.org

On Sat, Jun 01, 2013 at 10:58:25PM +0900, monaka@monami-ya.jp wrote:
> From: Masaki Muranaka <monaka@monami-ya.jp>
> 
> I'm not sure but I guess we don't need defined(__I386__) check.
> I kept it for now.
> 
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>

Applied, thanks

Sascha


> ---
>  include/image.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/image.h b/include/image.h
> index 219419b..0c8a4b1 100644
> --- a/include/image.h
> +++ b/include/image.h
> @@ -89,7 +89,7 @@
>  #define IH_ARCH IH_ARCH_PPC
>  #elif defined(__ARM__)
>  #define IH_ARCH IH_ARCH_ARM
> -#elif defined(__I386__) || defined(__x86_64__)
> +#elif defined(__I386__) || defined(__x86_64__) || defined(__i386__)
>  #define IH_ARCH IH_ARCH_I386
>  #elif defined(__mips__)
>  #define IH_ARCH IH_ARCH_MIPS
> -- 
> 1.8.3
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
