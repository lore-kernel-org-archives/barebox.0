Delivery-date: Thu, 27 Mar 2025 11:49:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txknJ-004qHd-1A
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:49:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txknI-0005VV-RC
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:49:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/fZyezdW01rBe/74JtyIaZGmZVwgF3sN9LSFuSmeE1U=; b=twU0W6kP9Vz7rNYvXgEJghHzGZ
	6XaaiviqdgtxWjLzo4KF5Whh+BYY8oscY0+BnH5Fx9ecKmZsXJgPWzSPX5c1D0fUFoD07nm+TbV1D
	11ZBLBGiLzBMqZhEKfRbL7gWy2UM+FAAp7ZGGLhqeCuEwh66q5ua+CPaNI1QKfDefgt5xU44e7+6Z
	q5/zzVxFeEkcOc4iyjJFZgTc5UzNYEJFbtV7uZjzUJtN3DUUR5LFfen5tm1gf0/S7ZA+YiTXZepu+
	5y4OIe+brxhUNCx+t8XXXfOHkG3Kpz4LtsjhrQfYblqnoXXVqV48moXjMEPhNdXa8f2nHJ1m0y57U
	c4JoDtqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkmo-0000000AkUu-3ZFo;
	Thu, 27 Mar 2025 10:48:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkmJ-0000000AkOc-1500
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:48:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txkmH-0005BA-H8; Thu, 27 Mar 2025 11:48:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txkmH-001umu-14;
	Thu, 27 Mar 2025 11:48:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txkmH-00BQQ7-0q;
	Thu, 27 Mar 2025 11:48:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250327103353.81841-1-a.fatoum@pengutronix.de>
References: <20250327103353.81841-1-a.fatoum@pengutronix.de>
Message-Id: <174307248125.2722859.14378646625721901013.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 11:48:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_034803_297740_C3C917D7 
X-CRM114-Status: UNSURE (   6.61  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! Revert "ci: container: downgrade OpenRISC
 toolchain from 14.2.0 to 13.1.0"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 11:33:53 +0100, Ahmad Fatoum wrote:
> Effectively revert 18a154ce19 ("ci: container: fix CROSS_COMPILE_openrisc
> to point at correct version"), because the correct version is no longer
> 13.1.0..
> 
> 

Applied, thanks!

[1/1] fixup! Revert "ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0"
      https://git.pengutronix.de/cgit/barebox/commit/?id=56d8b7b49073 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



