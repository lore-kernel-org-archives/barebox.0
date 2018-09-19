Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2XK2-0004wY-L8
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 07:54:56 +0000
Date: Wed, 19 Sep 2018 09:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180919075442.GO4097@pengutronix.de>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/11] Switch ZII boards to use MMC boot partitions
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 18, 2018 at 03:22:54PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patchset contains code to switch all supported ZII platforms to
> use MMC boot partitions for BBU functionality as well as various
> additional fixes that were developed in the process. Hopefully all of
> the patches are self-explanatory.
> 
> Feedback is welcome!
> 

Applied, thanks

Sascha

> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (11):
>   ARM: i.MX: bbu: Add support for v1 header to MMC boot handler
>   ARM: i.MX51: bbu: Add a handler for MMC boot partitions
>   ARM: i.MX: bbu: Check retrun value of getenv()
>   ARM: i.MX: bbu: Convert devicefile to device name
>   ARM: i.MX: bbu: Detect MMC before reading current boot partition
>   ARM: VFxxx: bbu: Add a handler for MMC boot partitions
>   dts: VFxxx: Add aliases for ESDHC controllers
>   ARM: zii-vf610-dev: Switch MMC BBU to use boot partitions
>   ARM: rdu2: Switch MMC BBU to use boot partitions
>   ARM: rdu1: Change BBU names to match RDU2
>   ARM: rdu1: Switch MMC BBU to use boot partitions
> 
>  arch/arm/boards/zii-imx51-rdu1/board.c |  4 +-
>  arch/arm/boards/zii-imx6q-rdu2/board.c |  2 +-
>  arch/arm/boards/zii-vf610-dev/board.c  | 12 +++---
>  arch/arm/dts/vf610-twr.dts             |  1 +
>  arch/arm/dts/vf610-zii-dev.dtsi        |  1 +
>  arch/arm/dts/vf610.dtsi                | 12 ++++++
>  arch/arm/mach-imx/imx-bbu-internal.c   | 58 ++++++++++++++++++--------
>  arch/arm/mach-imx/include/mach/bbu.h   | 21 ++++++++++
>  8 files changed, 86 insertions(+), 25 deletions(-)
>  create mode 100644 arch/arm/dts/vf610.dtsi
> 
> -- 
> 2.17.1
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
