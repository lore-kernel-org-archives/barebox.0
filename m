Delivery-date: Wed, 30 Apr 2025 11:53:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA48A-000mt0-1r
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 11:53:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA48A-0007cm-1o
	for lore@pengutronix.de; Wed, 30 Apr 2025 11:53:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCSa49OVYLGwrqh0gItN9uqG1qzue0wNvlqnZ+F1KOU=; b=FEPWkTY5INcWy+jCaN4oq2z5oF
	GKSxZDDbD8eyaSmb3Pel7uAE9tZn/AzEkjf+1ct4qP9iGM8vow0TBlRgEf6wPG1OYlhunU1KUNyKL
	KT0TthyDT4YO/3vN8cIzm0kYn3ZbI9tGcJjJpWl61mSxnLVMZiJIPBQfy4rZEJH+hb38B8cFl9gil
	Q8H1KrwVj6UbSPfKrU+oV6Y++/NTC+ZqU/n9uCD1dONDFEhQA8rGWFJ0SDhvJFpBBTaUPDvzdyhJU
	+ailJzAqS+yZEMf67TFE8zKIhdE2iK2tDkpNcRWcQ8zxSkoetWe4m8kjkTSSywJfqmRf5xQEC5DMj
	9Vda2u+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA47i-0000000CRPm-3k5l;
	Wed, 30 Apr 2025 09:53:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3oO-0000000CNYh-2HNg
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 09:33:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3oN-0007P0-Ch; Wed, 30 Apr 2025 11:33:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3oN-000PK7-0e;
	Wed, 30 Apr 2025 11:33:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3oN-00E4YY-0R;
	Wed, 30 Apr 2025 11:33:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250428092506.27200-1-eagle.alexander923@gmail.com>
References: <20250428092506.27200-1-eagle.alexander923@gmail.com>
Message-Id: <174600558313.3354053.13596004948154076723.b4-ty@pengutronix.de>
Date: Wed, 30 Apr 2025 11:33:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_023304_582205_438B5709 
X-CRM114-Status: UNSURE (   7.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: Fix incorrect rate comparison in clk_set_rate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 28 Apr 2025 12:25:06 +0300, Alexander Shiyan wrote:
> The original condition in clk_set_rate() compared the current clock rate
> against clk_round_rate(clk, rate). However, when the clock driver doesn't
> implement .round_rate(), clk_round_rate() falls back to returning the
> current clock rate via clk_get_rate(). This created a situation where:
> clk_get_rate(clk) == clk_round_rate(clk, rate)
> would always evaluate to true when .round_rate() is unimplemented.
> 
> [...]

Applied, thanks!

[1/1] clk: Fix incorrect rate comparison in clk_set_rate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=3111d62b3174 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



