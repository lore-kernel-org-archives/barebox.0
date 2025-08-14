Delivery-date: Thu, 14 Aug 2025 22:28:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYx-000cfj-0I
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYv-0001Y8-S6
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+2S5C+BsyBx6LVv+DRJ+32XTyhjpgQPtiEaYRmpnPY=; b=eK6UV6l7tA+o01BBz9XHs9Y5wq
	ylR6cUS3uREdlqMm3OvGWtcgvlUiAa9XG1yynCFDCppycv4JjcezUo9YbxG4MTG1gw+EPEuUsfqKQ
	HmypKxkrLC4BDErxGHk7PX4oUmXHquPWUv+JB8RZ8xZchohSgCa+d1CM7dRwDsik9xZrIpQzYbFEE
	5A0pRPGip/4CywnkGvMHWXoDEPdlkCEP1FdWmCxcYdX+HUCuzEbBmxIjO8v2qgPR76apTyIFU9OyH
	fGlCWKVBbGoHub/VDIUM0XQTtWJ4PFsmkiF4alk/u6Hm71mJkVR6P69byMzTT+HFrpc8QWCNn0EJ0
	0CXIPGaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYW-00000000VAs-12lC;
	Thu, 14 Aug 2025 20:28:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYS-00000000V7w-0i6Q
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYQ-00019L-U5; Thu, 14 Aug 2025 22:28:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:28:01 +0200
Message-Id: <20250814202805.354827-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132808_204714_2C62E934 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] RISC-V: cpuinfo: enable structured I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will allow us to easily consume the information in the bfetch
command.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/cpuinfo.c | 43 ++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/lib/cpuinfo.c b/arch/riscv/lib/cpuinfo.c
index 2d9cee2a6270..f984fd68a9e8 100644
--- a/arch/riscv/lib/cpuinfo.c
+++ b/arch/riscv/lib/cpuinfo.c
@@ -3,14 +3,15 @@
 #include <command.h>
 #include <asm/sbi.h>
 #include <asm/system.h>
+#include <structio.h>
 
 static const char *implementations[] = {
-	[0] = "\"Berkeley Boot Loader (BBL)\" ",
-	[1] = "\"OpenSBI\" ",
-	[2] = "\"Xvisor\" ",
-	[3] = "\"KVM\" ",
-	[4] = "\"RustSBI\" ",
-	[5] = "\"Diosix\" ",
+	[0] = "Berkeley Boot Loader (BBL)",
+	[1] = "OpenSBI",
+	[2] = "Xvisor",
+	[3] = "KVM",
+	[4] = "RustSBI",
+	[5] = "Diosix",
 };
 
 static const char *modes[] = {
@@ -22,22 +23,22 @@ static const char *modes[] = {
 
 static int do_cpuinfo(int argc, char *argv[])
 {
-	const char *implementation = "";
+	const char *implementation = NULL;
 	enum riscv_mode mode;
 	unsigned long impid;
 
 	mode = riscv_mode() & RISCV_MODE_MASK;
 
-	printf("%s barebox for %s-Mode\n",
-	       IS_ENABLED(CONFIG_ARCH_RV64I) ? "RV64I" : "RV32I",
-	       modes[mode]);
+	stprintf("Architecture", "%s",
+		 IS_ENABLED(CONFIG_ARCH_RV64I) ? "RV64I" : "RV32I");
+	stprintf("Mode", "%s", modes[mode]);
 
 	switch (mode) {
 	case RISCV_S_MODE:
-		printf("Hart ID=%lu\n", riscv_hartid());
+		stprintf("Hart ID", "%lu", riscv_hartid());
 		if (!IS_ENABLED(CONFIG_RISCV_SBI))
 			break;
-		printf("SBI specification v%lu.%lu detected\n",
+		stprintf("SBI version", "v%lu.%lu",
 		       sbi_major_version(), sbi_minor_version());
 
 		if (sbi_spec_is_0_1())
@@ -47,12 +48,20 @@ static int do_cpuinfo(int argc, char *argv[])
 		if (impid < ARRAY_SIZE(implementations))
 			implementation = implementations[impid];
 
-		printf("SBI implementation ID=0x%lx %sVersion=0x%lx\n",
-		       impid, implementation, __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION));
+		stprintf("SBI implementation ID", "0x%lx", impid);
+		if (implementation)
+			stprintf("SBI implementation name", "%s", implementation);
 
-		printf("SBI Machine VENDORID=0x%lx ARCHID=0x%lx MIMPID=0x%lx\n",
-		       __sbi_base_ecall(SBI_EXT_BASE_GET_MVENDORID),
-		       __sbi_base_ecall(SBI_EXT_BASE_GET_MARCHID),
+		stprintf("SBI implementation version", "0x%lx",
+			 __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION));
+
+		stprintf("SBI machine VENDORID", "0x%lx",
+			 __sbi_base_ecall(SBI_EXT_BASE_GET_MVENDORID));
+
+		stprintf("SBI machine ARCHID", "0x%lx",
+			 __sbi_base_ecall(SBI_EXT_BASE_GET_MARCHID));
+
+		stprintf("SBI machine MIMPID", "0x%lx",
 		       __sbi_base_ecall(SBI_EXT_BASE_GET_MIMPID));
 		break;
 	default:
-- 
2.39.5



