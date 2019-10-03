Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1K0-0007aq-UT
 for barebox@lists.infradead.org; Thu, 03 Oct 2019 13:39:10 +0000
Received: from router.tkernel.org (unknown [59.35.36.150])
 by esmtp4.qq.com (ESMTP) with SMTP id 0
 for <barebox@lists.infradead.org>; Thu, 03 Oct 2019 21:38:05 +0800 (CST)
Date: Thu, 3 Oct 2019 21:38:04 +0800
From: duhuanpeng <iu87m888m@qq.com>
Message-ID: <20191003133804.GA19263@router.tkernel.org>+DE39D1E20C6B8A18
References: <20191003122624.GA12292@router.tkernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003122624.GA12292@router.tkernel.org>
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
Subject: Re: compile error report: CONFIG_CONSOLE_SIMPLE=y
To: barebox@lists.infradead.org

From 13cf76cfb965abac9433447c71f46d6c7abb0c50 Mon Sep 17 00:00:00 2001
From: DU HUANPENG <u74147@gmail.com>
Date: Thu, 3 Oct 2019 21:27:40 +0800
Subject: [PATCH] fix compile error when set CONFIG_CONSOLE_SIMPLE=y

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 common/console_simple.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/common/console_simple.c b/common/console_simple.c
index 385da2f..010e0b3 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -65,6 +65,9 @@ void console_flush(void)
 EXPORT_SYMBOL(console_flush);
 
 #ifndef ARCH_HAS_CTRLC
+void ctrlc_handled(void)
+{
+}
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
@@ -73,6 +76,15 @@ int ctrlc (void)
 	return 0;
 }
 EXPORT_SYMBOL(ctrlc);
+
+void console_ctrlc_allow(void)
+{
+}
+
+void console_ctrlc_forbid(void)
+{
+}
+
 #endif /* ARCH_HAS_CTRC */
 
 int console_register(struct console_device *newcdev)
-- 
2.7.4





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
