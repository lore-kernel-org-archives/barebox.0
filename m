Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UesDZ-0006uA-Oy
 for barebox@lists.infradead.org; Tue, 21 May 2013 19:27:30 +0000
Date: Tue, 21 May 2013 21:27:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130521192708.GV32299@pengutronix.de>
References: <1369132160-7903-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369132160-7903-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] mci i.MX esdhc: Fix clock divider calculation
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 21, 2013 at 12:29:20PM +0200, Steffen Trumtrar wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> This updates the i.MX esdhc divider settings to FSLs U-Boot.
> Current timings work fine for SD cards, but not for eMMC.
> Although the calculation is fine according to the datasheet and reading from
> eMMC works, writing is broken. Atleast on i.MX53/tqma53.
> With this patch the result is the same, but uses different divider values to
> achieve it.
> 
> While at it, replace the udelay with a busy-loop.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc.c | 46 +++++++++++++++++++++++++++-------------------
>  drivers/mci/imx-esdhc.h |  1 +
>  2 files changed, 28 insertions(+), 19 deletions(-)

Could you rebase this one on -next?

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
