Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSYl-0000Y9-CO
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:44:20 +0000
Date: Sun, 15 Apr 2012 18:44:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415164411.GM3852@pengutronix.de>
References: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
 <1332415393-18394-3-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332415393-18394-3-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH V2 2/2] Add board support for Karo TX51 i.mx51 SODIMM
 module.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

Hi Christian,

On Thu, Mar 22, 2012 at 12:23:13PM +0100, Christian Kapeller wrote:
> Supported devices:
>  - nand
>  - ethernet
>  - mmc0, mmc1 (on stk5v3 development board)
>  - led (on stk5v3 development board)
> ---
>  arch/arm/Makefile                        |    1 +
>  arch/arm/boards/karo-tx51/Makefile       |    2 +
>  arch/arm/boards/karo-tx51/config.h       |   21 +++
>  arch/arm/boards/karo-tx51/env/config     |   43 +++++
>  arch/arm/boards/karo-tx51/flash_header.c |   58 ++++++
>  arch/arm/boards/karo-tx51/tx51.c         |  290 ++++++++++++++++++++++++++++++
>  arch/arm/boards/karo-tx51/tx51.dox       |   50 +++++
>  arch/arm/configs/tx51stk5_defconfig      |  148 +++++++++++++++
>  arch/arm/mach-imx/Kconfig                |    8 +
>  9 files changed, 621 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/karo-tx51/Makefile
>  create mode 100644 arch/arm/boards/karo-tx51/config.h
>  create mode 100644 arch/arm/boards/karo-tx51/env/config
>  create mode 100644 arch/arm/boards/karo-tx51/flash_header.c
>  create mode 100644 arch/arm/boards/karo-tx51/tx51.c
>  create mode 100644 arch/arm/boards/karo-tx51/tx51.dox
>  create mode 100644 arch/arm/configs/tx51stk5_defconfig

Better late than never, I just applied this patch with some slight
adjustments to make it compile on the newer codebase. Unfortunately
I cannot find out tx51 board, so I couldn't test it. I hope it works.
The iomux patch became unnecessary in the mean time, so I skipped that.

Thanks
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
