Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YC122-0007id-U5
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 07:09:23 +0000
Date: Fri, 16 Jan 2015 08:09:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150116070900.GB18220@pengutronix.de>
References: <1421320118-31779-1-git-send-email-gregory.hermant@calao-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421320118-31779-1-git-send-email-gregory.hermant@calao-systems.com>
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
Subject: Re: [PATCH] add support for the haba-knx-lite controller
To: Gregory Hermant <gregory.hermant@calao-systems.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 15, 2015 at 12:08:38PM +0100, Gregory Hermant wrote:
> 
> Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
> ---
>  arch/arm/boards/Makefile                    |    1 +
>  arch/arm/boards/haba-knx/Makefile           |    1 +
>  arch/arm/boards/haba-knx/env/bin/init_board |   49 ++++
>  arch/arm/boards/haba-knx/env/config         |   40 +++
>  arch/arm/boards/haba-knx/init.c             |  348 +++++++++++++++++++++++++++
>  arch/arm/configs/haba_knx_lite_defconfig    |   89 +++++++
>  arch/arm/mach-at91/Kconfig                  |    5 +
>  7 files changed, 533 insertions(+)
>  create mode 100644 arch/arm/boards/haba-knx/Makefile
>  create mode 100644 arch/arm/boards/haba-knx/env/bin/init_board
>  create mode 100644 arch/arm/boards/haba-knx/env/config
>  create mode 100644 arch/arm/boards/haba-knx/init.c
>  create mode 100644 arch/arm/configs/haba_knx_lite_defconfig

Nice product. I could use one of these for my yet-to-be-build knx
installation. Let's see if my budget still allows this.

Applied, thanks

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
