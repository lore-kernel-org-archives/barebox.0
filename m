Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Bqw-0003bc-4N
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:48:07 +0000
Date: Mon, 11 Apr 2011 09:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110411074750.GF7285@pengutronix.de>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
	<BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
	<20110410105159.GA18343@game.jcrosoft.org>
	<BANLkTi=D=yLy3iZ2ZQuVAwb3Q=UPnk0ZaA@mail.gmail.com>
	<20110411023702.GA18925@game.jcrosoft.org>
	<BANLkTikCKnn4uQfq6yqW1OdDEXt5b5BFCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTikCKnn4uQfq6yqW1OdDEXt5b5BFCw@mail.gmail.com>
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
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Apr 11, 2011 at 09:23:56AM +0200, Franck JULLIEN wrote:
> 2011/4/11 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> > On 20:21 Sun 10 Apr     , Franck JULLIEN wrote:
> > >    2011/4/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > >
> > >      >      > index 0000000..2687377
> > >      >      > --- /dev/null
> > >      >      > +
> > >      >      > +static int tse_get_ethaddr(struct eth_device *edev,
> > unsigned
> > >      char *m)
> > >      >      > +{
> > >      >      > +     /* There is no eeprom */
> > >      >      so return the content of the register no?
> > >      >
> > >      >    Well, the register is reseted to 0 when the MAC starts so there
> > is
> > >      no
> > >      >    Ethernet address
> > >      >    to get.
> > >      >
> > >      except this function is supposed to return the mac address of the
> > device
> > >      at
> > >      any time so after a set of it it will not be true any more
> > >
> > >    If I implement the function I get a "eth@eth0: got MAC address from
> > >    EEPROM: 00:00:00:00:00:00" at startup.
> > >    That why I returned -1 as what I could find int at91_ether.c......
> > >    Or, I could find something to return -1 as long as the MAC address
> > hasn't
> > >    been set.
> > >
> > I known this issue I re-write recently the at91_ether and the same on macb
> > will post the patch soon
> >
> > It's fine the uperlayer will see that it's not a valid mac so this will
> > generate a random one
> > cf net/net.c IIRC
> >
> >
> For me, it's a bit annoying  to get this message at startup.
> 
> Don't you really think I could have a flag in the private structure to check
> if an address has been set and then return -1 or the address in the
> tse_get_ethaddr function ?

How about the following:


diff --git a/net/eth.c b/net/eth.c
index 0251e59..c5b346c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -167,8 +167,10 @@ int eth_register(struct eth_device *edev)
 
 	if (edev->get_ethaddr(edev, ethaddr) == 0) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
-		dev_set_param(dev, "ethaddr", ethaddr_str);
+		if (is_valid_ether_addr(ethaddr)) {
+			dev_info(dev, "got MAC address from EEPROM: %s\n", ethaddr_str);
+			dev_set_param(dev, "ethaddr", ethaddr_str);
+		}
 	}
 
 	if (!eth_current) {

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
