Delivery-date: Mon, 24 Mar 2025 11:29:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twf3n-003Y8O-3B
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 11:29:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twf3m-0001ZS-Nr
	for lore@pengutronix.de; Mon, 24 Mar 2025 11:29:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hglfk/xqQpr1CD0JnX2bq+aqxXXntTJZ2iEAjIMV1dY=; b=K3Oh7LHzGZrQbveJAUUBpJIbE4
	plIqnA4bQcYmM6ZaNotwS+zokcMPy009PEu/+g4X6xFlR6Cf6u4UmCwWOo1P62E6NN/D/LEuf6wG0
	MQst/patCrSQlO26IvbR4WErVS6Mg1PIrTSDrpDbQgM8Db+6Vwabqy++z0Hyyjv+6Nw+hAshXW/3d
	jw1u6eYcvIa58vRDjPMNEGmqgcgkfvwSM8SSW685tHg2MUHmJkmtTUc3hRhjTESvswed8Mrv0ShCS
	kW0dlkVMebt/WAbLOw+KhFJeHy8PHumbmBW6i4tLZcPhL4o1RMyo2uGDG31+0Ai39I/BNDJY8wQlj
	fdvR7QrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twf3L-00000002ppy-3Qq3;
	Mon, 24 Mar 2025 10:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twf3J-00000002ppa-0xX0
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 10:29:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twf3H-0001Ti-VX; Mon, 24 Mar 2025 11:29:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twf3H-001ORA-0Q;
	Mon, 24 Mar 2025 11:29:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twf3H-007LZl-1Z;
	Mon, 24 Mar 2025 11:29:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
In-Reply-To: <1fb9c1cf650ba020511788388fdfdfe995b25117.1742405341.git.uwe@kleine-koenig.org>
References: <cover.1742405341.git.uwe@kleine-koenig.org>
 <1fb9c1cf650ba020511788388fdfdfe995b25117.1742405341.git.uwe@kleine-koenig.org>
Message-Id: <174281214348.1751096.15767383479623259413.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 11:29:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_032905_267526_CB251E03 
X-CRM114-Status: UNSURE (   7.07  )
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
Subject: Re: (subset) [PATCH 1/2] arm64: rockchip: Enable rockchip otp
 driver in defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Mar 2025 18:32:38 +0100, Uwe Kleine-König wrote:
> This driver is useful on rk3308, rk3568 and rk3588. Enable it in
> rockchip_v8_defconfig.
> 
> 

Applied, thanks!

[1/2] arm64: rockchip: Enable rockchip otp driver in defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c87417f5d53 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



