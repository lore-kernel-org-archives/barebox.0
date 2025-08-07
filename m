Delivery-date: Thu, 07 Aug 2025 08:06:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtmD-007tYy-2L
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 08:06:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujtmD-0001E4-7T
	for lore@pengutronix.de; Thu, 07 Aug 2025 08:06:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OFUF3nQ3CKUsepjQZ8ggj2o4XCwmdvYbK6RTjONdw9c=; b=ZdYovI1QGiBBuMfbaRW4oPYhzw
	LM4AzDXmt1J9oHtXiaOh+6g3KJXx9DWL2OmhwFgXnQAvU6wcGVlKxJSUjYZ+qFLDJ5dYDum8E24vS
	WTVtKd0R26xgsLbTN520b0tGXjX/U5RuPMyq3YLc+pYuxFDBFJBx2zZfroIPSVd1a83ERAqvbcuFj
	9SWxitx59QQZTa3xNdk60jNmJ4Ge4C82ApsHuInQz8vgQsRgu7Yfuc9c5aAPUgkq5XIdjZ2hXUvTy
	bK8HaYf+RAlB5rJe+SHdI1mzeccjC7VFYqyIDstuTW++XBb5A31Zf895EhiH00BSss/Loa9rkCHPc
	m1yZfjNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtlm-0000000HLl6-0gvs;
	Thu, 07 Aug 2025 06:06:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujtlj-0000000HLkn-1XEm
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 06:06:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtlh-00019u-Vr; Thu, 07 Aug 2025 08:06:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtlh-00CKJm-2b;
	Thu, 07 Aug 2025 08:06:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujtlh-006dtU-2Q;
	Thu, 07 Aug 2025 08:06:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250806124716.2800716-1-a.fatoum@barebox.org>
References: <20250806124716.2800716-1-a.fatoum@barebox.org>
Message-Id: <175454678574.1583257.4183168405980974235.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 08:06:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_230627_408774_6B688F99 
X-CRM114-Status: UNSURE (   5.51  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: prefix panic with PANIC:
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 14:47:15 +0200, Ahmad Fatoum wrote:
> This makes it easier to match against in the test suite.
> 
> 

Applied, thanks!

[1/2] common: prefix panic with PANIC:
      https://git.pengutronix.de/cgit/barebox/commit/?id=a27b277bbf5d (link may not be stable)
[2/2] ARM: interrupts: unify panic output on unhandled exception
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e12db887c77 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



