Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZQtr-0002O4-FE
 for barebox@lists.infradead.org; Mon, 06 May 2013 19:16:40 +0000
Date: Mon, 6 May 2013 21:16:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506191615.GO20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Fri, May 03, 2013 at 06:51:06PM +0200, Thomas Petazzoni wrote:
> The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> that understand a specific image format, composed of a main header,
> several extension headers and a paylod. This image can be booted from
> NAND, SPI, SATA, UART, NOR, etc.
> 
> This patch adds a tool that allows to extract the components and
> configuration of existing images, and to create new images.
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> ---
>  scripts/.gitignore |    1 +
>  scripts/Makefile   |    3 +-
>  scripts/kwbimage.c | 1224 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 1227 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/kwbimage.c
> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 1ca6603..414de7f 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -2,6 +2,7 @@ bareboxenv
>  bin2c
>  gen_netx_image
>  kallsyms
> +kwbimage
>  mk-am35xx-spi-image
>  mkimage
>  mkublheader
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 08b325c..22ec4b6 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -8,6 +8,7 @@ hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
>  hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
> +hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
> @@ -27,7 +28,7 @@ subdir-$(CONFIG_X86)             += setupmbr
>  subdir-	+= basic kconfig setupmbr
>  
>  quiet_cmd_csingle	= CC      $@
> -      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
> +      cmd_csingle	= $(CC)  -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<

This is a whitespace change only, right? Please drop this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
