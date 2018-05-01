Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDP4m-0005EN-54
 for barebox@lists.infradead.org; Tue, 01 May 2018 06:47:49 +0000
Received: by mail-pf0-x244.google.com with SMTP id a11so8560395pfn.9
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2018 23:47:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 30 Apr 2018 23:47:14 -0700
Message-Id: <20180501064714.11780-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] ARM: VFxxx: Record cpu boot source as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Same as original patch, but with fixed subject line.

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
