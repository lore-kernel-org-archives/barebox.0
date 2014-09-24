Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWeUF-0008Cs-H7
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 04:47:32 +0000
Date: Wed, 24 Sep 2014 06:47:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140924044707.GZ4992@pengutronix.de>
References: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH v2 0/4] ARM: at91: add sama5d4ek board support
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 23, 2014 at 04:29:14PM +0800, Bo Shen wrote:
> This patch series add Atmel new SoC SAMA5D4 support, which embedded
> the Cortex-A5 core.
> This patch series also add the EK board base on SAMA5D4 SoC support.
> 
> Changes in v2:
>   - Using clkdev_add_physbase for GPIO clock.
>   - Using multi line for #define which make it readable.
>   - Correct the configuration for GEM with only FE feature enable.
> 
> Bo Shen (4):
>   net: macb: enable GEM with only FE feature
>   ARM: at91: add sama5d4 soc support #1
>   ARM: at91: add sama5d4 soc support #2
>   ARM: at91: add sama5d4ek board support

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile                     |   1 +
>  arch/arm/boards/sama5d4ek/Makefile           |   1 +
>  arch/arm/boards/sama5d4ek/env/bin/init_board |  15 +
>  arch/arm/boards/sama5d4ek/env/config         |  42 +++
>  arch/arm/boards/sama5d4ek/sama5d4ek.c        | 317 +++++++++++++++++
>  arch/arm/configs/sama5d4ek_defconfig         |  85 +++++
>  arch/arm/mach-at91/Kconfig                   |  26 ++
>  arch/arm/mach-at91/Makefile                  |   2 +
>  arch/arm/mach-at91/clock.c                   |  58 +++-
>  arch/arm/mach-at91/clock.h                   |   2 +-
>  arch/arm/mach-at91/include/mach/at91_pmc.h   |   1 +
>  arch/arm/mach-at91/include/mach/cpu.h        |  28 ++
>  arch/arm/mach-at91/include/mach/hardware.h   |   4 +
>  arch/arm/mach-at91/include/mach/sama5d4.h    | 134 ++++++++
>  arch/arm/mach-at91/sam9_smc.c                |  24 +-
>  arch/arm/mach-at91/sama5d4.c                 | 304 ++++++++++++++++
>  arch/arm/mach-at91/sama5d4_devices.c         | 495 +++++++++++++++++++++++++++
>  arch/arm/mach-at91/setup.c                   |  41 ++-
>  arch/arm/mach-at91/soc.h                     |   5 +
>  drivers/net/macb.c                           |   6 +-
>  20 files changed, 1568 insertions(+), 23 deletions(-)
>  create mode 100644 arch/arm/boards/sama5d4ek/Makefile
>  create mode 100644 arch/arm/boards/sama5d4ek/env/bin/init_board
>  create mode 100644 arch/arm/boards/sama5d4ek/env/config
>  create mode 100644 arch/arm/boards/sama5d4ek/sama5d4ek.c
>  create mode 100644 arch/arm/configs/sama5d4ek_defconfig
>  create mode 100644 arch/arm/mach-at91/include/mach/sama5d4.h
>  create mode 100644 arch/arm/mach-at91/sama5d4.c
>  create mode 100644 arch/arm/mach-at91/sama5d4_devices.c
> 
> -- 
> 2.1.0.24.g4109c28
> 
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
