Delivery-date: Wed, 03 Apr 2024 13:29:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryoK-005zmR-0c
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryoJ-0003vQ-Jj
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ooL26oW2lWp9GvLM5irG8F92Io2uJnr7gaU2eDn9uEw=; b=g24x97hgogN+ZNPDjnlpWZym9r
	5SHJV6pPyNn/sKX1b1Eid4USYsDPYvMYTIUlJnxxNdS4LGOftV+NXMDLQbxKkvDeP2htpo0Ps5qlX
	iIYWs6gHCPcjv2fZjIf7HHS8YjEDSxB38j8LjxGla05wrLFo2HjdYyOVeNIvp8fldOyhLBV5pj0OI
	q7b+g8OWBmx4V5TIyuz01onl/raVycBb4oJpY+GgAkC+L0tO5Jy+NMAOSu5kghOKWIRX9FdfBqjSD
	pZbHirXvjs/vnVj5kBCaFttSP8SO+jeavPiQ6ISWeEvdkAB4vWn8Mynty+1B0BhOFQrGW/J9Ybb8Y
	0y2pfu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrynv-0000000FmHY-0Gnj;
	Wed, 03 Apr 2024 11:29:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryns-0000000FmGc-0s5S
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:29:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rrynp-0003Vm-C8; Wed, 03 Apr 2024 13:29:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rryno-00AALP-KA; Wed, 03 Apr 2024 13:29:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rryno-00CQWT-1l;
	Wed, 03 Apr 2024 13:29:12 +0200
Date: Wed, 3 Apr 2024 13:29:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Thorsten Scherer <T.Scherer@eckelmann.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <Zg09iJ-ueiPaP5Xn@pengutronix.de>
References: <20240402092654.94523-1-o.rempel@pengutronix.de>
 <raghvrf6akiqagwlod3s65ilcfawb43slshzljngl77rnaf27l@cvxmvo7iqokx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <raghvrf6akiqagwlod3s65ilcfawb43slshzljngl77rnaf27l@cvxmvo7iqokx>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_042916_274991_86E1A4EE 
X-CRM114-Status: GOOD (  23.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: i.MX8MP: skov: add fallback for unsupported
 HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 03, 2024 at 06:00:56AM +0200, Thorsten Scherer wrote:
> Hi Oleksij,
> 
> I spotted some typos.
> 
> On Tue, Apr 02, 2024 at 11:26:53AM +0200, Oleksij Rempel wrote:
> > Add fallback support for currently not supported HW. Instead of
> > completely fail, it is better to use some kind of basic devicetree with
> > reduced functionality.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/boards/skov-imx8mp/board.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
> > index 3b6eb7b080..41122ea1e4 100644
> > --- a/arch/arm/boards/skov-imx8mp/board.c
> > +++ b/arch/arm/boards/skov-imx8mp/board.c
> > @@ -85,6 +85,10 @@ static const struct board_description imx8mp_variants[] = {
> >  	},
> >  };
> >  
> > +static const struct board_description imx8mp_basic_viariant = {
> 
> s/imx8mp_basic_viariant/imx8mp_basic_variant/
> 
> > +	.dts_compatible = "skov,imx8mp-skov-basic",
> > +};
> > +
> >  static int skov_imx8mp_fixup(struct device_node *root, void *data)
> >  {
> >  	struct device_node *chosen = of_create_node(root, "/chosen");
> > @@ -171,12 +175,12 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
> >  	priv->variant_id = v;
> >  
> >  	if (v >= ARRAY_SIZE(imx8mp_variants)) {
> > -		dev_err(dev, "Invalid variant %u\n", v);
> > -		return -EINVAL;
> > +		dev_warn(dev, "Unsuported variant %u. Fall back to basic variant\n", v);
> 
> s/Unsuported/Unsupported/
> 
> > +		variant = &imx8mp_basic_viariant;
> 
> s/imx8mp_basic_viariant/imx8mp_basic_variant/

Fixed while applying.

Thanks
 Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


