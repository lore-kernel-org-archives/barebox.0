Delivery-date: Thu, 15 Apr 2021 17:32:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3yX-0007aP-2z
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 17:32:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3yW-0001ps-72
	for lore@pengutronix.de; Thu, 15 Apr 2021 17:32:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1khDy7a4BXb7iMXMLb6xaog9oCgI6DHEEXQSqO+yeow=; b=I8VJIHNDnmnRStrBSnNbD2J81
	vPXnXbgeaLzKfdDSFJsL5hVNyo6NcP8+od7rg466ZiMrh0fO1ALlAKqXf3+Gzrjnmiidudei4iDTb
	UhttbfuwV8rfufAy7gOfAF0FAD87ibV0qiRuDUFQsguTu+iG4S8ib8F1oMaIboSvMYV3oU66TfqtV
	q/M6N0OedNete8n5atrL5ep5gES5g+Asr4cTkfPvLyme+G7te1drDJl2e3Mo2Sq8hKDYRdsC896ge
	uSwP/8sc0YwmZHpThAgK4ShA/n6QMxmlc1v7mKdFDZlbWTLkiVlOumI1402Ht7KuhZ82RS4sRSe9E
	9Mb3/KRfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3xc-00Gd4r-LH; Thu, 15 Apr 2021 15:31:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3xZ-00Gd4f-8q
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 15:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=UbRftheLfHdlzYffjBRwcd3EiVFKFy4U2ml1SoBgbgE=; b=q6PsJOGFODssJhbZg9RU3W0K9+
 CVjLWxvW4YgRD9CHRxdpAdF8ryh6s9y3++qDVMkFXD5jesZBSGs7Naq2/qfYCJjM6gPllK0qCjE4e
 FKcrDem3GO4eWZLiRcFo5AOdvnl2EBNBcEbzwsmTfJaScSjEyqWjwnVYIAYai+82ozbl1iiObfsk7
 JcICGtyJ0V7XxZqECeM7DX2Pr/JpZ7PXsFoC6OU9vIOpzIo4UnQP/kCmcu9+EdeNHVjmUlDPQGYkM
 J4J1/aOSa1135DGdcSve7njpH1RQ/cb8xEehM627+3AtePELmdcJJmObosf7+cFo6yHuWMql7qgII
 yeKj6m3Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3xW-008i7u-Fb
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 15:31:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lX3xU-0001fh-Pt; Thu, 15 Apr 2021 17:31:08 +0200
Message-ID: <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Apr 2021 17:31:08 +0200
In-Reply-To: <20210415151231.GI19819@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
 <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
 <20210415151231.GI19819@pengutronix.de>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_083110_549312_299FF194 
X-CRM114-Status: GOOD (  23.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Donnerstag, dem 15.04.2021 um 17:12 +0200 schrieb Sascha Hauer:
> On Thu, Apr 15, 2021 at 04:59:30PM +0200, Lucas Stach wrote:
> > Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
> > > The SabreSD comes with different SoC variants. This patch adds support
> > > for the i.MX6QP based board. the DCD data has been taken from U-Boot
> > > 2021.04
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > > 
> > [...]
> > > new file mode 100644
> > > index 0000000000..52cc8aa73b
> > > --- /dev/null
> > > +++ b/arch/arm/dts/imx6qp-sabresd.dts
> > > @@ -0,0 +1,42 @@
> > > +/*
> > > + * Copyright 2012 Freescale Semiconductor, Inc.
> > > + * Copyright 2011 Linaro Ltd.
> > > + *
> > > + * The code contained herein is licensed under the GNU General Public
> > > + * License. You may obtain a copy of the GNU General Public License
> > > + * Version 2 or later at the following locations:
> > > + *
> > > + * http://www.opensource.org/licenses/gpl-license.html
> > > + * http://www.gnu.org/copyleft/gpl.html
> > > + */
> > > +
> > > +#include <arm/imx6qp-sabresd.dts>
> > > +
> > > +/ {
> > > +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
> > > +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
> > 
> > I'm not sure I like this overwriting of the compatible string. AFAICS
> > we don't have any instances for "fsl,imx6qp" compatible checks in
> > either Barebox or Linux kernel, so it shouldn't cause any immediate
> > damage, but this still feels wrong.
> 
> It's overwritten with the same strings as the included upstream dts has.
> Anyway, as you say overwriting them here seems wrong. I removed it.

You had me confused for bit here, so I just checked and the compatible
in the included upstream dts is different, as expected:

compatible = "fsl,imx6qp-sabresd", "fsl,imx6qp";

So now that you removed those lines, does you board file need fixing
for the different compatibles?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

