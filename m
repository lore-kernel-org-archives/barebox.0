Delivery-date: Thu, 22 Aug 2024 13:57:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rl-00CEo5-2o
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:57:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rl-0005Ca-9X
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:57:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QWUKpoLO/v1eVGhUY631CVemjUWJq4XS8SPK70umyLs=; b=qzbzR7vnjSLPBozD52yUsFczsm
	htZUEWRuri9U/zSDQyhHzCoXdywHV6xcaQd+86fo5Rrb4yk7/C9JhJKf/5C5PqPuUCgH/KDttPNnA
	d1AdX01JRap0qe3b1im79O9CEpSw7iYz0yK57pzdrLr2TFfPDi4c5ST7dilZbtmNj80VbtVW/XILu
	rR8PnvVkAqnqpKJEpWJXb7273CM0CnqvORtLaXQeZBNO8UYITt6HOLdnQn+Y3L7tIGEB4ScV9OL0H
	Poo9xE8/kn0Iv/ui8KTFCI++96kyeJLWu+xbKYVjJMMoqjU17Sn5TsR6DeA6sCeJ1+EfOnpyo31O/
	vay014UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RI-0000000Cf9I-0q5z;
	Thu, 22 Aug 2024 11:57:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6R6-0000000Cf79-0xqY
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-0004vq-Rm; Thu, 22 Aug 2024 13:57:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-002Exp-EP; Thu, 22 Aug 2024 13:57:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-004y2g-19;
	Thu, 22 Aug 2024 13:57:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:00 +0200
Message-Id: <20240822115701.1184099-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822115701.1184099-1-a.fatoum@pengutronix.de>
References: <20240822115701.1184099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045704_293949_750E6C35 
X-CRM114-Status: UNSURE (   9.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] MIPS: qemu-malta: explicitly set stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Malta device tree describes and enables two consoles, but doesn't
specify which one to use for barebox console.

In configurations with CONFIG_CONSOLE_ACTIVATE_FIRST, it's thus
dependent on device tree probe order, which console ends up being used
by barebox.

Fix this by explicitly pointing stdout-path at the first console.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/dts/qemu-malta.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index c2bc03dd4631..6cf7513ff5fa 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -8,6 +8,8 @@ / {
 	#size-cells = <1>;
 
 	chosen {
+		stdout-path = &uart0;
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &env_nor;
-- 
2.39.2



