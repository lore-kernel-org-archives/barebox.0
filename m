Delivery-date: Mon, 30 Jun 2025 10:06:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X5-00CYeA-1r
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:06:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X4-0006Y4-Sv
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:06:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tGUy3vWnTa6X2b/llz/LgVSvICcyOl1eYZc7M8qTVOE=; b=OIgIfaISIcXtaH01MydCS8XK06
	epDBTPLiDbkXwgwpllwQvDnSuKkCaNgpOXA1ZZtz7XixN3P33QaqpOe4HZMYnlqTV97rZGWRIPkq2
	vds1RAU6VUvN7ZIcoAauXqHuLyl/yKtABqJBHG17ksm34MeEXHGzttQoh+pC3ihsfEcweZKaMB575
	heEXHDckmdve2ZT7HzW7G/g9Wp5PQUwLJV54Cy2DViSs/txaDVUZeTDCS30m1YmBxKjT+Mp3JssFN
	cfhRSZ48RG0GWd391Y8dEmyHTTXNTjw7TsC7km9vB0KgEsdQeewQOVBXiUiD7N5VhXJfv8EMYxBIQ
	RtKd79kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Wa-00000001Z2S-0WsL;
	Mon, 30 Jun 2025 08:06:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9VR-00000001Ykc-2kh1
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:04:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0004re-El; Mon, 30 Jun 2025 10:04:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0064Qh-0n;
	Mon, 30 Jun 2025 10:04:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0a;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-11-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269548; l=4894;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=axj+cARZekyiX+nLIk6VabqQ+FJw2KVxv9GkavjcxjM=;
 b=fpkFkTPfPPWP4u+xBg3b9IPHOn7o+MhMPZ3H/NUmStooGldn7CSMtCRAZQlGmBJYjxsHwGAqh
 HysdMsYnqNuCyalSoZfq6keH+KfI1kOh62ND+tI6msk2p1EDk9ykTU0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010449_736578_A620666F 
X-CRM114-Status: GOOD (  18.09  )
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
Subject: [PATCH v2 11/14] ARM: optee-early: add mx6_start_optee_early
 helper
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
 Documentation/user/optee.rst | 22 +++++++++++++++-------
 arch/arm/lib32/optee-early.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 include/tee/optee.h          |  4 ++++
 3 files changed, 61 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
index 2729d21d2e441c8c9ba8171544ace8f516ceefdf..88e651ddec57b50f1013aafdd8d72b8a73032740 100644
--- a/Documentation/user/optee.rst
+++ b/Documentation/user/optee.rst
@@ -19,14 +19,22 @@ During the PBL
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
+validates that the TZASC not bypassed and is configured as expected by OP-TEE.
+
+Ensure that your OP-TEE is compiled with ``CFG_NS_ENTRY_ADDR`` unset, otherwise
+OP-TEE will not correctly return to barebox after startup. Since OP-TEE in the
+default configuration also modifies the device tree, don't pass the barebox
+internal device tree, instead copy it into a different memory location and pass
+it to OP-TEE afterwards. The modified device tree can then be passed to the
+main barebox start function.
+
+.. note:: Modification of the device tree usually makes it bigger.
+  Some spare space must be left after the end of the device tree to
+  accommodate this.
 
 Before Linux start
 ^^^^^^^^^^^^^^^^^^
diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index c9959b5e41b88a1b91179546bc6e0239809cfb11..ab5d581aa6b6835e8e551762d0b2ce1ffa2b75c4 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -12,6 +12,8 @@
 #include <linux/bug.h>
 #include <debug_ll.h>
 #include <string.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/tzasc.h>
 
 static jmp_buf tee_buf;
 
@@ -41,3 +43,43 @@ int start_optee_early(void *fdt, void *tee)
 
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



