Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eM8AI-0002p1-By
 for barebox@lists.infradead.ORG; Tue, 05 Dec 2017 08:01:25 +0000
Date: Tue, 5 Dec 2017 09:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171205080053.huki75jfaghn2gc3@pengutronix.de>
References: <20171201125251.23520-1-linux@rempel-privat.de>
 <20171201125251.23520-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171201125251.23520-2-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 2/4] MIPS: add generic QCA AR9331 board
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 01, 2017 at 01:52:49PM +0100, Oleksij Rempel wrote:
> this board may cover most of existing ar9331 boards
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/Makefile                                 |  1 +
>  arch/mips/boards/qca-ar9331-generic/Makefile       |  1 +
>  arch/mips/boards/qca-ar9331-generic/board.c        |  8 ++++
>  .../include/board/board_pbl_start.h                | 46 ++++++++++++++++++++++
>  arch/mips/mach-ath79/Kconfig                       |  7 ++++
>  5 files changed, 63 insertions(+)
>  create mode 100644 arch/mips/boards/qca-ar9331-generic/Makefile
>  create mode 100644 arch/mips/boards/qca-ar9331-generic/board.c
>  create mode 100644 arch/mips/boards/qca-ar9331-generic/include/board/board_pbl_start.h
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index dd5ceea20..c40ae6604 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
>  
>  machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
> +board-$(CONFIG_BOARC_QCA_AR9331_GENERIC)	:= qca-ar9331-generic
>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
> diff --git a/arch/mips/boards/qca-ar9331-generic/Makefile b/arch/mips/boards/qca-ar9331-generic/Makefile
> new file mode 100644
> index 000000000..dcfc2937d
> --- /dev/null
> +++ b/arch/mips/boards/qca-ar9331-generic/Makefile
> @@ -0,0 +1 @@
> +obj-y += board.o
> diff --git a/arch/mips/boards/qca-ar9331-generic/board.c b/arch/mips/boards/qca-ar9331-generic/board.c
> new file mode 100644
> index 000000000..7ec7ef8a5
> --- /dev/null
> +++ b/arch/mips/boards/qca-ar9331-generic/board.c
> @@ -0,0 +1,8 @@
> +#include <common.h>
> +#include <init.h>
> +
> +static int dummy_init(void)
> +{
> +	return 0;
> +}
> +postcore_initcall(dummy_init);

Why this?

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
