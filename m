Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUP-0003Sr-Uo
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:29 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676226wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:21 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:51 +0100
Message-Id: <4d701d49.9009d80a.2cd3.5e9a@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 37/54] Add arch/nios2/include/asm/linkage.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/linkage.h

---
 arch/nios2/include/asm/linkage.h |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/linkage.h

diff --git a/arch/nios2/include/asm/linkage.h b/arch/nios2/include/asm/linkage.h
new file mode 100644
index 0000000..b9bbc66
--- /dev/null
+++ b/arch/nios2/include/asm/linkage.h
@@ -0,0 +1,7 @@
+#ifndef _ASM_NIOS2_LINKAGE_H
+#define _ASM_NIOS2_LINKAGE_H
+
+#define __ALIGN .align 4
+#define __ALIGN_STR ".align 4"
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
