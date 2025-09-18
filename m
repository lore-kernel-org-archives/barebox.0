Delivery-date: Thu, 18 Sep 2025 16:22:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFWb-004V18-0u
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:22:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFWa-0000SV-PQ
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:22:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iK2JVGTyVvRxGb9X/uaaZF+oie6r3Bv+1297cXaoTqM=; b=W9d77ZqwqDEfHligUJsDDYqW12
	8Bb56Y1xERwMS1LwwwP8Nbg6DNrPb6KJp36fRqP2WVF5QKHSUYKeyx8EHd3VuByJ5ERjcG0FE95v8
	TtoGv6P7e4uMva9lJZ6GW3GUOzHpTrkmU/olS2ZAVt1xe115nV+Jou5CcqnROqA899ldAKxOTxq+5
	EVzcylBlJdAgxO+ux4mbE++Eyex+tTWtJnexUrUJOw2JHY8ShqbSY0Z2AMtPQBwqPxnhnQACCnRE2
	qekXXWngPgFaiGSZtN7RhQRpZ546kyP8nN2e7kaGdf8+So0AwfkQau3ti/yY1GdWQCI6w3lMNudA9
	zletEJHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFWB-000000007Dc-44lt;
	Thu, 18 Sep 2025 14:21:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFW9-000000007CV-0lAy
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:21:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFW7-0000ML-Ov; Thu, 18 Sep 2025 16:21:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFW7-001xE4-1u;
	Thu, 18 Sep 2025 16:21:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFW7-0000000EPIW-2DE2;
	Thu, 18 Sep 2025 16:21:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250916-rockchip-cleanup-iram-v1-1-e6797d08f8dc@pengutronix.de>
References: <20250916-rockchip-cleanup-iram-v1-1-e6797d08f8dc@pengutronix.de>
Message-Id: <175820530752.3433817.3220410738242300383.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:21:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072149_223441_C3139084 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: cleanup iram handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Sep 2025 10:02:02 +0200, Michael Tretter wrote:
> struct rockchip_scratch_space has grown and gained additional fields.
> While the scratch space for the iram is still at the start of the
> rockchip_scratch_space, it is actually just one field in the scratch
> space.
> 
> Explicitly store the iram to the iram field, and copy only the size of
> the iram field instead of the entire scratch space.
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: cleanup iram handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=d20190702b61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



