Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QlBeC-0000hN-EQ
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 03:16:01 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 07E181004905
	for <barebox@lists.infradead.org>;
	Mon, 25 Jul 2011 05:16:49 +0200 (CEST)
Date: Mon, 25 Jul 2011 04:58:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110725025843.GD10295@game.jcrosoft.org>
References: <1311535336-4534-1-git-send-email-antonynpavlov@gmail.com>
	<1311535336-4534-8-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311535336-4534-8-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 09/10] MIPS: add draft cpuinfo command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 23:22 Sun 24 Jul     , Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig       |   11 +++++++++++
>  arch/mips/lib/Makefile  |    3 +++
>  arch/mips/lib/cpuinfo.c |   38 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 52 insertions(+), 0 deletions(-)
>  create mode 100644 arch/mips/lib/cpuinfo.c
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 50d734a..8970470 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -208,6 +208,17 @@ config 64BIT
>  
>  endchoice
>  
> +menu "MIPS specific settings        "
> +
> +config CMD_MIPS_CPUINFO
> +	bool "cpuinfo command"
> +	default y
> +	help
> +	  Say yes here to get a cpuinfo command to show some
> +	  information about the cpu model.
> +
> +endmenu
> +
>  source common/Kconfig
>  source commands/Kconfig
>  source net/Kconfig
> diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> index 67e4e8a..44fb360 100644
> --- a/arch/mips/lib/Makefile
> +++ b/arch/mips/lib/Makefile
> @@ -4,3 +4,6 @@ obj-y += lshrdi3.o
>  obj-y += ashldi3.o
>  obj-y += ashrdi3.o
>  obj-y += memory.o
> +
> +#obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
> +obj-y += cpuinfo.o
??

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
