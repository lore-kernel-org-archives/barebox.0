Delivery-date: Thu, 15 Apr 2021 17:13:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3ge-0007Yw-8K
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 17:13:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3gd-0006yZ-GD
	for lore@pengutronix.de; Thu, 15 Apr 2021 17:13:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cczXW/sAoUHw3Q3H9YQCBiHuAs39AHQTMHxAemIBPUQ=; b=Y8jXK/W0AfFQGHC1M2SoYGMIM
	CJ5NB3etHjdLV/GBFOhkxQ0ImBSqqHeamc6ZhOKIumHeUC3e2AhGE4eqUoIHY8YRR2tWUTviWaKaa
	/2d9Y/0tIh/xzhmx88+W97crtim3VMXVJwes+1zUALCUIZHZGNnc0eTs1FbSkQ37GDyOCn4Tv7C6l
	w7UZ52WXSl33Mg7fdMw1DsT/x9lAaf7E89cSkruiKz5S/hvN9fZI/NjTneX1rd4SG+W92aeoJIUP+
	+wIuzV7tAeErwauQjIc//sFolH7PaL/b4daacqS99EPhGTCpl90ksr6krSiUrVw155aWO2v0yC3/O
	mv6QLTSOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3fc-00GYUN-3c; Thu, 15 Apr 2021 15:12:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3fX-00GYTu-TJ
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 15:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MErvsZ38Ib4y6m2I6ROB8EWMBZnpPSwErb9Uy1qY5iE=; b=p04IEhy83l19sxDtA/Mu1BC0IE
 2jxSj5Ra0ISnfchd0VzohDbUlzpc8gJUjW2Mfl+o8nz91EFt0Jw4uXzIrQuRtxcmDNWOf2O5XFvjz
 e32ncBIfHvKg6e4TJlTxtXwp3Sr9ipcO1Zz5Gj/QU1sb4XA0tc2HuSOxtanVhv7cxssOh65I/1xTq
 x1TQGDZV3JBnqiz+EQnpNWlXYi040ObdNoLhHsAbwu8cMwp9EQQzwHNTrQrHsT7mWSIENxobgfW3I
 VyaH3LflZaG+IEhMh2zvIilKv/doO8uy4FzJnQJ6usVE9npEky86mz1DnwY/j1ghlaDTDm2ej04jv
 F9jGLDtw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3fV-008gtw-1j
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 15:12:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX3fT-0006gI-Fr; Thu, 15 Apr 2021 17:12:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX3fT-0006QR-6i; Thu, 15 Apr 2021 17:12:31 +0200
Date: Thu, 15 Apr 2021 17:12:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210415151231.GI19819@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
 <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:07:05 up 56 days, 18:30, 107 users,  load average: 0.09, 0.22,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_081233_109899_73DB6D6F 
X-CRM114-Status: GOOD (  28.29  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 15, 2021 at 04:59:30PM +0200, Lucas Stach wrote:
> Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
> > The SabreSD comes with different SoC variants. This patch adds support
> > for the i.MX6QP based board. the DCD data has been taken from U-Boot
> > 2021.04
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > 
> [...]
> > new file mode 100644
> > index 0000000000..52cc8aa73b
> > --- /dev/null
> > +++ b/arch/arm/dts/imx6qp-sabresd.dts
> > @@ -0,0 +1,42 @@
> > +/*
> > + * Copyright 2012 Freescale Semiconductor, Inc.
> > + * Copyright 2011 Linaro Ltd.
> > + *
> > + * The code contained herein is licensed under the GNU General Public
> > + * License. You may obtain a copy of the GNU General Public License
> > + * Version 2 or later at the following locations:
> > + *
> > + * http://www.opensource.org/licenses/gpl-license.html
> > + * http://www.gnu.org/copyleft/gpl.html
> > + */
> > +
> > +#include <arm/imx6qp-sabresd.dts>
> > +
> > +/ {
> > +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
> > +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
> 
> I'm not sure I like this overwriting of the compatible string. AFAICS
> we don't have any instances for "fsl,imx6qp" compatible checks in
> either Barebox or Linux kernel, so it shouldn't cause any immediate
> damage, but this still feels wrong.

It's overwritten with the same strings as the included upstream dts has.
Anyway, as you say overwriting them here seems wrong. I removed it.

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

