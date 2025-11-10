Delivery-date: Mon, 10 Nov 2025 09:14:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN38-00HJRl-2N
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:14:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN38-0004p4-7a
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:14:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iT7Mq+xHd2S3f2jv0TAWZZZW9pzVqUPaFAJx7wpNnKE=; b=HbK3S4k0MU01d5feaqTfJ/4Z0e
	bLBDXG7oZMer2Y5QA0W3p8TPT2JuxojGX2jHf622OSJ3UXcREYv2ZCzfFAsVM4v56OBRcuOEj685W
	VtubqzeP5tSAkQJaSv3bmeBxTWTI0axbeEoIN4o3gZ9PI6Aq8+XPu3xNIpJIq0FalZyYWPU/opJ6b
	acr8XTlnooqA/0U7s+n2xYePFDJ/EYsPX0GCERf7dX+ukXABicbiUpeGloSgt5Kn5NTb/h9hbNhdl
	F0iNWzqQRLqxrI8pm7GM8mJtNdNhN26XJEE3tQ1TjzbghdP5JBgUdohsVLSae2oWZhuhZg05oLalc
	j5EWDYyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN2i-00000004xY5-1urR;
	Mon, 10 Nov 2025 08:14:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN2g-00000004xXE-10lk
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN2e-0004jI-3M; Mon, 10 Nov 2025 09:14:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN2d-007zP3-2u;
	Mon, 10 Nov 2025 09:14:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN2e-0000000493R-1Cnm;
	Mon, 10 Nov 2025 09:14:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251107182750.3367036-1-a.fatoum@pengutronix.de>
References: <20251107182750.3367036-1-a.fatoum@pengutronix.de>
Message-Id: <176276246384.988088.10332415128802940017.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:14:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_001426_481311_A6064DD8 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: mmu: fix hang when reserved memory at
 start of RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 19:27:41 +0100, Ahmad Fatoum wrote:
> If the memory bank starts at address 0 and the start of the SDRAM is a
> reserved region, remap_range_end_sans_text() is called with start = 0,
> end = 0, which is interpreted by the function to mean that it spans
> the whole of RAM.
> 
> Fix the issue by not calling remap_range_end_sans_text() for empty
> ranges. This fixes an early hang observed on the Raspberry Pi 3.
> 
> [...]

Applied, thanks!

[1/1] ARM: mmu: fix hang when reserved memory at start of RAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee135d98586b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



