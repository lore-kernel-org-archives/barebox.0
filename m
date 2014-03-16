Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBRH-0003QX-DQ
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:21 +0000
Received: by mail-lb0-f174.google.com with SMTP id u14so2949504lbd.5
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:18 +0400
Message-Id: <1394977701-5889-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 07/10] ARM: davinci: add documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-arm.dox                  | 2 ++
 arch/arm/mach-davinci/mach-davinci.dox | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/mach-arm.dox b/arch/arm/mach-arm.dox
index 758df3f..1d2de48 100644
--- a/arch/arm/mach-arm.dox
+++ b/arch/arm/mach-arm.dox
@@ -54,6 +54,8 @@ For details on specific architectures:
 
 @subsection mach_arm_omap_info OMAP CPUs
 
+@li @subpage dev_davinci_arch
+
 @li @subpage dev_omap_arch
 
 @subsection mach_arm_s3c24xx_info S3C24XX CPUs
diff --git a/arch/arm/mach-davinci/mach-davinci.dox b/arch/arm/mach-davinci/mach-davinci.dox
new file mode 100644
index 0000000..f0f3a92
--- /dev/null
+++ b/arch/arm/mach-davinci/mach-davinci.dox
@@ -0,0 +1,5 @@
+/** @page dev_davinci_arch TI DaVinci in barebox
+
+@section davinci_boards DaVinci-based boards
+
+*/
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
