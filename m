Delivery-date: Tue, 13 Jan 2026 12:10:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcIe-000rMw-0L
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:10:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcId-0003we-4y
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:10:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMysyBrFl6d50tvRsKaIhkRTNIghln4V8zPCvcL5zfc=; b=eR2AclsrfidNlu2DCbHFgM8HJi
	CCNi1uaFldfaXRuWHR+R9AwEl+6drw69TmxASUOrIKj/iJx0gFIDLhiptDKRgthSVOhnbqCk6BXU1
	1IS8YO7Y8+K9wZO+K3ozdkLml50vZIfj4bxdlE1Km+bwYDIk47s7V3nJPwDv1lLzrSuvr9meIJVBv
	48oJUuPet86WF+z2fBDampZ2ahIrPjo7oH/NaejzosGva83YcoGmnstooIVG8dv13VMZrqfgdXIVQ
	wy+vGCR63Zs7nPZIudRVWPcZqfOi2eeu9wPNVrHZ2WeQjHsvBh+fpZn/AvlJKTrvOzSvt7JhcRKAw
	Jk5TBUng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcHy-00000006zqx-1jUp;
	Tue, 13 Jan 2026 11:10:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcHu-00000006zqV-0sOE
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:10:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcHs-0003lu-NL; Tue, 13 Jan 2026 12:10:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcHt-000Pex-0f;
	Tue, 13 Jan 2026 12:10:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcHs-00000006VDz-1y8O;
	Tue, 13 Jan 2026 12:10:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260113084256.94750-1-s.hauer@pengutronix.de>
References: <20260113084256.94750-1-s.hauer@pengutronix.de>
Message-Id: <176830261246.1549980.994882856894919466.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:10:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_031014_252668_48FC0494 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: remove barebox,provide-mac-address property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Jan 2026 09:42:56 +0100, Sascha Hauer wrote:
> Remove barebox,provide-mac-address property from board files for which
> the SoC dtsi already provides nvmem cells in the fec node. These are
> all i.MX6qdl, i.MX6UL(L) and i.MX8M[MNPQ] boards.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: remove barebox,provide-mac-address property
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c5e230735d5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



