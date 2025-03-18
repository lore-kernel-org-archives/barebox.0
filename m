Delivery-date: Tue, 18 Mar 2025 11:22:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU5R-000zxL-2f
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 11:22:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuU5Q-0004vj-Nn
	for lore@pengutronix.de; Tue, 18 Mar 2025 11:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pyDhtmCZe2EYxkJ5ZUMtPhk9T+thvx3EDtIi5xus+gM=; b=yl+AGzQcWa7jtBRN12lcHYXxSC
	9uQDLObcliXPovmG4RXXLY1M890jtQF2Z4kmIEwPs2IqrufHgPLQSr5joLJt/nr/iTnb7me4BE727
	bwu6KE2honV89zvMD6K3KEBe0nAIviryH1dVFQ4r0FMHtCq/qODmVUZSb8iCrR7ixCfH2rhYBjZzm
	l5y9QspchP6vLiMYxCXJDmyuqb8nxzL8sjv0rJpC0t8uGxZmHhsYMVT9lJgbMcxwwTImUrng15QwR
	AlxCCYQEk0TF0SuavQ7pqTFlAT+MYrblsBRNwAOJpGzaeJyocEJjyu3uPhdVnrMVV5QEU869i8Q73
	2iUs0XLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU4k-00000005TgD-2N0C;
	Tue, 18 Mar 2025 10:21:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuU4g-00000005Tey-37zl
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 10:21:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4e-0004kY-0D; Tue, 18 Mar 2025 11:21:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4d-000PQf-1I;
	Tue, 18 Mar 2025 11:21:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuU4d-00G6rS-2Q;
	Tue, 18 Mar 2025 11:21:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250317104022.1046085-1-s.hauer@pengutronix.de>
References: <20250317104022.1046085-1-s.hauer@pengutronix.de>
Message-Id: <174229328774.3839599.4843202908065121251.b4-ty@pengutronix.de>
Date: Tue, 18 Mar 2025 11:21:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_032130_785313_7D45DD46 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: Re: [PATCH] watchdog: rti_wdt: return 0 even when not ready for
 ping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Mar 2025 11:40:22 +0100, Sascha Hauer wrote:
> The rti_wdt is a windowed watchdog which means we are not allowed to
> ping the watchdog outside a certain timing window. When pinging the
> watchdog too early the watchdog will trigger.
> 
> We used to return -EBUSY from the watchdogs ping callback when
> pinging outside the timing window. We may ping the watchdog multiple
> times in boot_entry() which then results in
> 
> [...]

Applied, thanks!

[1/1] watchdog: rti_wdt: return 0 even when not ready for ping
      https://git.pengutronix.de/cgit/barebox/commit/?id=85654b653d7c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



