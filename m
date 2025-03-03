Delivery-date: Mon, 03 Mar 2025 10:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gZ-009Goh-1R
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gX-0004DA-L6
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=opbRrkPiZ6rj2cWhruKaJCzGyWY3t9HPM6JtPYKn6P4=; b=KfUa8enzL/7Vb5IYOfSED7PhS1
	24rglGSdS0dPNXiqzw+ODtOiydxLypJWFcdVR8gT0twiwNC/7BRgh+okFb5DJJKRXU5b+TsvV9RUF
	v4vcVfdQjhbfDd958MiGIphGIGYC+JbiDeYrWSv+8LbEeR/xvu5au1EXc+4++cdIcgDVMxOhntL/V
	mgYLvLoMC0i8idy6Ei/VtIWyq66Nz5/u1FCwwKsojqQQmYP88g2rSyvSUeTGLQOzHmL80PwT/y9vq
	Yvpak8DgozI88MxM1aAqKw3e5TKvDQN3PPrsQXGxWD6voYJKShbzD6UEhCJ21rl7ByQUGjYpVh1PV
	yY2UsLpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g2-000000002pJ-2UGI;
	Mon, 03 Mar 2025 09:01:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e0-000000002Ot-2g50
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1dy-0003IF-2R; Mon, 03 Mar 2025 09:59:22 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-1-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_005924_678072_2D5F21BC 
X-CRM114-Status: GOOD (  11.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: SoCFPGA: move wait_on_timeout to generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to use the __wait_on_timeout macro in more places, move it to
the generic socfpga header.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 16 ----------------
 include/mach/socfpga/generic.h        | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index afec55c33a278f7aa7c13d16557881a5e13f38f9..fb87135ca94a1fd12992bc8e7fb9d1725831aad6 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -16,22 +16,6 @@
 #include <mach/socfpga/generic.h>
 #include <linux/sizes.h>
 
-#define __wait_on_timeout(timeout, condition) \
-({								\
-	int __ret = 0;						\
-	int __timeout = timeout;				\
-								\
-	while ((condition)) {					\
-		if (__timeout-- < 0) {				\
-			__ret = -ETIMEDOUT;			\
-			break;					\
-		}						\
-		arria10_kick_l4wd0();                           \
-                __udelay(1);                                    \
-	}							\
-	__ret;							\
-})
-
 int a10_update_bits(unsigned int reg, unsigned int mask,
 		    unsigned int val)
 {
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 40224897c1d2e05b934cd49963ac4ddeaeb28a25..9891dbe4fe1016ce0732d635fdd06ae7add16ac3 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -106,6 +106,22 @@ static inline void __udelay(unsigned us)
 	for (i = 0; i < us * 3; i++);
 }
 
+#define __wait_on_timeout(timeout, condition) \
+({								\
+	int __ret = 0;						\
+	int __timeout = timeout;				\
+								\
+	while ((condition)) {					\
+		if (__timeout-- < 0) {				\
+			__ret = -ETIMEDOUT;			\
+			break;					\
+		}						\
+		arria10_kick_l4wd0();                           \
+		__udelay(1);                                    \
+	}							\
+	__ret;							\
+})
+
 struct socfpga_barebox_part {
 	unsigned int nor_offset;
 	unsigned int nor_size;

-- 
2.45.2



