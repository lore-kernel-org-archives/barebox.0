Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCi1Y-00054m-Lk
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 06:40:33 +0000
Date: Tue, 14 Jun 2016 08:40:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160614064010.GQ31666@pengutronix.de>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/6] MIPS: ath79: sync dts stuff with linux v4.7-rc2
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 14, 2016 at 01:15:01AM +0300, Antony Pavlov wrote:
> At the moment linux v4.7-rc2 has AR9331 device tree support.
> This patchseries syncs barebox AR9331 device tree stuff
> with linux v4.7-rc2.
> 
> Antony Pavlov (6):
>   clk: ar933x: fix copyright header
>   MIPS: ath79: dts: sync clk stuff with linux v4.7-rc2
>   MIPS: ath79: dts: sync uart stuff with linux v4.7-rc2
>   MIPS: ath79: dts: sync spi stuff with linux v4.7-rc2
>   MIPS: ath79: dts: tplink-mr3020.dts: sync with linux v4.7-rc2
>   MIPS: ath79: dts: use ar9331.dtsi from linux v4.7-rc2

Applied, thanks

Sascha

> 
>  arch/mips/dts/ar9331.dtsi              | 44 ----------------------------------
>  arch/mips/dts/black-swift.dts          | 22 ++++++++++-------
>  arch/mips/dts/tplink-mr3020.dts        | 26 ++++++++++++--------
>  drivers/clk/clk-ar933x.c               | 37 +++++++---------------------
>  drivers/spi/ath79_spi.c                |  2 +-
>  include/dt-bindings/clock/ar933x-clk.h | 22 -----------------
>  6 files changed, 39 insertions(+), 114 deletions(-)
>  delete mode 100644 arch/mips/dts/ar9331.dtsi
>  delete mode 100644 include/dt-bindings/clock/ar933x-clk.h
> 
> Cc: Yegor Yefremov <yegorslists@googlemail.com>
> 
> -- 
> 2.7.0
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
