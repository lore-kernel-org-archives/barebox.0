Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvE-0005sl-3W
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w9so1461977pjh.1
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:00 -0700
Message-Id: <20200331184722.22707-2-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/23] ARM: zii-common: Gate rdu_i210_invm() call with
 CONFIG_PCI_IMX6
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's no reason to have rdu_i210_invm() inicalli if CONFIG_PCI_IMX6
is not selected. Add appropriate ifdef to handle that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-common/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 7bd3a6cab..08e2f8b9b 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -104,6 +104,8 @@ static int rdu_networkconfig(void)
 }
 late_initcall(rdu_networkconfig);
 
+#ifdef CONFIG_PCI_IMX6
+
 #define I210_CFGWORD_PCIID_157B		0x157b1a11
 static int rdu_i210_invm(void)
 {
@@ -136,3 +138,5 @@ static int rdu_i210_invm(void)
 	return 0;
 }
 late_initcall(rdu_i210_invm);
+
+#endif
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
