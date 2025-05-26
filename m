Delivery-date: Mon, 26 May 2025 15:52:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYFI-000XPV-1L
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:52:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYFH-0000QW-T9
	for lore@pengutronix.de; Mon, 26 May 2025 15:52:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QtGQrdQVzjxLnIsp/iLq3k9xVNvBWRE4IFp8cdlWG3Y=; b=FPScO7cOrFW4MUqjnlITtVbBu3
	zo73/ahahD+RGLYELDhELcsK6e8AA7Md+Pf8bZd6SPBnc04COEeWFqVT6gR8wJWMtP+x2UlOJnsPY
	q/vpQ5llSBaIm3fCeEtr+2GL/E/2RHJZHBZ/UMigL7R0dQ2GZryS31y+YoqtHON/WcChmUwwWpVu9
	pVvczbbzkbWF27BmU6nhFH9PS6rcVdw0MbaYcnvbczz5jvF21c+/Drp+ta1HrlyUYrNSB8tnCUr1Y
	B6ISSBpCwBCP3h/L+N2p4wssVcc1RCcdhd5q6gDGFRpekTG7/jfX1eEIuu7J/cK5ReQWVbJCsWbKi
	oxIO1tWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYEs-00000008wDd-2KeQ;
	Mon, 26 May 2025 13:51:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYEp-00000008wDJ-0tUW
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:51:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYEn-0000CQ-Sr; Mon, 26 May 2025 15:51:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYEn-000G98-2I;
	Mon, 26 May 2025 15:51:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYEn-003123-24;
	Mon, 26 May 2025 15:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
References: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
Message-Id: <174826749363.718904.700898856798651849.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:51:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_065135_257620_145DC7F2 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/4] ARM: mmu: ensure PTE is written at once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 May 2025 19:41:00 +0200, Ahmad Fatoum wrote:
> Writing the PTE with a normal non-volatile access is a bad idea, because
> speculation may already use a partially written entry.
> 
> Use WRITE_ONCE to turn this into a volatile write via a new set_pte
> helper. The extra helper is useful for type enforcement and for future
> extension when we start to consistently apply break-before-make[1].
> 
> [...]

Applied, thanks!

[1/4] arch: sync READ_ONCE/WRITE_ONCE with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=cacff83edeef (link may not be stable)
[2/4] ARM64: mmu: document granule size calculation
      https://git.pengutronix.de/cgit/barebox/commit/?id=ebe6d3b8b732 (link may not be stable)
[3/4] ARM: mmu: ensure PTE is written at once
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc909e5d084e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



