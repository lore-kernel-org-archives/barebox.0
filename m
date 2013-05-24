Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufo9k-00012k-Ma
 for barebox@lists.infradead.org; Fri, 24 May 2013 09:19:25 +0000
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 247C6FFA1BF
 for <barebox@lists.infradead.org>; Fri, 24 May 2013 11:19:00 +0200 (CEST)
Date: Fri, 24 May 2013 11:14:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130524091448.GD27130@game.jcrosoft.org>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
 <1369208989-14369-3-git-send-email-linux@rempel-privat.de>
 <20130524070916.GX32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130524070916.GX32299@pengutronix.de>
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
Subject: Re: [RFC, PATCH v2 2/3] net: add ar231x-eth support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:09 Fri 24 May     , Sascha Hauer wrote:
> On Wed, May 22, 2013 at 09:49:48AM +0200, Oleksij Rempel wrote:
> > This driver should work with some Atheros WiSoCs:
> > - ar2312, ar2313
> > - ar2315, ar2316 ...
> > 
> > Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> > ---
> >  drivers/net/Kconfig  |   7 +
> >  drivers/net/Makefile |   1 +
> >  drivers/net/ar231x.c | 429 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/net/ar231x.h | 219 ++++++++++++++++++++++++++
> >  4 files changed, 656 insertions(+)
> >  create mode 100644 drivers/net/ar231x.c
> >  create mode 100644 drivers/net/ar231x.h
> > 
> > +
> > +	/* FIXME: priv->{t,r}x_ring are virtual addresses,
> > +	 * use virt-to-phys convertion */
> 
> We use 1:1 mappings, so I think this comment should be removed.
on mips it's not the case
> 
> > +
> > +static void ar231x_allocate_dma_descriptors(struct eth_device *edev)
> > +{
> > +	struct ar231x_eth_priv *priv = edev->priv;
> > +	u16 ar231x_descr_size = sizeof(struct ar231x_descr);
> > +	u16 i;
> > +
> > +	priv->tx_ring = xmalloc(ar231x_descr_size);
> 
> What alignment do you need here? This may or may not be safe.
dma_alloc too

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
