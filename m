Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccKf-0002PD-KW
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:01:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  7 Jun 2012 17:00:50 +0400
Message-Id: <1339074051-9781-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
References: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] i.MX clko: Added support for more than one CLKO outputs
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/clko.c               |   16 ++++++++++------
 arch/arm/mach-imx/include/mach/clock.h |    4 ++--
 arch/arm/mach-imx/speed-imx21.c        |   10 +++++++---
 arch/arm/mach-imx/speed-imx25.c        |   10 ++++++++--
 arch/arm/mach-imx/speed-imx27.c        |   11 +++++++++--
 arch/arm/mach-imx/speed-imx35.c        |   10 ++++++++--
 6 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index 8e568d2..4c5df71 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -6,10 +6,13 @@
 
 static int do_clko(int argc, char *argv[])
 {
-	int opt, div = 0, src = -2, ret;
+	int opt, div = 0, src = -2, num = 1, ret;
 
-	while((opt = getopt(argc, argv, "d:s:")) > 0) {
+	while((opt = getopt(argc, argv, "n:d:s:")) > 0) {
 		switch(opt) {
+		case 'n':
+			num = simple_strtoul(optarg, NULL, 0);
+			break;
 		case 'd':
 			div = simple_strtoul(optarg, NULL, 0);
 			break;
@@ -23,15 +26,15 @@ static int do_clko(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (src == -1) {
-		imx_clko_set_src(-1);
+		imx_clko_set_src(num, -1);
 		return 0;
 	}
 
 	if (src != -2)
-		imx_clko_set_src(src);
+		imx_clko_set_src(num, src);
 
 	if (div != 0) {
-		ret = imx_clko_set_div(div);
+		ret = imx_clko_set_div(num, div);
 		if (ret != div)
 			printf("limited divider to %d\n", ret);
 	}
@@ -42,7 +45,8 @@ static int do_clko(int argc, char *argv[])
 static __maybe_unused char cmd_clko_help[] =
 "Usage: clko [OPTION]...\n"
 "Route different signals to the i.MX clko pin\n"
-"  -d  <div>	Divider\n"
+"  -n  <num>    Number of CLKO-line (Default 1)\n"
+"  -d  <div>    Divider\n"
 "  -s  <source> Clock select. See Ref. Manual for valid sources. Use -1\n"
 "               for disabling clock output\n";
 
diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index 1082178..4b8fdd9 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -31,8 +31,8 @@ ulong imx_get_i2cclk(void);
 ulong imx_get_mmcclk(void);
 ulong imx_get_cspiclk(void);
 
-int imx_clko_set_div(int div);
-void imx_clko_set_src(int src);
+int imx_clko_set_div(int num, int div);
+void imx_clko_set_src(int num, int src);
 
 void imx_dump_clocks(void);
 
diff --git a/arch/arm/mach-imx/speed-imx21.c b/arch/arm/mach-imx/speed-imx21.c
index 6ab1dca..6b44efa 100644
--- a/arch/arm/mach-imx/speed-imx21.c
+++ b/arch/arm/mach-imx/speed-imx21.c
@@ -162,9 +162,13 @@ void imx_dump_clocks(void)
  * Returns the new divider (which may be smaller
  * than the desired one)
  */
-int imx_clko_set_div(int div)
+int imx_clko_set_div(int num, int div)
 {
 	ulong pcdr;
+
+	if (num != 1)
+		return;
+
 	div--;
 	div &= 0x7;
 
@@ -178,11 +182,11 @@ int imx_clko_set_div(int div)
 /*
  * Set the clock source for the CLKO pin
  */
-void imx_clko_set_src(int src)
+void imx_clko_set_src(int num, int src)
 {
 	unsigned long ccsr;
 
-	if (src < 0) {
+	if (src < 0 || num != 1) {
 		return;
 	}
 
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index f6dcacb..b5c9822 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -111,10 +111,13 @@ void imx_dump_clocks(void)
  * the new divider (which may be smaller
  * than the desired one)
  */
-int imx_clko_set_div(int div)
+int imx_clko_set_div(int num, int div)
 {
 	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
 
+	if (num != 1)
+		return;
+
 	div -= 1;
 	div &= 0x3f;
 
@@ -129,10 +132,13 @@ int imx_clko_set_div(int div)
 /*
  * Set the clock source for the CLKO pin
  */
-void imx_clko_set_src(int src)
+void imx_clko_set_src(int num, int src)
 {
 	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
 
+	if (num != 1)
+		return;
+
 	if (src < 0) {
 		mcr &= ~(1 << 30);
 		writel(mcr, IMX_CCM_BASE + 0x64);
diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
index aba5097..6c66344 100644
--- a/arch/arm/mach-imx/speed-imx27.c
+++ b/arch/arm/mach-imx/speed-imx27.c
@@ -189,9 +189,13 @@ void imx_dump_clocks(void)
  * the new divider (which may be smaller
  * than the desired one)
  */
-int imx_clko_set_div(int div)
+int imx_clko_set_div(int num, int div)
 {
 	ulong pcdr;
+
+	if (num != 1)
+		return;
+
 	div--;
 	div &= 0x7;
 
@@ -205,10 +209,13 @@ int imx_clko_set_div(int div)
 /*
  * Set the clock source for the CLKO pin
  */
-void imx_clko_set_src(int src)
+void imx_clko_set_src(int num, int src)
 {
 	unsigned long ccsr;
 
+	if (num != 1)
+		return;
+
 	if (src < 0) {
 		PCDR0 &= ~(1 << 25);
 		return;
diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 1e1c39f..28cd1b1 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -203,10 +203,13 @@ void imx_dump_clocks(void)
  * the new divider (which may be smaller
  * than the desired one)
  */
-int imx_clko_set_div(int div)
+int imx_clko_set_div(int num, int div)
 {
 	unsigned long cosr = readl(IMX_CCM_BASE + CCM_COSR);
 
+	if (num != 1)
+		return;
+
 	div -= 1;
 	div &= 0x3f;
 
@@ -221,10 +224,13 @@ int imx_clko_set_div(int div)
 /*
  * Set the clock source for the CLKO pin
  */
-void imx_clko_set_src(int src)
+void imx_clko_set_src(int num, int src)
 {
 	unsigned long cosr = readl(IMX_CCM_BASE + CCM_COSR);
 
+	if (num != 1)
+		return;
+
 	if (src < 0) {
 		cosr &= ~(1 << 5);
 		writel(cosr, IMX_CCM_BASE + CCM_COSR);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
