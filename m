Delivery-date: Wed, 25 Jun 2025 09:58:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUL17-00ArfF-0Y
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 09:58:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUL16-0003gM-LX
	for lore@pengutronix.de; Wed, 25 Jun 2025 09:58:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/xlM2RUg0oZPamd4B/q4NiOMx07H9ZBXAPO3MiHJ58=; b=XAzARvHkyVnj7FvzdNF1DGo/SC
	khCOSKbmr+wwSVGDxjyTiDE7bZ7DELENG+4aaujI8Nl+aeQo9nTJHL/kQhkyi/9CekbpJt9oGl0u2
	0bVLncveLhzk42Zl3OW3yUeFB46QaCj1lHMc+VJ44/ijddqsQIiy9GoOo0TMrdig6Un8uKOb3Or81
	K0VXVj90MFDdf8WaYMSzMHqeWMzrV5HnIG2vkJqSo0E/0gBPYLvnBswDPhG5Bly0YR2LEESPKprqb
	fY/tthNufNBvrJIwl78zu1W0C1gSr1MVRcUw6yFqfHKu9UqN+RFmScmGiCNb1XrITuL7/H2gHB9ah
	V6Dry/ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUL0i-00000007sx3-0NB8;
	Wed, 25 Jun 2025 07:57:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUKLS-00000007mWW-1lwc
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 07:14:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUKLQ-0001vQ-TD; Wed, 25 Jun 2025 09:14:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUKLQ-005F4t-2I;
	Wed, 25 Jun 2025 09:14:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUKLQ-006C3Z-23;
	Wed, 25 Jun 2025 09:14:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rhi@pengutronix.de
In-Reply-To: <20250624183930.2733353-1-a.fatoum@pengutronix.de>
References: <20250624183930.2733353-1-a.fatoum@pengutronix.de>
Message-Id: <175083569663.1476064.4675415896539311301.b4-ty@pengutronix.de>
Date: Wed, 25 Jun 2025 09:14:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_001458_463955_0CCEF766 
X-CRM114-Status: UNSURE (   6.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: vexpress: increase barebox partition size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 24 Jun 2025 20:39:30 +0200, Ahmad Fatoum wrote:
> Commit 3630fa400be5 ("ARM: remove vexpress_defconfig") made
> multi_v7_defconfig the go-to defconfig for vexpress.
> 
> The multi defconfig enables a lot of drivers and functionality though
> increasing the image size from 300K to 1.2M, which causes barebox to
> extend beyond the previously configured 512K barebox partition.
> 
> [...]

Applied, thanks!

[1/1] ARM: vexpress: increase barebox partition size
      https://git.pengutronix.de/cgit/barebox/commit/?id=444b08fdda19 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



