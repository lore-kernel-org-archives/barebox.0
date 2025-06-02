Delivery-date: Mon, 02 Jun 2025 09:43:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzpF-002src-3B
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 09:43:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLzpF-0005mL-FE
	for lore@pengutronix.de; Mon, 02 Jun 2025 09:43:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rodJhjSrFZTp2oE9BKWfA18Ws5nCwK13bvA+HtDR8oY=; b=noyJi68Uv9QIt43JfUXATAYyHF
	sMHA6FKW99kSTB+uQ2O8Mj2PRfFn7bNvJbho2xNQeAROl9CmqWZTaZhLha6jrJAd7ygLbzxS5xHWh
	BoL1qSv2p+G4ZsMa0Dg73E28KoBht5exXvqf6fRn0V3ByT20g284U+FxR8Cmb5u+8Jtx1AFuu/gdW
	wayZUciT3EEihvlJGMRjIYOgJTwxBLKrUw7E4i1ysSmG4xa2v5M2TcPkNbqNY3y3ctNWwt6RIUdYJ
	ZAOdPtypISi4jRWQYpNVT+ek9IRq+ozFdMY+jfLzWVstz/yuWjr0hOmzgA6hGCf5g+LKEleGAbm6e
	l9X0wHtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzob-00000006vYy-2e0n;
	Mon, 02 Jun 2025 07:42:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzoY-00000006vY7-3aDw
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 07:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoV-0005V3-PC; Mon, 02 Jun 2025 09:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoT-001Psj-2o;
	Mon, 02 Jun 2025 09:42:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uLzoT-003VIE-2X;
	Mon, 02 Jun 2025 09:42:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250601210002.562733-5-a.fatoum@barebox.org>
References: <20250601210002.562733-1-a.fatoum@barebox.org>
 <20250601210002.562733-5-a.fatoum@barebox.org>
Message-Id: <174885014978.835242.479845612833565977.b4-ty@pengutronix.de>
Date: Mon, 02 Jun 2025 09:42:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_004234_896761_AE35686F 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: Re: (subset) [PATCH 5/5] fbconsole: reset cursor to origin when
 changing fonts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 01 Jun 2025 23:00:02 +0200, Ahmad Fatoum wrote:
> If we switch from one font to another, we update priv->rows and
> priv->cols, but priv->x and priv->y remain at their old values.
> 
> This becomes problematic, when a bigger font is chosen, because the
> coordinates may now exceed the maximum number of rows and lines,
> triggering an out-of-bounds memory access, when they are scaled
> according to the new font.
> 
> [...]

Applied, thanks!

[5/5] fbconsole: reset cursor to origin when changing fonts
      https://git.pengutronix.de/cgit/barebox/commit/?id=812b498be405 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



