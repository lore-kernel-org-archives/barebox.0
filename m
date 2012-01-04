Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiRib-0005mX-Mg
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 14:21:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Jan 2012 15:21:22 +0100
Message-Id: <1325686882-8379-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video imx: specify num_modes in platform_data
To: barebox@lists.infradead.org

Without num_modes the imx fb driver won't work. Specify this
in the boards and also bail out in the driver when num_modes
is unspecified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    1 +
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    1 +
 arch/arm/boards/guf-neso/board.c                  |    1 +
 arch/arm/boards/imx21ads/imx21ads.c               |    1 +
 arch/arm/boards/karo-tx25/board.c                 |    1 +
 arch/arm/boards/pcm038/pcm038.c                   |    1 +
 drivers/video/imx.c                               |    5 +++++
 7 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 162c117..73e54f2 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -116,6 +116,7 @@ static struct imx_fb_videomode imxfb_mode = {
 
 static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
 	.mode		= &imxfb_mode,
+	.num_modes	= 1,
 	.pwmr		= 0x00A903FF,
 	.lscr1		= 0x00120300,
 	.dmacr		= 0x80040060,
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index c419c73..e2766fb 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -116,6 +116,7 @@ static struct imx_fb_videomode imxfb_mode = {
 
 static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 	.mode	= &imxfb_mode,
+	.num_modes = 1,
 	.pwmr	= 0x00A903FF,
 	.lscr1	= 0x00120300,
 	.dmacr	= 0x00020010,
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index e524b70..62d82f2 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -105,6 +105,7 @@ static void neso_fb_enable(int enable)
 
 static struct imx_fb_platform_data neso_fb_data = {
 	.mode	= &imxfb_mode,
+	.num_modes = 1,
 	.pwmr	= 0x00000000,	/* doesn't matter */
 	.lscr1	= 0x00120300,	/* doesn't matter */
 	/* dynamic mode -> using the reset values (as recommended in the datasheet) */
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index fc34709..fde6774 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -70,6 +70,7 @@ static struct imx_fb_videomode imx_fb_modedata = {
 
 static struct imx_fb_platform_data imx_fb_data = {
 	.mode           = &imx_fb_modedata,
+	.num_modes	= 1,
 	.cmap_greyscale = 0,
 	.cmap_inverse   = 0,
 	.cmap_static    = 0,
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 1eece1d..bfccd0c 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -239,6 +239,7 @@ static void tx25_fb_enable(int enable)
 
 static struct imx_fb_platform_data tx25_fb_data = {
 	.mode		= &stk5_fb_mode,
+	.num_modes	= 1,
 	.dmacr		= 0x80040060,
 	.enable		= tx25_fb_enable,
 };
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 6b8897e..8dd6521 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -104,6 +104,7 @@ static struct imx_fb_videomode imxfb_mode = {
 
 static struct imx_fb_platform_data pcm038_fb_data = {
 	.mode	= &imxfb_mode,
+	.num_modes = 1,
 	.pwmr	= 0x00A903FF,
 	.lscr1	= 0x00120300,
 	.dmacr	= 0x00020010,
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 78179af..452e558 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -552,6 +552,11 @@ static int imxfb_probe(struct device_d *dev)
 	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
 		IMX_CCM_BASE + CCM_CGCR1);
 #endif
+	if (!pdata->num_modes) {
+		dev_err(dev, "no modes. bailing out\n");
+		return -EINVAL;
+	}
+
 	mode_list = xzalloc(sizeof(*mode_list) * pdata->num_modes);
 	for (i = 0; i < pdata->num_modes; i++)
 		mode_list[i] = pdata->mode[i].mode;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
