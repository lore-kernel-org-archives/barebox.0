Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt6Jx-0005Bk-SR
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 07:48:13 +0000
Date: Mon, 11 Feb 2019 08:48:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211074801.uvpjk6d22jwpfijh@pengutronix.de>
References: <20190207012214.5060-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190207012214.5060-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/16] E1000 driver AArch64 related fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 06, 2019 at 05:21:58PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series contains various fixes/changes I made in order to get
> E1000 driver to work on AArch64/i.MX8MQ as well as generic code
> improvement patches. Hopefully each patch is self-explanatory.
> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> Andrey Smirnov (16):
>   ARM: Select HAS_DMA for AArch64
>   include: Import io-64-nonatomic-*.h from Linux
>   net/e1000: Don't use coherent memory for Rx buffer
>   net/e1000: Convert e1000_transmit to use dma_map_single()
>   net/e1000: Fix debug print warning
>   net/e1000: Fix incorrect "Rx ready" check
>   net/e1000: Get rid of pointer arithmetic in e1000_poll
>   net/e1000: Improve Rx descriptor handling in e1000_poll()
>   net/e1000: Remove pointer arithmetic in e1000_transmit()
>   net/e1000: Improve Tx descriptor handling in e1000_transmit
>   net/e1000: Make use of readl_poll_timeout() in e1000_transmit()
>   net/e1000: Rename fill_rx() to e1000_fill_rx()
>   net/e1000: Remove pointer arithmetic from e1000_fill_rx()
>   net/e1000: Consolidate next index calculation code
>   net/e1000: Improve RX buffer handling in e1000_fill_rx()
>   net/e1000: Do not hardcode TDBAH and RDBAH to 0
> 
>  arch/arm/cpu/Kconfig            |   1 +
>  drivers/net/e1000/e1000.h       |   1 +
>  drivers/net/e1000/eeprom.c      |   3 +-
>  drivers/net/e1000/main.c        | 113 ++++++++++++++++++--------------
>  include/io-64-nonatomic-hi-lo.h |  32 +++++++++
>  include/io-64-nonatomic-lo-hi.h |  32 +++++++++
>  6 files changed, 131 insertions(+), 51 deletions(-)
>  create mode 100644 include/io-64-nonatomic-hi-lo.h
>  create mode 100644 include/io-64-nonatomic-lo-hi.h
> 
> -- 
> 2.20.1
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
