Delivery-date: Tue, 28 Oct 2025 08:27:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDe71-00CbnC-00
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 08:27:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDe70-0003UJ-GM
	for lore@pengutronix.de; Tue, 28 Oct 2025 08:27:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v46V87Y1J6kYa8cns9Z//kaQIBQTEecnfG+sg49lUgw=; b=vqnavNhcDH+mJbLJhlGibX6L4Y
	OJ0lhYnrc+bD1wTL4q3WGXGGozjGM4Jzu/xqtdgh4dpdx8TUqOUVS1s+LRg669p07bcipMPY2VygT
	WlnyLhhluyIw9U88bMILKRcoeEzY4uxzDtHZC5pXKQcxJg2FktQ3OU35IKU4ZcbTjS5DKp5rjVC1f
	zMtHWEGAMaUBT0bsDtdk9Z7oaN7YIILMZSEVYMvo+3vQ0J/4JRzlHv8j70MwgkZkt12aS4f0L+9rQ
	1izxgmeN9/aW2gXvLKhZLmLdXzxZol6XLP9h2qFGxFg3ph00t4oqszob7IkNeifmSFjNJxZnxNXWW
	1/TWUzPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDe6a-0000000FPLn-05d6;
	Tue, 28 Oct 2025 07:26:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDe6X-0000000FPLA-2dm4
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 07:26:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6V-0003Na-Mv; Tue, 28 Oct 2025 08:26:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6V-005pwu-1h;
	Tue, 28 Oct 2025 08:26:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6V-0000000BfYk-3nGY;
	Tue, 28 Oct 2025 08:26:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027074236.2473380-1-a.fatoum@barebox.org>
References: <20251027074236.2473380-1-a.fatoum@barebox.org>
Message-Id: <176163641145.2781239.4916100810235140546.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 08:26:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_002653_670067_EB0292F5 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: Re: [PATCH 1/3] fuzz: add context pointer to
 call_for_each_fuzz_test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 08:42:30 +0100, Ahmad Fatoum wrote:
> In preparation for removing call_for_each_fuzz_test from the sandbox
> PBL, give it a context pointer to simplify its use.
> 
> 

Applied, thanks!

[1/3] fuzz: add context pointer to call_for_each_fuzz_test
      https://git.pengutronix.de/cgit/barebox/commit/?id=17ebc7ac77ac (link may not be stable)
[2/3] sandbox: export list_fuzz_tests to sandbox_main
      https://git.pengutronix.de/cgit/barebox/commit/?id=73ff5a8b79b2 (link may not be stable)
[3/3] fuzz: do not export for_each_fuzz_test
      https://git.pengutronix.de/cgit/barebox/commit/?id=8d3f3aa731b4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



