Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQmr-0002bC-2e
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 12:23:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id p10so14471027ljn.1
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 05:23:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  6 Apr 2020 15:23:13 +0300
Message-Id: <20200406122313.1476-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] uimage: add define for RISC-V architecture
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/image.c  | 1 +
 include/image.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/common/image.c b/common/image.c
index 04cd86bf9a..15bef96826 100644
--- a/common/image.c
+++ b/common/image.c
@@ -60,6 +60,7 @@ static table_entry_t arch_name[] = {
 	{ IH_ARCH_NDS32,	"nds32",	"NDS32",	},
 	{ IH_ARCH_OPENRISC,	"or1k",		"OpenRISC 1000",},
 	{ IH_ARCH_ARM64,	"arm64",	"AArch64",	},
+	{ IH_ARCH_RISCV,	"riscv",	"RISC-V",	},
 	{ -1,			"",		"",		},
 };
 
diff --git a/include/image.h b/include/image.h
index 18344dfef9..7da871e8cb 100644
--- a/include/image.h
+++ b/include/image.h
@@ -75,6 +75,7 @@
 #define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
 #define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
 #define IH_ARCH_ARM64		22	/* ARM64	*/
+#define IH_ARCH_RISCV		23	/* RISC-V	*/
 
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
@@ -104,6 +105,8 @@
 #define IH_ARCH IH_ARCH_AVR32
 #elif defined(CONFIG_LINUX)
 #define IH_ARCH IH_ARCH_LINUX
+#elif defined(__riscv)
+#define IH_ARCH IH_ARCH_RISCV
 #endif
 
 /*
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
