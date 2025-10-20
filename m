Delivery-date: Mon, 20 Oct 2025 14:58:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTR-009tk7-2I
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTJ-0000X5-FA
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kYamaUERDciXYV+9tfebsspvdM6G9EZbeuy1jzr2PwE=; b=0etxhw9wsapy0fT0vlzfQLsFfh
	/Qa4VQX8CgqDSvXLa+kMeo01ZldhZPUeG8XxaO4A/5WTN8bsWy1HoHjoMXyxBfUcRcsT9PPMRo2ve
	MtdMhfshHN+J7dmhRLZQXsl1fxrltWEYPrLnU63Fh76s8EeRrfeP35uXetHOnJGgJ7Kzi+foxo4xA
	jTBCrr8HIM3eaP2eK91EmBkniUtraeeLIpEKowxP4KR4Gz+hClnfyU7MnG30bJ1mYdfuEbhSSGbOu
	yBKFzOWpoZRkrGtmAae/07jxDitNmTvlQFv3vPcdtzrpbLpoN9pjhm2UXaIQXhbaFFLgvST3hjoFQ
	H4Mdeftg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSg-0000000Df96-0d5R;
	Mon, 20 Oct 2025 12:58:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSc-0000000Df3x-3rDT
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008BV-21
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAlW3-004W4S-1P;
	Mon, 20 Oct 2025 10:45:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAlW3-00000009xRR-1ZHW;
	Mon, 20 Oct 2025 10:45:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20251017120406.1348897-4-m.felsch@pengutronix.de>
References: <20251017120406.1348897-1-m.felsch@pengutronix.de>
 <20251017120406.1348897-4-m.felsch@pengutronix.de>
Message-Id: <176094991936.2373438.16638120043150021288.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 10:45:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055802_960697_1F4CB0FF 
X-CRM114-Status: UNSURE (   4.81  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 4/4] aiodev: add missing headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 Oct 2025 14:03:36 +0200, Marco Felsch wrote:
> Add required headers to be include order independent.
> 
> 

Applied, thanks!

[4/4] aiodev: add missing headers
      https://git.pengutronix.de/cgit/barebox/commit/?id=28e176c323af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



