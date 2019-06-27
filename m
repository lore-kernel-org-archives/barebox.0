Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQN5-0002bw-Ne
 for barebox@lists.infradead.org; Thu, 27 Jun 2019 09:07:13 +0000
Date: Thu, 27 Jun 2019 11:07:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190627090708.yp6f6otwdnzjlrfd@pengutronix.de>
References: <20190626084649.3385-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626084649.3385-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] ARM: rpi: use sdhost for eMMC access on CM3.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Wed, Jun 26, 2019 at 10:46:49AM +0200, Tomaz Solc wrote:
> This commit removes the fix for the upstream devicetree where eMMC was remapped
> to the sdhci interface. This is no longer needed since sdhost driver is now
> functional in barebox. A similar change was done to the R.Pi 3 devicetree in
> 9036d1db.
> 
> In fact, this remap prevented CM3 from booting if barebox was compiled with
> CONFIG_MCI_BCM283X_SDHOST (in rpi_defconfig since b093468c). In that case both
> sdhost and sdhci drivers were active and tried to set their corresponsing alt
> functions for the same set of GPIOs at the same time.
> 
> Signed-off-by: Tomaz Solc <tomaz.solc@tablix.org>
> ---
>  arch/arm/dts/bcm2837-rpi-cm3.dts | 7 -------
>  1 file changed, 7 deletions(-)

Applied to master, thanks

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
