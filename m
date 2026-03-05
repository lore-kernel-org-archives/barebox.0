Delivery-date: Thu, 05 Mar 2026 07:40:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2NX-008FB3-2U
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 07:40:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2NY-0000jZ-2q
	for lore@pengutronix.de; Thu, 05 Mar 2026 07:40:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w7qosgyvNlJkguyNuZauYEGVkE7eS2nu0qbPgfo/VII=; b=yCN/VEtFRJ3a/Tmdyu9mx9CoDO
	FYzjHkdMx2nt42if6Cw5eS3E7ZPZRu4OzOkLDh47MhjuaDropC/guBGWktLbJoec/97L6haFhgxyC
	uxUMBr2CK5wToGrCEYlZRmSwGvgY5NIlfnBvsaj6OOplHE80kTK5KdVrCyEOBEAzUGsU3+MGqvqv6
	sMDA/NAHN8SpC3hdDGwIAXc++jeT0oqO0zJ20GfBCIF3W6O1J+tWX4xInl1NaUg9pCW+TwcWOVah6
	QENFpRIEA4qCFV99z1IZieuRhoA+DKosjUnTz2mHSDNX6j8Uv2vvzsB59HXmSEU3iQjlxNdVL4jSa
	aRV9eYEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2Mm-000000011Xr-4BNk;
	Thu, 05 Mar 2026 06:39:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2Mj-000000011Wn-38gV
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 06:39:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2Mh-0000WE-1i; Thu, 05 Mar 2026 07:39:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2Mf-003q5V-1f;
	Thu, 05 Mar 2026 07:39:18 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2Mg-0000000EKHJ-3JFz;
	Thu, 05 Mar 2026 07:39:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260304104904.1205995-1-s.hauer@pengutronix.de>
References: <20260304104904.1205995-1-s.hauer@pengutronix.de>
Message-Id: <177269275878.3414392.1336895338396148110.b4-ty@pengutronix.de>
Date: Thu, 05 Mar 2026 07:39:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_223921_793771_1F019740 
X-CRM114-Status: UNSURE (   6.22  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pbl: console: fix undefined reference to vprintf()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 11:49:04 +0100, Sascha Hauer wrote:
> panic() now uses vprintf() which is not available without
> CONFIG_PBL_CONSOLE. Move the declaration to the right ifdeffery
> which already handles that case.
> 
> 

Applied, thanks!

[1/1] pbl: console: fix undefined reference to vprintf()
      https://git.pengutronix.de/cgit/barebox/commit/?id=510b79d1ad68 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



