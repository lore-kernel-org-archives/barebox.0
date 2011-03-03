Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUZ-0003Sr-UF
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:40 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676226wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:31 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:59:05 +0100
Message-Id: <4d701d53.9009d80a.2cd3.5eaa@mx.google.com>
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
Subject: [PATCH 51/54] Add arch/nios2/include/asm/swab.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/swab.h

---
 arch/nios2/include/asm/swab.h |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/swab.h

diff --git a/arch/nios2/include/asm/swab.h b/arch/nios2/include/asm/swab.h
new file mode 100644
index 0000000..63fd695
--- /dev/null
+++ b/arch/nios2/include/asm/swab.h
@@ -0,0 +1,4 @@
+#ifndef _NIOS2_SWAB_H
+#define _NIOS2_SWAB_H
+
+#endif				/* _NIOS2_SWAB_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
