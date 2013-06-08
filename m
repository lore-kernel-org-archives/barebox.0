Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlJ6Y-0005lj-Kf
 for barebox@lists.infradead.org; Sat, 08 Jun 2013 13:22:51 +0000
Date: Sat, 8 Jun 2013 15:22:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130608132229.GJ32299@pengutronix.de>
References: <1370500369-3657-1-git-send-email-philipp.zabel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370500369-3657-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: Re: [PATCH] ARM i.MX6: Fix bootsource detection
To: Philipp Zabel <philipp.zabel@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 06, 2013 at 08:32:49AM +0200, Philipp Zabel wrote:
> This patch fixes bootsource detection on i.MX6 for serial and i2c boot.
> The bootsource_instance is now determined for spi, i2c, and mmc/sd boot.
> 
> Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>

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
