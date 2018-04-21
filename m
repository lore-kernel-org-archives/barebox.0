Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006g1-Dy
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:03 +0000
Received: by mail-pg0-x244.google.com with SMTP id i6so4680231pgv.3
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:34 -0700
Message-Id: <20180421010538.16488-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/10] ARM: i.MX: Log detected reset reason
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Log detected reset reason as well as raw value of SRSR for better
clarity.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 29dad9a41..7dee1433b 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -179,4 +179,7 @@ void imx_set_reset_reason(void __iomem *srsr,
 	reset_source_set_priority(type,
 				  RESET_SOURCE_DEFAULT_PRIORITY + 1);
 	reset_source_set_instance(type, instance);
+
+	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
+		reset_source_name(), reg);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
