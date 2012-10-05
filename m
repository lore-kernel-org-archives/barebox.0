Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK54l-0003XK-8Q
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:24:12 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 853C31050540
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 12:30:24 +0200 (CEST)
Date: Fri, 5 Oct 2012 12:21:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121005102142.GP26553@game.jcrosoft.org>
References: <CAOQ7t2a6pJZSJH-ViPcYR7comODueUmyf0VNsSFT74dwZeRqiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ7t2a6pJZSJH-ViPcYR7comODueUmyf0VNsSFT74dwZeRqiA@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] Raspberry-Pi: add defconfig
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

HI,

	put this with the board patch

	btw where can we find the datasheet of the SoC

Best Regards,
J.
On 10:47 Fri 05 Oct     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  arch/arm/configs/rpi_defconfig | 41 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 arch/arm/configs/rpi_defconfig
> 
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> new file mode 100644
> index 0000000..de3e186
> --- /dev/null
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -0,0 +1,41 @@
> +CONFIG_ARCH_BCM2835=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PROMPT="R-Pi> "
> +CONFIG_LONGHELP=y
> +CONFIG_GLOB=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_PARTITION=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_LOADENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_PASSWD=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_MTEST=y
> +CONFIG_CMD_MTEST_ALTERNATIVE=y
> +CONFIG_CMD_BOOTM_ZLIB=y
> +CONFIG_CMD_BOOTM_BZLIB=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_SERIAL_AMBA_PL011=y
> +CONFIG_DRIVER_NET_SMC91111=y
> +CONFIG_FS_CRAMFS=y
> +CONFIG_SHA1=y
> +CONFIG_SHA256=y
> \ No newline at end of file
> -- 
> 1.7.12.2
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
