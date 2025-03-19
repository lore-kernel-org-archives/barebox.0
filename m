Delivery-date: Wed, 19 Mar 2025 10:14:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tupVa-001Oii-10
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 10:14:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tupVZ-0004qi-6V
	for lore@pengutronix.de; Wed, 19 Mar 2025 10:14:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cWzMQKTQZPGwTVieyLvXaHDzaE7zVdiKBz9TYZO0Cf0=; b=OBRXfIAi08GEBPS1n8j+0yhuRF
	iEb2TyyuoaBNyqPvKHslmSDe9Y96C9blDqW14nq9Vss4qfkK8WLDLGVNpPBYK+yhycuKoIqf+3735
	ZGivbseJ/q2If3djrnVgUNmoYhF04FMFgUUjwS5H3BdHCn9QcM1iOiB1nTLfC2de1heFTDNuYN4Sf
	i86fBHZR3iFSD1diQqh2oQs7Ez53fD4goAFLYibE1abIRiISwcjGnr/1brbvd1znfYTGAgmngtq/+
	pWOLHeaj5J4vWPQtu3R8diLLNNzRsYP6BIuhMZozs0q9ZDpvYIipbnsbcT+4yu/ENCFzPQMbvYOoD
	qsZQIY/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tupUz-00000008Rxo-0P0Q;
	Wed, 19 Mar 2025 09:14:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tupUK-00000008RrL-1uTV
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 09:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupUJ-0004bi-88; Wed, 19 Mar 2025 10:13:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupUI-000ZNR-24;
	Wed, 19 Mar 2025 10:13:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tupUI-009sgG-3B;
	Wed, 19 Mar 2025 10:13:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
Message-Id: <174237560298.2355103.5957017931407817475.b4-ty@pengutronix.de>
Date: Wed, 19 Mar 2025 10:13:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_021324_494906_958C6F1F 
X-CRM114-Status: UNSURE (   6.68  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] mci: some cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Mar 2025 10:34:32 +0100, Sascha Hauer wrote:
> This cleans up some stuff in the mci layer and its drivers.
> 
> 

Applied, thanks!

[1/6] mci: use struct cid
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4a78c4f321a (link may not be stable)
[2/6] mmc: merge block read/write functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=38543119546f (link may not be stable)
[3/6] mci: cleanup code around ready_for_use flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=8c7710fdf1c0 (link may not be stable)
[4/6] mci: mci_spi: remove stray return 0
      https://git.pengutronix.de/cgit/barebox/commit/?id=52ea3c5986cf (link may not be stable)
[5/6] mci: mci_spi: fix warning message
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c0dcb67f65a (link may not be stable)
[6/6] mci: mci_spi: use mci_of_parse()
      https://git.pengutronix.de/cgit/barebox/commit/?id=82a681eb1889 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



