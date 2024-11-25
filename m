Delivery-date: Mon, 25 Nov 2024 16:13:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalq-000FW2-2t
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalq-0007e1-6Z
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=83Loa1f3RFiJWoSlQxfpOuP1Ruf9yJcSnttrd9nS764=; b=TBrjNAi2RuNwj5oNmtXxxifNnj
	DSxt2lAlhy3N2b4Lge8KyKb8dg3fnlN1JxftbJPPJ7G9T4Uc3IkA6uRMi0c17ts6Q5q8z6DEA86Jg
	HFevo+4y6megLUnuWXvmV1T+f8IBOZVhzopRXY5mG9fmsI7+3vdIkG21hryINZg0kGg4nsxXqBjpG
	kp8rTwM1cu5TZeUpY94NVPWzHXIPWmjrV0bqZFptH9DX0c2PnVPNhKcUbMW1L0LwJjcDqdDPG1TNG
	g+UdhLYpkJmgByV3gnGYNI4k0268dRLcqXGhUo8dy/Of8xIWGwuOIO9JCVBkrG52W0lV/jObkKeDH
	NnAYA+Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalO-00000008PeQ-3vQh;
	Mon, 25 Nov 2024 15:12:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008Pb4-1Tau
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalL-0007CU-1T; Mon, 25 Nov 2024 16:12:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0006MX-0C;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-0P;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:15 +0100
Message-Id: <20241125151228.341441-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_395764_7DC5D022 
X-CRM114-Status: GOOD (  11.02  )
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
Subject: [PATCH v2 03/16] pbl: define IN_PBL & IN_PROPER macros globally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we define the macro __PBL__ globally for all PBL files, files that
want to avoid use of #ifdef must explicitly include <pbl.h> to get the
IN_PBL macro definition. Let's add an IN_PROPER macro that's the inverse
of IN_PBL and in preparation for adding IN_PBL to a lot more places,
let's move this definition into <linux/kconfig.h>, which is always
included and thus the macro becomes available globally everywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kconfig.h | 8 ++++++++
 include/pbl.h           | 6 ------
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index 58f68adbbadf..4e9c77b964a7 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -33,4 +33,12 @@
  */
 #define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
 
+#ifdef __PBL__
+#define IN_PBL		1
+#define IN_PROPER	0
+#else
+#define IN_PBL		0
+#define IN_PROPER	1
+#endif
+
 #endif /* __LINUX_KCONFIG_H */
diff --git a/include/pbl.h b/include/pbl.h
index 0633e340bef3..abac3458593a 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -6,12 +6,6 @@
 #ifndef __PBL_H__
 #define __PBL_H__
 
-#ifdef __PBL__
-#define IN_PBL	1
-#else
-#define IN_PBL	0
-#endif
-
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
-- 
2.39.5



