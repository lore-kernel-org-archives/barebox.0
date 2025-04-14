Delivery-date: Mon, 14 Apr 2025 11:09:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4FpE-000Zvk-0D
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:09:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4FpC-0000Xp-JL
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:09:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGN5UuRZDml4UPZbEvdNVEs6n7uCBto1RXprleBL1qA=; b=n3ghr2yLCKuY/nHTU7vr/5Xyoi
	UJM/gABFpWrA+CD5FQX6zrEmmNRFzBhZO4yk+FA0fyw7Pi8uFumks4Qhk3SPzyLtU6lE4M2aQtZdM
	E+f/vVdKHv8l7e/D5purhsC6wm6vGv7X67ysT4XhYkOreY/prgbbCYHHxA9fjaBkwrnkjH3Dl8vbU
	Ez1G5qmInpDFRzBU2MAZ3Y9YMXD3fKmWZ+Jcw9Ltp5QJpdxaMnqfRT8VBYI9dCeGl1XE1U8Uvwvo0
	zFkcCprOn9MgojwJ++cvwijUm6/sSaDFDt9ik+bofCk2i0aCJ9mZENQpvXSbGJGNZAKg5MWnx0ugZ
	+DM1r8VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Foc-00000001E9Z-2wl5;
	Mon, 14 Apr 2025 09:09:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Fdz-00000001BsW-0dIx
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:58:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fdx-0004ZA-Pk; Mon, 14 Apr 2025 10:58:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fdx-000Dmr-1x;
	Mon, 14 Apr 2025 10:58:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fdx-00FbTW-1k;
	Mon, 14 Apr 2025 10:58:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414062257.2721241-1-a.fatoum@pengutronix.de>
References: <20250414062257.2721241-1-a.fatoum@pengutronix.de>
Message-Id: <174462109753.3718923.16786344070282491046.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 10:58:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_015819_196738_92005B29 
X-CRM114-Status: UNSURE (   6.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: clarify
 global.of.kernel.add_machine_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:22:57 +0200, Ahmad Fatoum wrote:
> While the name hints at the compatible being added has something to do
> with the kernel, the magicvar help text doesn't.
> 
> Point that out and make the functionality dependent on CONFIG_OFTREE.
> 
> 

Applied, thanks!

[1/1] common: clarify global.of.kernel.add_machine_compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=fed33d28aa23 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



