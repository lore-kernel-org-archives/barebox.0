Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006g4-Dp
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:03 +0000
Received: by mail-pg0-x244.google.com with SMTP id j11so4680606pgf.2
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:35 -0700
Message-Id: <20180421010538.16488-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/10] ARM: i.MX: Print "revision unknown" if that is the
 case
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Printing "revision 16.16" if i.MX SoC's revision is unknown is a bit
confusing so modify the code to actually say "revision unknown" in
such a case.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 7dee1433b..32d8e11a7 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -30,7 +30,10 @@ void imx_set_silicon_revision(const char *soc, int revision)
 {
 	__imx_silicon_revision = revision;
 
-	pr_info("detected %s revision %d.%d\n", soc,
+	if (revision == IMX_CHIP_REV_UNKNOWN)
+		pr_info("detected %s revision unknown\n", soc);
+	else
+		pr_info("detected %s revision %d.%d\n", soc,
 			(revision >> 4) & 0xf,
 			revision & 0xf);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
