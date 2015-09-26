Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZfiZY-0007Mt-23
 for barebox@lists.infradead.org; Sat, 26 Sep 2015 06:03:00 +0000
Received: by padhy16 with SMTP id hy16so124860630pad.1
 for <barebox@lists.infradead.org>; Fri, 25 Sep 2015 23:02:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 Sep 2015 23:02:18 -0700
Message-Id: <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] arm/cpu/start.c: Avoid copying device-tree when possible
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In case of non-relocatable image device-tree blob should already be
preloaded into memory as a part of Barebox binary upload, so there is
no need to 'memcpy' it again

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 7ffde7c..c461a73 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -107,6 +107,15 @@ static noinline __noreturn void __start(unsigned long membase,

 		switch (get_any_boarddata_magic(boarddata)) {
 		case FDT_MAGIC:
+			if (!IS_ENABLED(CONFIG_RELOCATABLE)) {
+				/*
+				  If Barebox is not relocatable
+				  there's no need to move data around
+				 */
+				barebox_boot_dtb = boarddata;
+				break;
+			}
+
 			totalsize = get_unaligned_be32(boarddata + 4);
 			var = &barebox_boot_dtb;
 			name = "DTB";
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
