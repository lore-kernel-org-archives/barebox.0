Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TW0dz-0005Ks-FT
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 08:05:52 +0000
Date: Wed, 7 Nov 2012 09:05:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121107080550.GB10369@pengutronix.de>
References: <1352253139-19430-1-git-send-email-apr@cn-eng.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352253139-19430-1-git-send-email-apr@cn-eng.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mdiobus: unbreak phy_device_connect() "scan all PHY
 addresses" feature
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Wed, Nov 07, 2012 at 02:52:19AM +0100, Andreas Pretzsch wrote:
> Calling phy_device_connect() with a PHY address of -1 will scan for a PHY
> in the address range of 0..PHY_MAX_ADDR and registers the first one found.
> This was broken by commit 09254f639c94cc7dc47fff7638dc8c7f88d700b1
> "mdiobus: do not scan the bus at registration time", erroneously scanning
> for -1 as PHY address.
> 

Folded this into the original patch breaking it.

Thanks
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
