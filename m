Delivery-date: Mon, 22 Jun 2026 08:22:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbY2r-008YlH-0g
	for lore@lore.pengutronix.de;
	Mon, 22 Jun 2026 08:22:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbY2q-0007LP-M3
	for lore@pengutronix.de; Mon, 22 Jun 2026 08:22:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1u9ZmnL86PHSAGWgODQP2Fh5bf+22mtr+8tH4BoSou4=; b=QyVhnE63kNyl2I+IHh9QvUfCtp
	r4eRyf+m7YEmvd+QIdLEjpKgzFDkBqgQ75AIrQs6gfB0MwaO+9ovCZ8wR41n2aAr5vkkqwdLHIyId
	dJkQhFhUH6h7bvKsB3KQEUtPY/vPvzxbXEDat0yX4qoT9e9ypTBKYNo7qyh/8HiygoQ6SxMNlx39c
	PGAOVrG0FoX6y4Tlv0SshzDzw8lLQgX6IJf4P9EgEf5w/hnsK0TIQ3xywXHDyQV2EDQE59pILf0Xc
	IkV56H+DxZKkff456Bvnf79//t8BXyXc1DdqmFBwCx2cjz7SJJBhOiRuIr/NyozdAIBSoDrP1b+3Z
	ox6wHiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbY1r-00000004TSe-49qJ;
	Mon, 22 Jun 2026 06:21:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbY1o-00000004TRR-3p7i
	for barebox@lists.infradead.org;
	Mon, 22 Jun 2026 06:21:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6D498200082;
	Mon, 22 Jun 2026 08:21:02 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wbY1m-0042aH-10;
	Mon, 22 Jun 2026 08:21:02 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wbY1m-00000008pj1-1212;
	Mon, 22 Jun 2026 08:21:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260619102255.1288268-1-a.fatoum@pengutronix.de>
References: <20260619102255.1288268-1-a.fatoum@pengutronix.de>
Message-Id: <178210926223.2105432.1395815012473948273.b4-ty@pengutronix.de>
Date: Mon, 22 Jun 2026 08:21:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260621_232105_106524_EDF670D9 
X-CRM114-Status: UNSURE (   5.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Documentation: migration-guides: add .0 to
 migration-2026.06
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jun 2026 12:22:50 +0200, Ahmad Fatoum wrote:
> The other files all include the stable part of the version string, so do
> likewise for our most recent migration note as well.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-guides: add .0 to migration-2026.06
      https://git.pengutronix.de/cgit/barebox/commit/?id=d18ce137f5b7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



