Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6sy-0003gL-Mx
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:25 +0000
Received: by mail-pf0-x231.google.com with SMTP id v9-v6so3915811pff.9
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:52 -0700
Message-Id: <20180630034900.3324-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/11] ARM: i.MX8MQ: Configure cntfrq only in EL3
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We only can (and should only need to) configure cntfrq when running in
EL3 and executing this code in any other exception level will result
in exception.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index f3246e437..dbcf4fa59 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -62,12 +62,14 @@ static void imx8mq_silicon_revision(void)
 
 static int imx8mq_init_syscnt_frequency(void)
 {
-	void __iomem *syscnt = IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR);
-	/*
-	 * Update with accurate clock frequency
-	 */
-	set_cntfrq(syscnt_get_cntfrq(syscnt));
-	syscnt_enable(syscnt);
+	if (current_el() == 3) {
+		void __iomem *syscnt = IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR);
+		/*
+		 * Update with accurate clock frequency
+		 */
+		set_cntfrq(syscnt_get_cntfrq(syscnt));
+		syscnt_enable(syscnt);
+	}
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
