Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8sNB-0000I5-RY
	for barebox@lists.infradead.org; Sun, 10 Apr 2011 11:00:06 +0000
Date: Sun, 10 Apr 2011 12:51:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110410105159.GA18343@game.jcrosoft.org>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
	<BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
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

>      > index 0000000..2687377
>      > --- /dev/null
>      > +
>      > +static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
>      > +{
>      > +     /* There is no eeprom */
>      so return the content of the register no?
> 
>    Well, the register is reseted to 0 when the MAC starts so there is no
>    Ethernet address
>    to get.
>     
except this function is supposed to return the mac address of the device at
any time so after a set of it it will not be true any more
> 
>      > +     return -1;
>      > +}
>      > +
>      > +static int tse_eth_send(struct eth_device *edev, void *packet, int
>      length)
>      > +{
>      > +
>      > +     struct altera_tse_priv *priv = edev->priv;
>      > +     struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
>      > +     struct alt_sgdma_descriptor *tx_desc = (struct
>      alt_sgdma_descriptor *)priv->tx_desc;
>      > +
>      > +     struct alt_sgdma_descriptor *tx_desc_cur = (struct
>      alt_sgdma_descriptor *)&tx_desc[0];
>      > +
>      > +     flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
>      > +     alt_sgdma_construct_descriptor_burst(
>      > +             (struct alt_sgdma_descriptor *)&tx_desc[0],
>      > +             (struct alt_sgdma_descriptor *)&tx_desc[1],
>      > +             (uint32_t *)packet,  /* read addr */
>      > +             (uint32_t *)0,       /*           */
>      > +             length,              /* length or EOP ,will change for
>      each tx */
>      > +             0x1,                 /* gen eop */
>      > +             0x0,                 /* read fixed */
>      > +             0x1,                 /* write fixed or sop */
>      > +             0x0,                 /* read burst */
>      > +             0x0,                 /* write burst */
>      > +             0x0                  /* channel */
>      please use tab for indent I see other in the patch please check
> 
>    I use tab for indent, spaces for alignment. I checked the patch with
>    checkpatch and it
>    didn't find errors.....
try to use tab when u can even for alignment please
>     
> 
>      > +
>      why this?
> 
>    Because sometimes (often ?), hardware doesn't run first time. So I like to
>    have some information on MII bus running correctly....One day I had a PHY
>    getting the address 1 and sometimes this f***ing PHY got 31 and this
>    kind of auto scan helped me to immediately find the problem......
>    I could remove those function if it is a problem.... 
so it's no the right place as it's phy specific and not ehtern drivers
specific

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
