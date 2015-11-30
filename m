Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3Iou-0001TM-HR
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 07:24:21 +0000
Date: Mon, 30 Nov 2015 08:23:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151130072358.GS11966@pengutronix.de>
References: <1448629352-10702-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448629352-10702-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] wdog: imx-wd: Fix imx soc reset
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 27, 2015 at 02:02:32PM +0100, Stefan Christ wrote:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> On i.MX6 boards the reset command doesn't work, after the commit "wdog:
> imx-wd: watchdog cannot be disabled again". This commit doesn't allow
> negative values, but the imx reset handler passes -1 to the
> imx21_watchdog_set_timeout function for a reset in 0.5 seconds.
> This patch allows -1 as timeout to set the watchdog to 0.5 seconds.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Stefan Christ <s.christ@phytec.de>

Squashed into the commit breaking it.

Thanks,
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
