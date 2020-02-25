Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VCT-00059N-Ug
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:04:19 +0000
Date: Tue, 25 Feb 2020 09:04:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225080415.GK3335@pengutronix.de>
References: <20200222075341.13407-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222075341.13407-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: ath79: add support for OpenEmbed SOM9331 board
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Feb 22, 2020 at 08:53:41AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/boards/Makefile                     |   1 +
>  arch/mips/boards/openembed-som9331/Makefile   |   1 +
>  arch/mips/boards/openembed-som9331/lowlevel.S |  23 ++++
>  arch/mips/configs/ath79_defconfig             |   1 +
>  arch/mips/dts/Makefile                        |   1 +
>  .../dts/ar9331-openembed-som9331-board.dts    | 113 ++++++++++++++++++
>  arch/mips/mach-ath79/Kconfig                  |   7 ++
>  images/Makefile.ath79                         |   4 +
>  8 files changed, 151 insertions(+)
>  create mode 100644 arch/mips/boards/openembed-som9331/Makefile
>  create mode 100644 arch/mips/boards/openembed-som9331/lowlevel.S
>  create mode 100644 arch/mips/dts/ar9331-openembed-som9331-board.dts

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
