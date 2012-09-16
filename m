Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9x7-0005DF-Bh
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 08:11:42 +0000
Date: Sun, 16 Sep 2012 10:11:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916081139.GZ24458@pengutronix.de>
References: <20120914073755.GD20834@game.jcrosoft.org>
 <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 09:57:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> Adapt phylib from linux
> 
> switch all the driver to it
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

[...]

 +
> +/* Automatically gets and returns the PHY device */
> +int phy_device_connect(struct mii_device *bus, int addr,
> +		void (*adjust_link) (struct mii_device *miidev))

The prototype of adjust_link seems wrong. A mii_device is a mii bus with
potentially multiple phys. adjust_link should work on the phy_device. With
the above, when a mii_device has multiple phys, a network driver has no
way to figure out which phy has an updated link.

This probably bites Renaud who has a single mii bus for multiple network
devices.

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
