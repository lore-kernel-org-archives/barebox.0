Delivery-date: Fri, 27 Jun 2025 17:10:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiH-00BerB-0H
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:10:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiG-0004tE-A7
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:10:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/fkB9WQXoHXChTPm5WNZL8ohYm5L6Jo6vpG+SuvXO+U=; b=yjliqaFKk54vCIMwnB2vDopq9i
	RQ1gxQsc+QSFnNeTvtEaxwdIUx2OHTFEcYn6Peek+Soui9FVQDh70pzhfI/kE6vSiM4i/3lOh5rBP
	L51+NqP6ZKYprzTbli1Xno/84Pdk0raQOI6VOOIrya+zvK9UDsNfz9UArldbLCKijL5CHc9FDkASO
	gl+qErsUTB/i4yIzIpvEOvHrBRePBBQ6uNs8Q1TVDrLH4ACqitGfQmgpSNyVwaxyI+wrgFY6Ahdhd
	XDxtNBPou9KfUaopyvxtdCees8fHcgIumeQ1gI407pHCpYlu7I7C+5p8CGFpTzn6PeGi4g1xDuqwI
	SHhPYZpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhk-0000000F104-1P7f;
	Fri, 27 Jun 2025 15:09:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAAt-0000000Evk2-4612
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:35:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-0008NG-RW; Fri, 27 Jun 2025 16:35:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-005dIk-27;
	Fri, 27 Jun 2025 16:35:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2T;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-10-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=4723;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3yyqU+0/FYXn/AtfKBKcW2Qah3SS6l1JFRTBZlVOT/g=;
 b=QDcCBsrz4w5YCa8uDgB2j+dD8EObdqUcgt+uox2Tdap1Othd/pYIHUkpkzrq6kCvYD6bew0RG
 jRvkZuFU3NzD78QkZKpbjxtXCWTW0Yppn8Buw6VEMdEgZvZQxkdLeX5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_073533_165697_A3CE1221 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/14] ARM: optee-early: add mx6_start_optee_early helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add a i.MX6 specific helper function which covers most of the steps
usually done within the board lowlevel code. All new i.MX6 boards are
encouraged to use this helper to load OP-TEE since the helper validates
that the TZC380 is enabled and setup the TZC380 region properly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/optee.rst | 18 +++++++++++-------
 arch/arm/lib32/optee-early.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 include/tee/optee.h          |  4 ++++
 3 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
index 2729d21d2e441c8c9ba8171544ace8f516ceefdf..70db754bc4c5ca892c57383ec33097c700806d88 100644
--- a/Documentation/user/optee.rst
+++ b/Documentation/user/optee.rst
@@ -19,14 +19,18 @@ During the PBL
 ^^^^^^^^^^^^^^
 
 To start OP-TEE during the lowlevel initialization of your board in the ``PBL``,
-enable the ``CONFIG_PBL_OPTEE`` configuration variable. your board should then
+enable the ``CONFIG_PBL_OPTEE`` configuration variable. Your board should then
 call the function ``start_optee_early(void* tee, void* fdt)`` with a valid tee
-and FDT. Ensure that your OP-TEE is compiled with ``CFG_NS_ENTRY_ADDR`` unset,
-otherwise OP-TEE will not correctly return to barebox after startup.
-Since OP-TEE in the default configuration also modifies the device tree, don't
-pass the barebox internal device tree, instead copy it into a different memory
-location and pass it to OP-TEE afterwards.
-The modified device tree can then be passed to the main barebox start function.
+and FDT. If you're running on an i.MX6 platform your board code should call
+``imx6q_start_optee_early()`` or ``imx6ul_start_optee_early()`` instead since it
+validates that the TZASC not bypassed and configured as expected by OP-TEE.
+
+Ensure that your OP-TEE is compiled with ``CFG_NS_ENTRY_ADDR`` unset, otherwise
+OP-TEE will not correctly return to barebox after startup. Since OP-TEE in the
+default configuration also modifies the device tree, don't pass the barebox
+internal device tree, instead copy it into a different memory location and pass
+it to OP-TEE afterwards. The modified device tree can then be passed to the
+main barebox start function.
 
 Before Linux start
 ^^^^^^^^^^^^^^^^^^
diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 735d829c99fb533ccc9e865430ea167bfd2f0cc2..6f842bdd2010582c61a8e88c9f644e6ae93bcbf4 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -10,6 +10,8 @@
 #include <tee/optee.h>
 #include <debug_ll.h>
 #include <string.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/tzasc.h>
 
 static jmp_buf tee_buf;
 
@@ -37,3 +39,43 @@ int start_optee_early(void *fdt, void *tee)
 
 	return 0;
 }
+
+int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
+			    unsigned int data_location_size)
+{
+	if (imx6q_tzc380_is_bypassed())
+		panic("TZC380 is bypassed, abort OP-TEE loading\n");
+
+	/* Add early non-secure TZASC region1 to pass DTO */
+	imx6q_tzc380_early_ns_region1();
+
+	/*
+	 * Set the OP-TEE <-> barebox exchange data location to zero.
+	 * This is optional since recent OP-TEE versions perform the
+	 * memset too.
+	 */
+	if (data_location)
+		memset(data_location, 0, data_location_size);
+
+	return start_optee_early(fdt, tee);
+}
+
+int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
+			     unsigned int data_location_size)
+{
+	if (imx6ul_tzc380_is_bypassed())
+		panic("TZC380 is bypassed, abort OP-TEE loading\n");
+
+	/* Add early non-secure TZASC region1 to pass DTO */
+	imx6ul_tzc380_early_ns_region1();
+
+	/*
+	 * Set the OP-TEE <-> barebox exchange data location to zero.
+	 * This is optional since recent OP-TEE versions perform the
+	 * memset too.
+	 */
+	if (data_location)
+		memset(data_location, 0, data_location_size);
+
+	return start_optee_early(fdt, tee);
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index f52775dab5b40f306075bc2d302938c584a6f5ec..943dbb8fdab6a11e25fb27e3487fe6fdec59a182 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -54,6 +54,10 @@ static inline int optee_get_membase(u64 *membase)
 #ifdef __PBL__
 
 int start_optee_early(void* fdt, void* tee);
+int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
+			    unsigned int data_location_size);
+int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
+			     unsigned int data_location_size);
 
 #endif /* __PBL__ */
 

-- 
2.39.5



