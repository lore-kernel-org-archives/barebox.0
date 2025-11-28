Delivery-date: Fri, 28 Nov 2025 18:21:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AI-005rDw-0L
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:21:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AH-0001D7-JK
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:21:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u/3uSCk3D+sYLdUQgQ/udMPIJs7OXwMnPU/yer2mbnA=; b=XcuMX630qbf3Ej45Xaer0owymI
	v/+js1e4WA0FWunNQMqrbUfmL0yI0f9qjX3xJ8CORamMh0r3j0nB3bVCl5e2tZuhF7da9PfYEO3uR
	uNmh4LgS7jUKuzu8Byc3gm0WgZacXLRmLs2F9ddd/teE4tvaszt/aKmqgJ3qMTaBJJBJ9hN+GS9t5
	GxrX1rQ0Pti9qYxz3uacWEvoLLKSZ9wHmdDdqaQiUO8RAVBT/jmhg0DDkf2kqz51zP2pcv7gQm64n
	hwar2Ri7RJPNrhmFXDyBLWEbLukg/2d2QkUAHyNLqZT5fG+U8QPjasH/iICoUvr6yrZtorR/fQMia
	tQ7/KzzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29j-00000000ig8-3gTa;
	Fri, 28 Nov 2025 17:21:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29f-00000000ieq-0BR0
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-0000yS-TC; Fri, 28 Nov 2025 18:21:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-002zUr-2H;
	Fri, 28 Nov 2025 18:21:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-000000009CN-2Vts;
	Fri, 28 Nov 2025 18:21:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:03 +0100
Message-ID: <20251128172107.35323-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128172107.35323-1-a.fatoum@pengutronix.de>
References: <20251128172107.35323-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092111_089500_387B354B 
X-CRM114-Status: UNSURE (   8.74  )
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
Subject: [PATCH 3/3] test: arm: qemu-raspi1ap the default multi_v5_v6_defconfig.yaml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows running pytest without --lg-env argument after having built
multi_v5_v6_defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/multi_v5_v6_defconfig.yaml | 1 +
 1 file changed, 1 insertion(+)
 create mode 120000 test/arm/multi_v5_v6_defconfig.yaml

diff --git a/test/arm/multi_v5_v6_defconfig.yaml b/test/arm/multi_v5_v6_defconfig.yaml
new file mode 120000
index 000000000000..5131c0b82c3d
--- /dev/null
+++ b/test/arm/multi_v5_v6_defconfig.yaml
@@ -0,0 +1 @@
+qemu-raspi1ap@multi_v5_v6_defconfig.yaml
\ No newline at end of file
-- 
2.47.3



