Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFmR-00041K-AD
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 07:14:50 +0000
Date: Tue, 14 Apr 2020 09:14:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414071445.GW27288@pengutronix.de>
References: <20200413071111.20443-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413071111.20443-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! regmap-mmio: Add big endian support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 13, 2020 at 09:11:11AM +0200, Ahmad Fatoum wrote:
> ("regmap-mmio: Add big endian support") required syscons to have a device_d
> instantiated for them. This doesn't work for clock drivers though,
> like the sama5d2's, because of_clk_init is called before
> of_platform_populate allocates the devices.
> 
> Restore the old behavior by passing NULL to regmap_init_mmio_clk again.
> Because we want syscons to be endianness aware, do as Linux does and
> duplicate the device tree endianness retrieval in the syscon driver.
> 
> [Note: Clock drivers wishing to make use of this should take care to not
> call syscon_node_to_regmap on a node with a clocks property as this
> will probably fail. This is the Linux behavior. A safer
> device_node_to_regmap will be introduced in a separate series that
> ignores clocks. ]
> ---
> Hopefully my last fixup for this, I think I got it right now.

I hope that as well ;)

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
