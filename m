Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOO8I-0008LO-MB
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:42:43 +0000
Date: Mon, 1 Sep 2014 11:42:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901094210.GO5352@pengutronix.de>
References: <1408061492-32718-1-git-send-email-apr@cn-eng.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408061492-32718-1-git-send-email-apr@cn-eng.de>
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
Subject: Re: [PATCH] scripts: gitignore: update based on Makefile
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 15, 2014 at 02:11:32AM +0200, Andreas Pretzsch wrote:
> Create up-to-date list of hostprogs and targetprogs based on Makefile.
> Have this list sorted like the targets in the Makefile to ease maintenance.
> Also move some leftovers from root .gitignore over here.
> 
> Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>

Applied, thanks.

Sascha

> ---
> patch relative to master as of 07.08.2014 (45615e3)
> 
>  .gitignore         |  3 ---
>  scripts/.gitignore | 20 ++++++++++++--------
>  2 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index a62e08c..5d9157d 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -83,6 +83,3 @@ cscope.*
>  
>  # patches
>  *.patch
> -scripts/gen_netx_image
> -scripts/s5p_cksum
> -scripts/bareboxenv-target
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index fddc04b..1df04ba 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -1,17 +1,21 @@
> -bareboxenv
>  bin2c
> +mkimage
>  fix_size
> -gen_netx_image
> -kallsyms
> +bareboxenv
> +bareboxcrc32
>  kernel-install
> -kernel-install-target
> +bareboximd
> +kallsyms
>  kwbimage
>  kwboot
> -mk-am35xx-spi-image
> -mkimage
> -mkublheader
> +gen_netx_image
>  omap_signGP
> +mk-am3xxx-spi-image
> +s5p_cksum
> +mkublheader
>  zynq_mkimage
>  socfpga_mkimage
> -bareboxcrc32
> +bareboxenv-target
> +kernel-install-target
>  bareboxcrc32-target
> +bareboximd-target
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
