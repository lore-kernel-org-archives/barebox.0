Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9fxf-0003Rj-8S
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 17:33:51 +0000
Date: Thu, 6 Sep 2012 19:33:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906173349.GE26594@pengutronix.de>
References: <1346945029-4767-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346945029-4767-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] ARM Makefile: switch to kbuild command definition for
 mkublheader
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 05:23:49PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/Makefile |   11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 67fe5cf..13222f4 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -203,10 +203,13 @@ KBUILD_TARGET := MLO
>  KBUILD_IMAGE := MLO
>  endif
>  
> -barebox.ubl: $(KBUILD_BINARY)
> -	@echo "  UBL    " $@
> -	$(Q)scripts/mkublheader $< > barebox.ubl
> -	$(Q)cat $< >> barebox.ubl
> +quiet_cmd_davinci_ubl_image = UBL-IMG $@
> +      cmd_davinci_ubl_image = set -e; \
> +	 scripts/mkublheader $< > $@; \
> +	 cat $< >> $@
> +
> +barebox.ubl: $(KBUILD_BINARY) FORCE
> +	$(call if_changed,davinci_ubl_image)
>  
>  ifeq ($(CONFIG_ARCH_DAVINCI),y)
>  KBUILD_TARGET := barebox.ubl
> -- 
> 1.7.10.4
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
