Delivery-date: Tue, 15 Oct 2024 09:18:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bpQ-004Zay-0B
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:18:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bpP-00035z-HI
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:18:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tn7YcyYyPWQSplJWsAwYSU7eMAtLDfDL59Qq3nOPUrg=; b=5DffaDEMCJ0l2rsnvvEHNxxXm2
	viP3zMoKB9oEnkJRyyOihPkJUAMu0Wz7vwMOrintYYt+/pIChZFr0rgXaGj/PoufBL90qw71X4ioR
	Aae9hGKBtLf6B1wbY9C7cLrGrkc5YKkX6KyLefsbwVapciFaRYReZ00EfQPH8bGTxGVSRvx6oe969
	+isj+/PyG76ZcHTvwlymDcrmK7dmpUlZKx0iHcvlQ6e2ZPkTjdtIri+lqLbDrd6zeazyqB6ZHQ05w
	r6NasmAfmeO+v1Obpo5w1X4TyQogMrjsv/3ihdLRZXFLqmQJHLWKfZhqIeUpxRQybRRu9t22bYlLT
	qQ5fqLIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bor-00000007K9C-2sbQ;
	Tue, 15 Oct 2024 07:18:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0boA-00000007K7i-3WzQ
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:17:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bo9-00031H-4z; Tue, 15 Oct 2024 09:17:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bo8-001yXq-Og; Tue, 15 Oct 2024 09:17:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bo8-006oLl-2K;
	Tue, 15 Oct 2024 09:17:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014125025.2040746-1-a.fatoum@pengutronix.de>
References: <20241014125025.2040746-1-a.fatoum@pengutronix.de>
Message-Id: <172897664871.1623363.3173460519802887987.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:17:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001730_917370_F719DA72 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: gadget: fix static analysis false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 14:50:25 +0200, Ahmad Fatoum wrote:
> On 32-bit systems, the 32-bit-wide buf can never exceed 0xffffffff,
> so this resulted in a warning. Fix this by using upper_32_bits()
> instead, which is also easier to read.
> 
> 

Applied, thanks!

[1/1] usb: gadget: fix static analysis false positive
      https://git.pengutronix.de/cgit/barebox/commit/?id=9899233fafb9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



