Delivery-date: Mon, 11 Aug 2025 14:30:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfK-009Kj2-1m
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf2-00064N-6O
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aLpCMIddJDRtul3joPrspOBxFvNI0abRTFPdvjIssHs=; b=iz0WNJMI/j3dTbXCrF/ovd6Cfd
	gi3TgFGDFRtUgsdx4cuC7SsZb4R7hSkhR4qIC5B12TubNzxpRj6ig/CQYzy8FR97sjkqdNyr9SH7V
	EEm+v2makUQfTFGFE+0Yuan63u+sCjXKxjuOy0ThxsRpuP3xtc9q9T89KLawroDdwaRQ2eOLzps0v
	I7qMCmj4jZ5TgL+c4t94bMxnLVdlRMUGf6IOx2FeK5tKJ0/aOBxNmrlLClArBdzT2qApyB5i4Gp3U
	bjMFq106zC9DDvgUWrvJedB0J2I6zBIlNfqtCLop0cK95irqmXemhjtbNiB/E3q6fQ08RslPIAusG
	3as6mdtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdw-00000007dvv-37JL;
	Mon, 11 Aug 2025 12:28:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dY6-3h3y
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRde-0004WP-Jx; Mon, 11 Aug 2025 14:28:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:57 +0200
Message-Id: <20250811122824.1667791-18-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_920349_1B590A28 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH 17/44] ARM: cpuinfo: support structio output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The command produces useful information of which we will want to reuse
some in the bfetch command. Support this by supporting structio output.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/cpuinfo.c | 47 ++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 3137b9924fa0..c8435e34fdd8 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -8,6 +8,7 @@
 #include <command.h>
 #include <complete.h>
 #include <memory.h>
+#include <structio.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
 #include <asm/cputype.h>
@@ -201,8 +202,8 @@ static int do_cpuinfo(int argc, char *argv[])
 		architecture = "Unknown";
 	}
 
-	printf("implementer: %s\narchitecture: %s\n",
-			implementer, architecture);
+	stprintf("implementer", "%s", implementer);
+	stprintf("architecture", "%s", architecture);
 
 	if (cpu_arch >= CPU_ARCH_ARMv7) {
 		unsigned int major, minor;
@@ -238,36 +239,38 @@ static int do_cpuinfo(int argc, char *argv[])
 			part = "Cortex-A72";
 			break;
 		default:
-			printf("core: unknown (0x%08lx) r%up%u\n",
-			       mainid, major, minor);
+			stprintf("core", "unknown (0x%08lx) r%up%u",
+				 mainid, major, minor);
 			break;
 		}
 
 		if (part)
-			printf("core: %s r%up%u\n", part, major, minor);
+			stprintf("core", "%s r%up%u", part, major, minor);
 	}
 
 #ifdef CONFIG_CPU_64v8
-	printf("exception level: %u\n", current_el());
+	stprintf_prefix("exception_level", "Exception level: ", "%u", current_el());
 #endif
 
-	if (cache & (1 << 24)) {
-		/* separate I/D cache */
-		printf("I-cache: ");
-		decode_cache(cache & 0xfff);
-		printf("D-cache: ");
-		decode_cache((cache >> 12) & 0xfff);
-	} else {
-		/* unified I/D cache */
-		printf("cache: ");
-		decode_cache(cache & 0xfff);
-	}
+	if (!structio_active()) {
+		if (cache & (1 << 24)) {
+			/* separate I/D cache */
+			printf("I-cache: ");
+			decode_cache(cache & 0xfff);
+			printf("D-cache: ");
+			decode_cache((cache >> 12) & 0xfff);
+		} else {
+			/* unified I/D cache */
+			printf("cache: ");
+			decode_cache(cache & 0xfff);
+		}
 
-	printf("Control register: ");
-	for (i = 0; i < ARRAY_SIZE(crbits); i++)
-		if (cr & (1 << i))
-			printf("%s ", crbits[i]);
-	printf("\n");
+		printf("Control register: ");
+		for (i = 0; i < ARRAY_SIZE(crbits); i++)
+			if (cr & (1 << i))
+				printf("%s ", crbits[i]);
+		printf("\n");
+	}
 
 	return 0;
 }
-- 
2.39.5



