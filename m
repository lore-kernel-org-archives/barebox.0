Delivery-date: Tue, 28 Mar 2023 09:42:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3y0-00HMg4-G7
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3y0-0001YR-8H
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BjkLGuEttXmZF1ZYQYvneoH20Mqxos304NNnbrNE+c0=; b=E4dP2Uj/gZze8Kwu/foIMHheJa
	myaWBw1DVv1ZzbIPlDdLlNpsON4ojBsxPu0wGlk7I9Jw8OAeV0SzFDrQ4h6tyzubikLejPmFUL/bS
	uz5scYdHb3WzuC+fYMzs3UVTUmoC9IKgl4RjmYstP/bV4B9mYniH3Z0Rvgx42JTvbJRriepvBMrh3
	oO49qtjSD5ZnW40rEj4QaC4vNdflZVBgh+/KIhSA3OUCjNFwIieN9hU0QZfdCytJR6yeHds7oj3GI
	yVqqBDoGHKhO8e6tQPoSTVugfD8F3cPTG6rcDyXRjFvJmiL38SGQ3mJJyVrr4Urz79Zz3hii8B/Ka
	t2fQofIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wj-00DUxZ-0n;
	Tue, 28 Mar 2023 07:40:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUux-0N
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-00017f-CP; Tue, 28 Mar 2023 09:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wc-007Fvm-Nz; Tue, 28 Mar 2023 09:40:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xm-N4; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:34 +0200
Message-Id: <20230328074037.1202993-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_150829_8E18EE3F 
X-CRM114-Status: GOOD (  13.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] ARM: Rockchip: Add rk3568 specific barebox entry function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a rk3568 specific barebox entry function to simplify board
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 19 +++++++++++++++++++
 include/mach/rockchip/atf.h  |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 93025faf68..9735cb8ef3 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -5,6 +5,9 @@
 #include <mach/rockchip/atf.h>
 #include <elf.h>
 #include <asm/atf_common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/dmc.h>
+#include <mach/rockchip/rockchip.h>
 
 static unsigned long load_elf64_image_phdr(const void *elf)
 {
@@ -69,3 +72,19 @@ void rk3568_atf_load_bl31(void *fdt)
 {
 	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_op_tee_bin, fdt);
 }
+
+void __noreturn rk3568_barebox_entry(void *fdt)
+{
+	unsigned long membase, memsize;
+
+	membase = RK3568_DRAM_BOTTOM;
+	memsize = rk3568_ram0_size() - RK3568_DRAM_BOTTOM;
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
+	}
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index e5d55af3d7..e1e68825d1 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -28,4 +28,6 @@ static inline void rk3568_atf_load_bl31(void *fdt) { }
 #endif
 #endif
 
+void __noreturn rk3568_barebox_entry(void *fdt);
+
 #endif /* __MACH_ATF_H */
-- 
2.39.2



