Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STf8N-0004qB-55
 for barebox@lists.infradead.org; Sun, 13 May 2012 20:11:16 +0000
Date: Sun, 13 May 2012 22:11:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513201112.GF27341@pengutronix.de>
References: <1336733893-9907-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336733893-9907-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/1] linux/types.h: define phys_size_t
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, May 11, 2012 at 11:58:13AM +0100, Renaud Barbier wrote:
> Add this definition in preparation for the introduction of the
> mpc85xx support.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  include/linux/types.h |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/include/linux/types.h b/include/linux/types.h
> index 16cc3ce..76c6b67 100644
> --- a/include/linux/types.h
> +++ b/include/linux/types.h
> @@ -144,8 +144,10 @@ typedef __u32 __bitwise __wsum;
>  
>  #ifdef CONFIG_PHYS_ADDR_T_64BIT
>  typedef u64 phys_addr_t;
> +typedef u64 phys_size_t;
>  #else
>  typedef u32 phys_addr_t;
> +typedef u32 phys_size_t;
>  #endif
>  
>  typedef phys_addr_t resource_size_t;
> -- 
> 1.7.1
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
