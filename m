Delivery-date: Thu, 19 Jun 2025 19:12:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSIo0-0090cr-0k
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 19:12:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSIny-0000iF-W4
	for lore@pengutronix.de; Thu, 19 Jun 2025 19:12:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nl6M/cxIZQbW8sZQTnZQCEMcz8BOmJKzVLJFOCeS31A=; b=B+UzMnio2qgEo/a7av76TrR1KW
	+u3mpsWqhTstIVP+95ogefWR8R6gOr0gne1RSmsliSAbf21MG45JaRo7VGh6KGn8NOLAwmdAflGUd
	7RruNftLgOX0SH5UVnkoWg5CBLIsKZCiaJlUHJ+UMohBcU8f8uz1ciKw/DdWADzGiQ+a6LorAhBkA
	P5RjLu83UbVh2RH/3wUy8dICNabTskIpOXPGBUkWWkcgRDXg5kZZsy2OrYoWSVfcsWdmIGR8xOI+o
	CWvgvRlmIWitHCCuznuropAnDZs8eGjvV7vunExaBI0e1OhOt55FjTfSUrHzM43hauM44JPeq0jml
	mYCjrc4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSInX-0000000DiYB-0YOG;
	Thu, 19 Jun 2025 17:11:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHCF-0000000DPYd-4BPF
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 15:29:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uSHCE-0003qT-Rl
	for barebox@lists.infradead.org; Thu, 19 Jun 2025 17:28:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 19 Jun 2025 17:28:57 +0200
Message-Id: <20250619152857.3750132-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_082900_034312_AE22D2C0 
X-CRM114-Status: GOOD (  16.33  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: optee-early: add mx6_start_optee_early helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a i.MX6 specific helper function which covers most of the steps
usually done within the board lowlevel code. All new i.MX6 boards are
encouraged to use this helper to load OP-TEE since the helper validates
that the TZC380 is enabled and setup the TZC380 region properly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/user/optee.rst | 19 ++++++++++++-------
 arch/arm/lib32/optee-early.c | 30 ++++++++++++++++++++++++++++++
 include/tee/optee.h          |  2 ++
 3 files changed, 44 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
index 2729d21d2e44..451f9ad264bb 100644
--- a/Documentation/user/optee.rst
+++ b/Documentation/user/optee.rst
@@ -19,14 +19,19 @@ During the PBL
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
+``int mx6_start_optee_early(void *fdt, void *tee, void *data_location, unsigned
+int data_location_size)`` instead since it validates that the TZASC is running
+and configured as expected by OP-TEE.
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
index 735d829c99fb..a3e2892a3291 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -10,6 +10,8 @@
 #include <tee/optee.h>
 #include <debug_ll.h>
 #include <string.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/tzasc.h>
 
 static jmp_buf tee_buf;
 
@@ -37,3 +39,31 @@ int start_optee_early(void *fdt, void *tee)
 
 	return 0;
 }
+
+int mx6_start_optee_early(void *fdt, void *tee, void *data_location,
+			  unsigned int data_location_size)
+{
+	switch (__imx6_cpu_type()) {
+	case IMX6_CPUTYPE_IMX6D:
+	case IMX6_CPUTYPE_IMX6Q:
+		if (!imx6q_tzc380_is_enabled())
+			panic("TZC380 is not enabled, abort OP-TEE loading\n");
+
+		/* Add early non-secure TZASC region1 to pass DTO */
+		imx6q_tzc380_early_ns_region1();
+
+		/*
+		 * Set the OP-TEE <-> barebox exchange data location to zero.
+		 * This is optional since recent OP-TEE versions perform the
+		 * memset too.
+		 */
+		if (data_location)
+			memset(data_location, 0, data_location_size);
+
+		break;
+	default:
+		panic("Unknown CPU type\n");
+	}
+
+	return start_optee_early(fdt, tee);
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index f52775dab5b4..19d9a20c7cdc 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -54,6 +54,8 @@ static inline int optee_get_membase(u64 *membase)
 #ifdef __PBL__
 
 int start_optee_early(void* fdt, void* tee);
+int mx6_start_optee_early(void *fdt, void *tee, void *data_location,
+			  unsigned int data_location_size);
 
 #endif /* __PBL__ */
 
-- 
2.39.5



