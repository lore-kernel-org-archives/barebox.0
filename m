Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zely6-0007og-K7
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 15:28:27 +0000
Date: Wed, 23 Sep 2015 17:28:03 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20150923152803.GC12329@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: boards: phytec-som-am335x: ethernet broken after reset
To: t.remmet@phytec.de
Cc: barebox@lists.infradead.org

Hi Teresa,

With the current code for the phytec-som-am335x, the ethernet works only
after the first powerup. If you soft reset the module the network won't
work anymore.

...
cpsw 4a100000.ethernet: detected phy mask 0x6
mdio_bus: miibus0: probed
cpsw 4a100000.ethernet: Failed to setup slave 0: I/O error
...

That happens in the second boot. The phy is probably in a wrong state and
won't communicate over MDIO.

Do you have any ideas?

Thanks,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
