Delivery-date: Mon, 23 Feb 2026 12:14:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTta-004oNA-1T
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:14:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTta-00067v-Pp
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:14:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SPZwFSbG61uFatate9x7lVkX4ufAqtL+HQxUO3ZLuq8=; b=TU3FHaC+EQAryzCMn4UnCjhV7q
	3D5KAXRWb4iGSRCAvRUnc46tED4tos89TIQBeZTcowMX0PMVhrU7e5jGfWVzYbVuM7qiPnjyyLokl
	i7J4moYRATo3XZncz4bFW7U+fABVyJNr7hN5oVmr4yqjCvt92z+PKbcUzCppmYzKhg6WYk0913cJR
	F5lINysqZNenkyN0fvRdXcgFWOFN3aadWKq+QP+zfVtHfXkc6e8qYdSQ2EIuHhQVHjLsNmGI29OIh
	eGLGEGnZwGCZFQhuuGJv345o5XVWqd2sZVIV/OpFcGzG7Dp5zAtFR32sd7aU6qy4uZmA+R4eVoe9+
	ULVsDX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTtE-000000008Mq-3Lg2;
	Mon, 23 Feb 2026 11:14:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTtC-000000008MH-1eyP
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:14:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTtA-00061B-Lv; Mon, 23 Feb 2026 12:14:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTt9-002Die-0S;
	Mon, 23 Feb 2026 12:14:08 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTtA-000000017Xn-1dEX;
	Mon, 23 Feb 2026 12:14:08 +0100
Date: Mon, 23 Feb 2026 12:14:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Giandomenico Rossi <rossi@amelchem.com>, barebox@lists.infradead.org
Message-ID: <aZw2gMgYDJRKDx3t@pengutronix.de>
References: <20260213191247.1671231-1-rossi@amelchem.com>
 <20260213191247.1671231-4-rossi@amelchem.com>
 <5b4c8e38-aae3-44c4-a4ef-648d5b6dc5ff@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5b4c8e38-aae3-44c4-a4ef-648d5b6dc5ff@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_031410_431892_6355927A 
X-CRM114-Status: GOOD (  16.82  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 3/4] dt-bindings: display: panel: add Ilitek ILI9488
 panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 23, 2026 at 11:57:56AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/13/26 8:12 PM, Giandomenico Rossi wrote:
> > Add device tree binding documentation for TFT LCD panels based on
> > the Ilitek ILI9488 controller connected via MIPI DBI Type-C Option 1
> > over SPI.
> > 
> > The binding documents panels such as the WF35-320480UD operating in
> > RGB666 (18-bit) pixel format and describes required GPIOs, power
> > supply, optional backlight and panel timing.
> > 
> > A 'rotation' property is provided to configure the display
> > orientation.
> > 
> > Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
> 
> This patch needs to go into Documentation/devicetree/bindings/ as
> dts/Bindings are exclusively the upstream Linux bindings.

Right, fixed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


