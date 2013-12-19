Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtYhE-0006mO-2J
 for barebox@lists.infradead.org; Thu, 19 Dec 2013 08:11:08 +0000
Date: Thu, 19 Dec 2013 09:10:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131219081042.GX24559@pengutronix.de>
References: <1387194442-2607-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387194442-2607-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] Makefile: fix endless make when 'make barebox.s'
To: u74147@gmail.com
Cc: barebox@lists.infradead.org

On Mon, Dec 16, 2013 at 07:47:22PM +0800, u74147@gmail.com wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> add the same target barebox.s (with a lowercase 's')
> to make both work with barebox.S and barebox.s.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>

Applied, thanks

Sascha

> ---
>  Makefile |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 5e17a49..d7b5d23 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -701,7 +701,7 @@ barebox.uimage: $(KBUILD_BINARY) FORCE
>  	$(call if_changed,barebox_mkimage)
>  
>  ifdef CONFIG_X86
> -barebox.S: barebox
> +barebox.S barebox.s: barebox
>  ifdef CONFIG_X86_HDBOOT
>  	@echo "-------------------------------------------------" > barebox.S
>  	@echo " * MBR content" >> barebox.S
> @@ -723,7 +723,7 @@ endif
>  	@echo " * Init Calls content" >> barebox.S
>  	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
>  else
> -barebox.S: barebox FORCE
> +barebox.S barebox.s: barebox FORCE
>  	$(call if_changed,disasm)
>  endif
>  
> -- 
> 1.7.9.5
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
