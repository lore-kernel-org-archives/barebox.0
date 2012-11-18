Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4xX-0001hA-2c
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 13:30:51 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:55724 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ta4xT-0003fp-2a
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 08:30:47 -0500
Date: Sun, 18 Nov 2012 08:30:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211180828470.17933@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mach-imx: Comment typo fix, "enviroment" -> "environment"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


A couple trivial spelling fixes.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i thought i'd sent this in already but don't see it in outbox so
just playing it safe.

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index cdddbe5..ae7c48b 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -77,7 +77,7 @@ static const enum imx_bootsource locations[4][4] = {
 };

 /*
- * Saves the boot source media into the $barebox_loc enviroment variable
+ * Saves the boot source media into the $barebox_loc environment variable
  *
  * This information is useful for barebox init scripts as we can then easily
  * use a kernel image stored on the same media that we launch barebox with
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index f5a867b..4b0786b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -75,7 +75,7 @@ static int imx51_init(void)
 postcore_initcall(imx51_init);

 /*
- * Saves the boot source media into the $barebox_loc enviroment variable
+ * Saves the boot source media into the $barebox_loc environment variable
  *
  * This information is useful for barebox init scripts as we can then easily
  * use a kernel image stored on the same media that we launch barebox with
-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
