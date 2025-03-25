Delivery-date: Tue, 25 Mar 2025 08:23:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twycu-003v3j-28
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 08:23:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twyct-0002P6-I9
	for lore@pengutronix.de; Tue, 25 Mar 2025 08:23:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W1ItAIRgpbV2YtZjJZGgA11yTC3Knpz9B06k2tG63cQ=; b=09dnVM7eldZx1OZM1+SsG6DW51
	l+q9QrwPp3WfqseQZqmuhmUEmDz1Zq2pu+jvaTLol0XxTYcwUmy7f+Y8Bg8LmBLIXq6ceedMjRMXd
	d7rEWsipaGASu4/0SiXTng1Bwh9QRRqi8DCQAU9O3JDU2P4a7OWM+TiRRYqXWamM0QjE6/M3U0HjI
	YgIw7K2hem/9qRj8G5XFmVm98M5ADgvi7ImWjvyBZltXTTo9p2QorV/hnsW4HXmTl8ZO9S1CBwN3v
	T+g2+Dy9N+j4E0/A4+r+Vi7V+6DhfdkAg/nuQDdF217vyD1NfRCG/EnGUsevYLnuedszigxSQzVX3
	4B9lG5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twycG-000000054Ps-3GAx;
	Tue, 25 Mar 2025 07:22:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twyWC-000000053TD-3PxC
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 07:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-0001ar-Sg; Tue, 25 Mar 2025 08:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-001XbR-0s;
	Tue, 25 Mar 2025 08:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twyWA-006Z3q-20;
	Tue, 25 Mar 2025 08:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250324102442.1750715-1-s.hauer@pengutronix.de>
References: <20250324102442.1750715-1-s.hauer@pengutronix.de>
Message-Id: <174288697062.1564623.13528006107213875040.b4-ty@pengutronix.de>
Date: Tue, 25 Mar 2025 08:16:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_001612_855425_8088D603 
X-CRM114-Status: UNSURE (   7.13  )
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
Subject: Re: [PATCH 1/2] filetype: fix MBR detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 24 Mar 2025 11:24:41 +0100, Sascha Hauer wrote:
> is_fat_or_mbr() doesn't detect MBRs anymore because we return
> filetype_unknown when it's not a FAT filesystem. Instead we may only
> return early when it's explicitly a FAT filesystem, but continue
> in the function in case it's not to properly detect a MBR.
> 
> 

Applied, thanks!

[1/2] filetype: fix MBR detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=34d62c6804eb (link may not be stable)
[2/2] filetype: fix FILETYPE_STRING misspelling
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ea15ea6801c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



