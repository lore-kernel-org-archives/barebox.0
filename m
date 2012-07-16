Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqgnw-0006TV-SO
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 08:37:21 +0000
Date: Mon, 16 Jul 2012 10:37:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716083716.GE30009@pengutronix.de>
References: <1342159489-1474-1-git-send-email-jbe@pengutronix.de>
 <1342159489-1474-2-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342159489-1474-2-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/4] Enable a way to provide the reason for "being here"
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 13, 2012 at 08:04:46AM +0200, Juergen Beisert wrote:
> Many architectures support a way to detect why the bootloader is running.
> This patch adds a global variable to be able to use the cause in some kind of
> shell code to do special things on demand. For example to do an emergency boot,
> when the last boot fails and the watchdog reactivate the hanging system.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  common/Makefile        |    2 +-
>  common/reset_source.c  |   44 ++++++++++++++++++++++++++++++++++++++++++++
>  include/reset_source.h |   27 +++++++++++++++++++++++++++
>  3 files changed, 72 insertions(+), 1 deletion(-)
>  create mode 100644 common/reset_source.c
>  create mode 100644 include/reset_source.h
> 
> diff --git a/common/Makefile b/common/Makefile
> index d99dfa2..baf4539 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -29,7 +29,7 @@ obj-$(CONFIG_UIMAGE) += uimage.o
>  obj-y += startup.o
>  obj-y += misc.o
>  obj-y += memsize.o
> -obj-$(CONFIG_GLOBALVAR) += globalvar.o
> +obj-$(CONFIG_GLOBALVAR) += globalvar.o reset_source.o

This should be a separate config option which depends on GLOBALVAR.


> +	RESET_WKE,	/* wake-up (some SoCs can handle this) */
> +	RESET_JTAG,	/* JTAG reset */
> +};
> +
> +extern void set_reset_source(enum reset_src_type);

'extern' is not needed in function declarations.

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
