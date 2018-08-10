Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCia-0002M2-FO
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:05:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id f14-v6so4801019pgv.13
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:29 -0700
Message-Id: <20180810190429.10823-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] ARM: i.MX8MQ: Save boot location during initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx8mq.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 1d0bbcfdb..4d00da5f0 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -54,6 +54,8 @@ int imx8mq_init(void)
 	struct arm_smccc_res res;
 	const char *cputypestr;
 
+	imx8_boot_save_loc();
+
 	switch (type) {
 	case IMX8M_CPUTYPE_IMX8MQ:
 		cputypestr = "i.MX8MQ";
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
