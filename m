Delivery-date: Wed, 26 May 2021 09:19:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnpH-0004oc-N6
	for lore@lore.pengutronix.de; Wed, 26 May 2021 09:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnpG-0002rR-OG
	for lore@pengutronix.de; Wed, 26 May 2021 09:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ukisy96/K2eMxW5z8flmWCorNpvwm7A0muzPSLkBk7U=; b=M+u3CsuTOj48Uy
	/AByHeldC2MHFCPMq2Faj8J8Q8Zelw90mkx2bBZPbPDYYDsFxXeEeN9lyB1LEp2wRC4Sm203uJltE
	LEvPaCMGYv6nrmTdtYnzCwHFaUrREYS3tkoap7XGyIh+N8xH9zEdziRtRi5M0gSxyCfLc/kHJdGS0
	+XknikOdEmCJDJq+hFb8wdgoTOktLSvvQCY2pHCcCJ0PndKXlQ26XE9toDQMlMtQfWg609rmHv5TW
	BHxbiIlPxOGof/02zgDley4unWOT3dcNpuZc5+ternkZ6AhLxj+IIbvseuK0+CmtuuWVaMzezRQFS
	sMWG6P+zTsWBLOr0yPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llnnv-00ByoZ-8a; Wed, 26 May 2021 07:18:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llnnp-00BymB-Up
 for barebox@lists.infradead.org; Wed, 26 May 2021 07:18:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llnnn-0002kf-Rk; Wed, 26 May 2021 09:18:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llnnk-0006ky-Sp; Wed, 26 May 2021 09:18:00 +0200
Date: Wed, 26 May 2021 09:18:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210526071800.GP31738@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
 <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
 <20210415151231.GI19819@pengutronix.de>
 <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e17f965a5a60aaba5b092785eb815dd7c4d83a0.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:51 up 97 days, 10:41, 111 users,  load average: 0.15, 0.34,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_001806_019561_CF57A97A 
X-CRM114-Status: GOOD (  35.25  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 15, 2021 at 05:31:08PM +0200, Lucas Stach wrote:
> Am Donnerstag, dem 15.04.2021 um 17:12 +0200 schrieb Sascha Hauer:
> > On Thu, Apr 15, 2021 at 04:59:30PM +0200, Lucas Stach wrote:
> > > Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
> > > > The SabreSD comes with different SoC variants. This patch adds support
> > > > for the i.MX6QP based board. the DCD data has been taken from U-Boot
> > > > 2021.04
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > > 
> > > [...]
> > > > new file mode 100644
> > > > index 0000000000..52cc8aa73b
> > > > --- /dev/null
> > > > +++ b/arch/arm/dts/imx6qp-sabresd.dts
> > > > @@ -0,0 +1,42 @@
> > > > +/*
> > > > + * Copyright 2012 Freescale Semiconductor, Inc.
> > > > + * Copyright 2011 Linaro Ltd.
> > > > + *
> > > > + * The code contained herein is licensed under the GNU General Public
> > > > + * License. You may obtain a copy of the GNU General Public License
> > > > + * Version 2 or later at the following locations:
> > > > + *
> > > > + * http://www.opensource.org/licenses/gpl-license.html
> > > > + * http://www.gnu.org/copyleft/gpl.html
> > > > + */
> > > > +
> > > > +#include <arm/imx6qp-sabresd.dts>
> > > > +
> > > > +/ {
> > > > +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
> > > > +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
> > > 
> > > I'm not sure I like this overwriting of the compatible string. AFAICS
> > > we don't have any instances for "fsl,imx6qp" compatible checks in
> > > either Barebox or Linux kernel, so it shouldn't cause any immediate
> > > damage, but this still feels wrong.
> > 
> > It's overwritten with the same strings as the included upstream dts has.
> > Anyway, as you say overwriting them here seems wrong. I removed it.
> 
> You had me confused for bit here, so I just checked and the compatible
> in the included upstream dts is different, as expected:
> 
> compatible = "fsl,imx6qp-sabresd", "fsl,imx6qp";
> 
> So now that you removed those lines, does you board file need fixing
> for the different compatibles?

Yes, indeed.

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

