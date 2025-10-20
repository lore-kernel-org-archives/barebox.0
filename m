Delivery-date: Mon, 20 Oct 2025 14:59:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTs-009tri-2A
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTl-00016A-ON
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qBGAsmRbiaoR+xX7dxMfH3tabXHQXYPHIUTiIX7Tojo=; b=1jwGMqm4F+cAh2Ga64V4iqRlAV
	2VNRyXBz7ivDGfU1yc5JJfrVmCTTPsEt4Yxtn3Y4/4uhsTkma5EMDanzNGeIecOAlDo1/4yhOtupG
	CeNHJs0y/j6hEbTkCTUB5Am31/qBNPbuec0vn0WDdUuewHBjRZLF/vqhaU6bl8+eIADkrg1NDXdHr
	nXlIlVtmjAB2AXVnnDOIx32nl7mltGHdVZ/PD7KwmhVRfrrAUh3nuIlMMTiccFKObXgve9CaYDyY/
	nuOojO2OEIDUq/WDmV9mgEwWd5gSdgMs0ER/ntOyqHjlXwHZ/ARrciRzWeUC0H4LZ5UHCSZDQQSvA
	bFIw5tkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSs-0000000DfVX-09zo;
	Mon, 20 Oct 2025 12:58:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSm-0000000DfIM-1koi
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=qBGAsmRbiaoR+xX7dxMfH3tabXHQXYPHIUTiIX7Tojo=; b=AYP6C8McWhdsFGScAHnNFPaiek
	Fw8CBRpnzPaqEEaZVAJDInG/UagClXPXW7EFF5KNM8uu4l4S4aNkiMSaFK0uxQVWg5E0KHKlTRNIy
	DUCkjoLwe+pBptA1FcKhNXzfp/LZMg/b2VhITIUb6Rrh3HV7mtvLs2nQqjrm7dqbuxCACj/838Nk1
	mXyjzo8StTzwsHu4wjWLKWcPHAt7l80RPDitv0xzO+oqJlPV4okwEwDk5vQVdIYp6LlndwiQgkvV6
	ufhdJUxkaTm/tHqrBTZocH7OrUHQe23fpNFT8Z6guZS2mohIdSC3jRrSWAlXIzTbz5OIfCram+WY+
	96Klsz8Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSe-00000007hVV-3vgS
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSb-0008CE-LP
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnbY-004X7D-2j;
	Mon, 20 Oct 2025 12:59:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnbY-0000000A4CC-3JtQ;
	Mon, 20 Oct 2025 12:59:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251015083009.4096076-1-a.fatoum@barebox.org>
References: <20251015083009.4096076-1-a.fatoum@barebox.org>
Message-Id: <176095794878.2399401.13220063367266801408.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 12:59:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135806_221209_D8151B14 
X-CRM114-Status: UNSURE (   5.23  )
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
Subject: Re: [PATCH] fixup! tlsf: move kasan_poison_shadow into
 tlsf_add_pool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 10:30:01 +0200, Ahmad Fatoum wrote:
> tlsf: do not poison the control structure more than once
> 
> The control_t structure is only associated with a tlsf_t, not a merel
> pool_t. Poisoning the control structure again in tlsf_pool thus served
> no purpose.
> 
> 
> [...]

Applied, thanks!

[1/1] fixup! tlsf: move kasan_poison_shadow into tlsf_add_pool
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2db61d98b09 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



