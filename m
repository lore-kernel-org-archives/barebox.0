Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFnW2-0002Cy-I5
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 14:50:39 +0000
Date: Sun, 23 Sep 2012 16:50:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120923145036.GK1322@pengutronix.de>
References: <20120922100757.GR26553@game.jcrosoft.org>
 <1348308774-32378-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348308774-32378-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 22, 2012 at 12:12:54PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Adapt phylib from linux
> 
> switch all the driver to it
> reimplement mii bus
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready or not up fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 
> + * get_phy_id - reads the specified addr for its ID.
> + * @bus: the target MII bus
> + * @addr: PHY address on the MII bus
> + * @phy_id: where to store the ID retrieved.
> + *
> + * Description: Reads the ID registers of the PHY at @addr on the
> + *   @bus, stores it in @phy_id and returns zero on success.
> + */
> +int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id)
> +{
> +	int phy_reg;
> +
> +	/* Grab the bits from PHYIR1, and put them
> +	 * in the upper half */
> +	phy_reg = mdiobus_read(bus, addr, MII_PHYSID1);
> +
> +	io (phy_reg < 0)
> +		return -EIO;

Which gcc version do you use? Mine doesn't understand 'io'

Please also fix this:

config:     ppc              pcm030_defconfig
drivers/net/fec_mpc5200.c: In function 'mpc5xxx_fec_probe':
drivers/net/fec_mpc5200.c:683:8: error: 'RMII' undeclared (first use in this function)
drivers/net/fec_mpc5200.c:683:8: note: each undeclared identifier is reported only once for each function it appears in
drivers/net/fec_mpc5200.c:686:8: error: 'RGMII' undeclared (first use inthis function)
make[2]: *** [drivers/net/fec_mpc5200.o] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [drivers/net] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [drivers] Error 2
make: *** Waiting for unfinished jobs....



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
