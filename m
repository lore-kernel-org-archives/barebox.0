Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDJHh-0004m5-OC
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 18:09:34 +0000
Date: Sun, 16 Sep 2012 20:07:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916180759.GJ6180@pengutronix.de>
References: <20120916124223.GK25990@game.jcrosoft.org>
 <1347803108-336-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347803108-336-1-git-send-email-plagnioj@jcrosoft.com>
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

On Sun, Sep 16, 2012 at 03:45:08PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Adapt phylib from linux
> 
> switch all the driver to it
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready or not up fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

 config:     ppc              pcm030_defconfig
drivers/net/fec_mpc5200.c: In function 'mpc5xxx_fec_open':
drivers/net/fec_mpc5200.c:415:15: error: 'mpc5xxx_fec_priv' has no member named 'phy_flags'
drivers/net/fec_mpc5200.c:415:31: error: 'mpc5xxx_fec_priv' has no member named 'interface'
drivers/net/fec_mpc5200.c: In function 'mpc5xxx_fec_probe':
drivers/net/fec_mpc5200.c:687:8: error: 'RMII' undeclared (first use in this function)
drivers/net/fec_mpc5200.c:687:8: note: each undeclared identifier is reported only once for each function it appears in
drivers/net/fec_mpc5200.c:688:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
drivers/net/fec_mpc5200.c:690:8: error: 'RGMII' undeclared (first use in this function)
drivers/net/fec_mpc5200.c:691:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
drivers/net/fec_mpc5200.c:694:7: error: 'mpc5xxx_fec_priv' has no member named 'phy_flags'
drivers/net/fec_mpc5200.c:696:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
drivers/net/fec_mpc5200.c:699:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
make[2]: *** [drivers/net/fec_mpc5200.o] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [drivers/net] Error 2
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
