Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1ATk-00085H-Fj
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 07:24:21 +0000
Date: Mon, 22 Jul 2013 09:23:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130722072358.GD9434@pengutronix.de>
References: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
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
Subject: Re: [PATCH] arm: mvebu: add board USI Topkick
To: Jason Cooper <jason@lakedaemon.net>
Cc: barebox@lists.infradead.org

Hi Jason,

On Fri, Jul 19, 2013 at 01:44:17PM +0000, Jason Cooper wrote:
> Successfully boots to console via kwboot.  No other functionality yet.
> 
> Signed-off-by: Jason Cooper <jason@lakedaemon.net>
> ---
>  arch/arm/Makefile                        |  1 +
>  arch/arm/boards/usi-topkick/Makefile     |  1 +
>  arch/arm/boards/usi-topkick/board.c      | 17 ++++++++++++++++
>  arch/arm/boards/usi-topkick/kwbimage.cfg | 35 ++++++++++++++++++++++++++++++++
>  arch/arm/mach-mvebu/Kconfig              |  5 +++++
>  5 files changed, 59 insertions(+)
>  create mode 100644 arch/arm/boards/usi-topkick/Makefile
>  create mode 100644 arch/arm/boards/usi-topkick/board.c
>  create mode 100644 arch/arm/boards/usi-topkick/kwbimage.cfg
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 32bdd65..96c9a67 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -170,6 +170,7 @@ board-$(CONFIG_MACH_TX53)			+= karo-tx53
>  board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
>  board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
>  board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
> +board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick

Please do not add items to this list. Use arch/arm/boards/Makefile
instead. I fixed this while applying.

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
