Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqZb-0003Pk-7b
 for barebox@lists.infradead.org; Tue, 05 May 2020 05:56:56 +0000
Date: Tue, 5 May 2020 07:56:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200505055652.GY5877@pengutronix.de>
References: <20200504142455.404658-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504142455.404658-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/4] common.h: remove unused region_overlap()
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Mon, May 04, 2020 at 11:24:52PM +0900, Masahiro Yamada wrote:
> This is not used at all.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  include/common.h | 9 ---------
>  1 file changed, 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/common.h b/include/common.h
> index d73fc3d13..3570e6aba 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -142,15 +142,6 @@ void barebox_set_hostname_no_overwrite(const char *);
>  /*
>   * Check if two regions overlap. returns true if they do, false otherwise
>   */
> -static inline bool region_overlap(unsigned long starta, unsigned long lena,
> -		unsigned long startb, unsigned long lenb)
> -{
> -	if (starta + lena <= startb)
> -		return 0;
> -	if (startb + lenb <= starta)
> -		return 0;
> -	return 1;
> -}
>  
>  static inline bool lregion_overlap(loff_t starta, loff_t lena,
>  				   loff_t startb, loff_t lenb)
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
