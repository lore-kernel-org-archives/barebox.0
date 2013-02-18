Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp205.iad.emailsrvr.com ([207.97.245.205])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7QyQ-0004gK-KX
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 13:41:39 +0000
Message-ID: <51222F8E.5050403@calxeda.com>
Date: Mon, 18 Feb 2013 07:41:34 -0600
From: Rob Herring <rob.herring@calxeda.com>
MIME-Version: 1.0
References: <1361048879-7331-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1361048879-7331-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] highbank: add power off support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/16/2013 03:07 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Kconfig                    |    1 +
>  arch/arm/configs/highbank_defconfig |    1 +
>  arch/arm/mach-highbank/reset.c      |    8 ++++++++
>  3 files changed, 10 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index f002910..7ac134e 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -49,6 +49,7 @@ config ARCH_EP93XX
>  config ARCH_HIGHBANK
>  	bool "Calxeda Highbank"
>  	select HAS_DEBUG_LL
> +	select HAS_POWEROFF
>  	select ARCH_HAS_L2X0
>  	select CPU_V7
>  	select ARM_AMBA
> diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
> index 31ac954..b034ed1 100644
> --- a/arch/arm/configs/highbank_defconfig
> +++ b/arch/arm/configs/highbank_defconfig
> @@ -35,6 +35,7 @@ CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
>  CONFIG_CMD_UIMAGE=y
>  # CONFIG_CMD_BOOTU is not set
>  CONFIG_CMD_RESET=y
> +CONFIG_CMD_POWEROFF=y
>  CONFIG_CMD_GO=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_OFTREE_PROBE=y
> diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> index 41418b2..630672a 100644
> --- a/arch/arm/mach-highbank/reset.c
> +++ b/arch/arm/mach-highbank/reset.c
> @@ -17,3 +17,11 @@ void __noreturn reset_cpu(ulong addr)
>  
>  	while(1);
>  }
> +
> +void __noreturn poweroff()
> +{
> +	shutdown_barebox();
> +
> +	hingbank_set_pwr_shutdown();
> +	while(1);

This needs a wfi to trigger poweroff.

Rob

> +}
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
