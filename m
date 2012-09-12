Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBvQF-0006h7-Vm
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 22:28:40 +0000
Received: by wibhn17 with SMTP id hn17so1978378wib.0
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:28:37 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Thu, 13 Sep 2012 00:28:33 +0200
Message-Id: <1347488914-7460-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1347488914-7460-1-git-send-email-franck.jullien@gmail.com>
References: <1347488914-7460-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] Add OpenRISC Image type
To: barebox@lists.infradead.org

This patch sync the image type list with the kernel in order to add
openrisc support.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 common/image.c  |    2 ++
 include/image.h |    5 +++++
 2 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/common/image.c b/common/image.c
index e7d2242..e02fbe6 100644
--- a/common/image.c
+++ b/common/image.c
@@ -61,6 +61,8 @@ static table_entry_t arch_name[] = {
 	{ IH_ARCH_SPARC64,	"sparc64",	"SPARC 64 Bit",	},
 	{ IH_ARCH_BLACKFIN,	"blackfin",	"Blackfin",	},
 	{ IH_ARCH_AVR32,	"avr32",	"AVR32",	},
+	{ IH_ARCH_NDS32,	"nds32",	"NDS32",	},
+	{ IH_ARCH_OPENRISC,	"or1k",		"OpenRISC 1000",},
 	{ -1,			"",		"",		},
 };
 
diff --git a/include/image.h b/include/image.h
index 027b5f2..5f45b6f 100644
--- a/include/image.h
+++ b/include/image.h
@@ -85,6 +85,9 @@
 #define IH_ARCH_BLACKFIN	16	/* Blackfin	*/
 #define IH_ARCH_AVR32		17	/* AVR32	*/
 #define IH_ARCH_LINUX		18	/* Linux	*/
+#define IH_ARCH_SANDBOX		19	/* Sandbox architecture (test only) */
+#define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
+#define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
 
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
@@ -102,6 +105,8 @@
 #define IH_ARCH IH_ARCH_MICROBLAZE
 #elif defined(__nios2__)
 #define IH_ARCH IH_ARCH_NIOS2
+#elif defined(__OR1K__)
+#define IH_ARCH IH_ARCH_OPENRISC
 #elif defined(__blackfin__)
 #define IH_ARCH IH_ARCH_BLACKFIN
 #elif defined(__avr32__)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
