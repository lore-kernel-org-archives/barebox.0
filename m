Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PK9-0001dC-0t
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:50:55 +0000
Received: by mail-pf0-x243.google.com with SMTP id z9so1706688pfe.6
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:50:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:21 -0700
Message-Id: <20180414175024.9962-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175024.9962-1-andrew.smirnov@gmail.com>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/10] ARM: i.MX: Print "revision unknown" if that is the case
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
index b7465875e..fb1160de9 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -31,7 +31,10 @@ void imx_set_silicon_revision(const char *soc, int revision)
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
