Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS46l-0001qO-OQ
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:12:52 +0000
Date: Wed, 19 Aug 2015 16:12:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819141229.GD18700@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
 <1439369205-26787-3-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439369205-26787-3-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 3/4] video: simple-panel: mode support depends on I2C and
 EDID
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 12, 2015 at 10:46:44AM +0200, Lucas Stach wrote:
> Reading modes from EDID EEPROMs requires both I2C and EDID support to
> be available. As the simple panel driver is also useful without mode
> reading support, only built it in if the requirements are met.
> 
> Fixes:
> In function `simple_panel_get_modes':
> simple-panel.c:88: undefined reference to `of_find_i2c_adapter_by_node'
> simple-panel.c:91: undefined reference to `edid_read_i2c'
> simple-panel.c:95: undefined reference to `edid_to_display_timings'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

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
