Delivery-date: Mon, 15 Dec 2025 15:10:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9HS-00BlWT-0A
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:10:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9HR-0000oz-D7
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZrzKtrVvBZmw7JgkIq6FyTPPC41Hz/5k4q1QmNGWmGQ=; b=kA9g9WkvIthRhrODMpnyP7bBTc
	HWZcP1ZOVShwsOWIFGkVw/IXcNI5I2RKV2+Q5gvPfpGCYPcHK4L8lPjbwZCWtnkgATVjFiRNk5tMO
	GcjCsakwxZNudR4BENRFNrdC1tKRLJFaCO33nDTb8toKS6ihTO/pwuMidC03bMpkILZYUJzlChep3
	SrptbyrJK4blIzRsW7U6b/p1gM6GlVYjmw40sq/7hOhUuyn3nDvkSUIQnEC4OFtj9VdGXou2BPwjz
	ph1nRjdN07kCGn/evOvA7wx3KLQ/FlJv3BN5i3n3ZGDNvA9XVRuidXQASMS0jhEJjRqvq/n90HPqM
	qLKxaxFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Gz-00000003kL1-1UGJ;
	Mon, 15 Dec 2025 14:10:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Gx-00000003kK5-3LOK
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:10:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-0000cZ-9V; Mon, 15 Dec 2025 15:09:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-005nPj-0G;
	Mon, 15 Dec 2025 15:09:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-0000000DEXJ-05HM;
	Mon, 15 Dec 2025 15:09:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
Message-Id: <176580779801.3153881.2425652021090887305.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 15:09:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_060959_839229_319CDDF2 
X-CRM114-Status: GOOD (  10.54  )
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
Subject: Re: [PATCH 0/6] partitions: GPT: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Dec 2025 16:19:04 +0100, Sascha Hauer wrote:
> This is a continuation of the patch previously sent separately:
> 
> https://lore.kernel.org/all/20251128111929.2463263-1-s.hauer@pengutronix.de/
> 
> Ahmad's comment to this was that we should write the inactive GPT first
> to make sure there's always a valid GPT on the device. This series
> implements just that. I stumbled upon a bug when we restore the primary
> GPT from the alternate GPT, this is fixed in this series.
> 
> [...]

Applied, thanks!

[1/6] partitions: gpt: pass epd context pointer to find_valid_gpt()
      https://git.pengutronix.de/cgit/barebox/commit/?id=21f0f27d4ee8 (link may not be stable)
[2/6] partitions: gpt: only write actual ptes size to device
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8ce79acad3f (link may not be stable)
[3/6] partitions: gpt: factor out a function to write primary/alternate GPT
      https://git.pengutronix.de/cgit/barebox/commit/?id=39d9c24162e0 (link may not be stable)
[4/6] partitions: gpt: write inactive GPT first
      https://git.pengutronix.de/cgit/barebox/commit/?id=825fa5c84455 (link may not be stable)
[5/6] partitions: gpt: fix GPT restauration from alternate GPT
      https://git.pengutronix.de/cgit/barebox/commit/?id=58ddade72049 (link may not be stable)
[6/6] partitions: gpt: refresh partition tables when necessary
      https://git.pengutronix.de/cgit/barebox/commit/?id=131ef8e9ef99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



