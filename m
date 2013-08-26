Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDvTy-00057z-In
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 12:01:19 +0000
Message-ID: <521B4376.90202@phytec.de>
Date: Mon, 26 Aug 2013 14:00:54 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
 <1377500163-28962-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-7-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/22] ARM: omap: fix omap_save_bootinfo
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am 26.08.2013 08:55, schrieb Sascha Hauer:

>   
> diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
> index 07cc1d7..4f39600 100644
> --- a/arch/arm/boards/pcm049/lowlevel.c
> +++ b/arch/arm/boards/pcm049/lowlevel.c
> @@ -23,6 +23,7 @@
>   #include <mach/generic.h>
>   #include <mach/omap4-mux.h>
>   #include <mach/omap4-silicon.h>
> +#include <mach/omap4-generic.h>
>   #include <mach/omap4-clock.h>
>   #include <mach/syslib.h>
>   #include <asm/barebox-arm.h>
> @@ -110,7 +111,7 @@ static void noinline pcm049_init_lowlevel(void)
>   
>   void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
>   {
> -	omap_save_bootinfo();
> +	omap4_save_bootinfo(data);
>   
>   	arm_cpu_lowlevel_init();
>   
> diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
> index dd06c6a..3a637cf 100644
> --- a/arch/arm/boards/pcm051/lowlevel.c
> +++ b/arch/arm/boards/pcm051/lowlevel.c
> @@ -210,7 +210,7 @@ static int pcm051_board_init(void)

the <mach/am33xx-generic.h> include is missing here.

Teresa

>   
>   void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
>   {
> -	omap_save_bootinfo();
> +	am33xx_save_bootinfo(data);
>   
>   	arm_cpu_lowlevel_init();

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
