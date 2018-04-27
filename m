Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBvyr-0001uQ-Bm
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:31:38 +0000
Received: by mail-pf0-x244.google.com with SMTP id q22so619043pff.11
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:31:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:31:05 -0700
Message-Id: <20180427053105.9874-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: VFxxx: Recort cpu boot source as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/vf610.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
index df8cfcd6b..3ac7c356f 100644
--- a/arch/arm/mach-imx/vf610.c
+++ b/arch/arm/mach-imx/vf610.c
@@ -35,6 +35,8 @@ int vf610_init(void)
 	const char *cputypestr;
 	void __iomem *src = IOMEM(VF610_SRC_BASE_ADDR);
 
+	vf610_boot_save_loc();
+
 	switch (vf610_cpu_type()) {
 	case VF610_CPUTYPE_VF610:
 		cputypestr = "VF610";
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
