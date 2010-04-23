Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5Env-0000QX-TT
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 09:04:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Apr 2010 11:03:54 +0200
Message-Id: <1272013443-29196-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/14] fix _update scripts
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/a9m2410/env/bin/_update                |    2 +-
 board/a9m2440/env/bin/_update                |    2 +-
 board/at91sam9260ek/env/bin/_update          |    2 +-
 board/at91sam9263ek/env/bin/_update          |    2 +-
 board/eukrea_cpuimx27/env/bin/_update        |    2 +-
 board/freescale-mx25-3-stack/env/bin/_update |    2 +-
 board/freescale-mx35-3-stack/env/bin/_update |    2 +-
 board/imx27ads/env/bin/_update               |    2 +-
 board/ipe337/env/bin/_update                 |    2 +-
 board/kp_ukd_r1_num/env/bin/_update          |    2 +-
 board/mmccpu/env/bin/_update                 |    2 +-
 board/pcm037/env/bin/_update                 |    2 +-
 board/pcm038/env/bin/_update                 |    2 +-
 board/pcm043/env/bin/_update                 |    2 +-
 board/phycard-i.MX27/env/bin/_update         |    2 +-
 board/phycore_mcf54xx/env/bin/_update        |    2 +-
 board/pm9263/env/bin/_update                 |    2 +-
 17 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/board/a9m2410/env/bin/_update b/board/a9m2410/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/a9m2410/env/bin/_update
+++ b/board/a9m2410/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/a9m2440/env/bin/_update b/board/a9m2440/env/bin/_update
index e76eac9..b10682e 100644
--- a/board/a9m2440/env/bin/_update
+++ b/board/a9m2440/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/at91sam9260ek/env/bin/_update b/board/at91sam9260ek/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/at91sam9260ek/env/bin/_update
+++ b/board/at91sam9260ek/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/at91sam9263ek/env/bin/_update b/board/at91sam9263ek/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/at91sam9263ek/env/bin/_update
+++ b/board/at91sam9263ek/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/eukrea_cpuimx27/env/bin/_update b/board/eukrea_cpuimx27/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/eukrea_cpuimx27/env/bin/_update
+++ b/board/eukrea_cpuimx27/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/freescale-mx25-3-stack/env/bin/_update b/board/freescale-mx25-3-stack/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/freescale-mx25-3-stack/env/bin/_update
+++ b/board/freescale-mx25-3-stack/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/freescale-mx35-3-stack/env/bin/_update b/board/freescale-mx35-3-stack/env/bin/_update
index 4f0839f..ddd6b84 100644
--- a/board/freescale-mx35-3-stack/env/bin/_update
+++ b/board/freescale-mx35-3-stack/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/imx27ads/env/bin/_update b/board/imx27ads/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/imx27ads/env/bin/_update
+++ b/board/imx27ads/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/ipe337/env/bin/_update b/board/ipe337/env/bin/_update
index 124e285..5419ece 100644
--- a/board/ipe337/env/bin/_update
+++ b/board/ipe337/env/bin/_update
@@ -9,7 +9,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/kp_ukd_r1_num/env/bin/_update b/board/kp_ukd_r1_num/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/kp_ukd_r1_num/env/bin/_update
+++ b/board/kp_ukd_r1_num/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/mmccpu/env/bin/_update b/board/mmccpu/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/mmccpu/env/bin/_update
+++ b/board/mmccpu/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/pcm037/env/bin/_update b/board/pcm037/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/pcm037/env/bin/_update
+++ b/board/pcm037/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/pcm038/env/bin/_update b/board/pcm038/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/pcm038/env/bin/_update
+++ b/board/pcm038/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/pcm043/env/bin/_update b/board/pcm043/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/pcm043/env/bin/_update
+++ b/board/pcm043/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/phycard-i.MX27/env/bin/_update b/board/phycard-i.MX27/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/phycard-i.MX27/env/bin/_update
+++ b/board/phycard-i.MX27/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/phycore_mcf54xx/env/bin/_update b/board/phycore_mcf54xx/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/phycore_mcf54xx/env/bin/_update
+++ b/board/phycore_mcf54xx/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
diff --git a/board/pm9263/env/bin/_update b/board/pm9263/env/bin/_update
index fb7cbe8..014bce3 100644
--- a/board/pm9263/env/bin/_update
+++ b/board/pm9263/env/bin/_update
@@ -5,7 +5,7 @@ if [ -z "$part" -o -z "$image" ]; then
 	exit 1
 fi
 
-if [ \! -e "$part" ]; then
+if [ ! -e "$part" ]; then
 	echo "Partition $part does not exist"
 	exit 1
 fi
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
