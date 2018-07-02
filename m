Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZsIP-0003GN-Qs
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 06:26:47 +0000
Date: Mon, 2 Jul 2018 08:26:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180702062633.ipmyiq2jtlpcbjyj@pengutronix.de>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180630034900.3324-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/11] ARM: Add code to support SMCCC on AArch64
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 08:48:51PM -0700, Andrey Smirnov wrote:
> Port SMCCC code from Linux kernel. To accomodate that:
> 
>   - Introduce CONFIG_ARM_SMCCC, to allow enabling the code
>     independent of CONFIG_ARM_SECURE_MONITOR
> 
>   - Bring <linux/arm-smccc.h> in
> 
>   - Add necessary constants to arch/arm/asm-offsets.c
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/Kconfig                   |   4 +
>  arch/arm/cpu/Makefile              |   4 +-
>  arch/arm/cpu/smccc-call_64.S       |  52 +++++++++++
>  arch/arm/include/asm/asm-offsets.h |   1 +
>  arch/arm/lib/asm-offsets.c         |   7 +-
>  include/linux/arm-smccc.h          | 135 +++++++++++++++++++++++++++++
>  6 files changed, 200 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/cpu/smccc-call_64.S
>  create mode 100644 arch/arm/include/asm/asm-offsets.h
>  create mode 100644 include/linux/arm-smccc.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 3555b4ee5..6f8eec708 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -388,7 +388,11 @@ config ARM_SEMIHOSTING
>  	  the data on the host computer connected to the target via
>  	  debugging channel (JTAG, SWD). If unsure say N
>  
> +config ARM_SMCCC
> +	bool
> +
>  config ARM_SECURE_MONITOR
> +        select ARM_SMCCC

Whitespaces instead of tab here.

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
