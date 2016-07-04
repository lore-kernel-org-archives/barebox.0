Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK2Rt-0007tP-Hj
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:54:03 +0000
Received: by mail-wm0-x243.google.com with SMTP id a66so21098539wme.2
 for <barebox@lists.infradead.org>; Mon, 04 Jul 2016 04:53:46 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Mon,  4 Jul 2016 13:52:56 +0200
Message-Id: <1467633177-22478-14-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
References: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v5 13/14] uimage: add define for ARM64 architecture
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 common/image.c  | 1 +
 include/image.h | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/common/image.c b/common/image.c
index f3ec071..04cd86b 100644
--- a/common/image.c
+++ b/common/image.c
@@ -59,6 +59,7 @@ static table_entry_t arch_name[] = {
 	{ IH_ARCH_AVR32,	"avr32",	"AVR32",	},
 	{ IH_ARCH_NDS32,	"nds32",	"NDS32",	},
 	{ IH_ARCH_OPENRISC,	"or1k",		"OpenRISC 1000",},
+	{ IH_ARCH_ARM64,	"arm64",	"AArch64",	},
 	{ -1,			"",		"",		},
 };
 
diff --git a/include/image.h b/include/image.h
index 07ab0f1..3e75d49 100644
--- a/include/image.h
+++ b/include/image.h
@@ -84,11 +84,16 @@
 #define IH_ARCH_SANDBOX		19	/* Sandbox architecture (test only) */
 #define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
 #define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
+#define IH_ARCH_ARM64		22	/* ARM64	*/
 
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
 #elif defined(__ARM__)
+#ifdef CONFIG_CPU_64v8
+#define IH_ARCH IH_ARCH_ARM64
+#else
 #define IH_ARCH IH_ARCH_ARM
+#endif
 #elif defined(__I386__) || defined(__x86_64__) || defined(__i386__)
 #define IH_ARCH IH_ARCH_I386
 #elif defined(__mips__)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
