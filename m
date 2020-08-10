Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5DyG-0006Rg-S9
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 20:00:37 +0000
Date: Mon, 10 Aug 2020 22:00:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810200035.GA9475@pengutronix.de>
References: <1595239998-86809-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595239998-86809-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH] ARM: boards: phytec-som-imx6: Add mmc and emmc-boot bbu
 update handler
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 20, 2020 at 12:13:18PM +0200, Robert Karszniewicz wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
> 
> Add mmc and emmc-boot bbu update handler to update barebox on SD card
> and eMMC boot partitions easily.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  arch/arm/boards/phytec-som-imx6/board.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)

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
