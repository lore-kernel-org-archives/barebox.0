Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFpWH-0003bB-0U
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 16:26:46 +0000
Date: Thu, 5 Apr 2012 18:26:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405162640.GJ3852@pengutronix.de>
References: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 0/3] arm: mxs: ocotp read support
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 05, 2012 at 11:05:38AM +0200, Wolfram Sang wrote:
> Add read support for the OCOTP so we can get MAC addresses. Also fix the
> printout once we got it since it doesn't come from an eeprom.
> 
> Wolfram Sang (3):
>   arm: mxs: add ocotp driver
>   arm: mxs: tx28: get MAC from OCOTP
>   net: eth: don't say that MAC comes from EEPROM

Applied, thanks

Sascha

> 
>  arch/arm/boards/karo-tx28/tx28-stk5.c       |   23 +++++
>  arch/arm/mach-mxs/Kconfig                   |   14 +++
>  arch/arm/mach-mxs/Makefile                  |    1 +
>  arch/arm/mach-mxs/include/mach/imx23-regs.h |    1 +
>  arch/arm/mach-mxs/include/mach/imx28-regs.h |    1 +
>  arch/arm/mach-mxs/include/mach/ocotp.h      |   12 +++
>  arch/arm/mach-mxs/ocotp.c                   |  139 +++++++++++++++++++++++++++
>  net/eth.c                                   |    2 +-
>  8 files changed, 192 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-mxs/include/mach/ocotp.h
>  create mode 100644 arch/arm/mach-mxs/ocotp.c
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
