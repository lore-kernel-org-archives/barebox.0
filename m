Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oftn8-00039U-69
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 12:06:50 +0000
Date: Mon, 2 Aug 2010 14:02:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100802120213.GC13044@game.jcrosoft.org>
References: <cover.1280749932.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1280749932.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH 0/3] arm/imx: serial number / UID support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi,

	serial number is more for board ref than CPU ref
	as you can easly read it from the register.

	So why pass it via the ATAG?

Best Regards,
J.
On 14:58 Mon 02 Aug     , Baruch Siach wrote:
> This patch series adds support for the serial ATAG, and uses this functionality 
> to pass the i.MX25 chip UID as a serial number to the Linux kernel.
> 
> Baruch Siach (3):
>   arm: add support for the serial ATAG
>   imx25: add support for UID read from eFuse
>   mx25 3ds: set CPU UID
> 
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c |    2 ++
>  arch/arm/include/asm/armlinux.h                 |    4 ++++
>  arch/arm/lib/armlinux.c                         |   19 +++++++++++++++++++
>  arch/arm/mach-imx/imx25.c                       |   12 ++++++++++++
>  arch/arm/mach-imx/include/mach/generic.h        |    1 +
>  arch/arm/mach-imx/include/mach/imx25-regs.h     |    3 +++
>  6 files changed, 41 insertions(+), 0 deletions(-)
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
