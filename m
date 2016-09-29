Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpjig-0008ED-MZ
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 22:22:24 +0000
Received: by mail-pf0-x242.google.com with SMTP id q2so4080211pfj.0
 for <barebox@lists.infradead.org>; Thu, 29 Sep 2016 15:22:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 29 Sep 2016 15:21:43 -0700
Message-Id: <1475187703-5748-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475187703-5748-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475187703-5748-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] i.MX: Register imx6_fixup_cpus() for MX6Q+ as well
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Register imx6_fixup_cpus() for MX6Q+ as well as for MX6Q and MX6DL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 101a2f6..809584e 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -255,7 +255,8 @@ static int imx6_fixup_cpus(struct device_node *root, void *context)
 
 static int imx6_fixup_cpus_register(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q") &&
+	if (!of_machine_is_compatible("fsl,imx6qp") &&
+	    !of_machine_is_compatible("fsl,imx6q")  &&
 	    !of_machine_is_compatible("fsl,imx6dl"))
 		return 0;
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
