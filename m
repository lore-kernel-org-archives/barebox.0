Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pc9VN-0005ol-0W
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 04:37:18 +0000
Received: by pxi7 with SMTP id 7so4432326pxi.36
	for <barebox@lists.infradead.org>; Sun, 09 Jan 2011 20:37:15 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 10 Jan 2011 15:36:51 +1100
Message-Id: <1294634212-29029-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294634212-29029-1-git-send-email-marc@cpdesign.com.au>
References: <1294634212-29029-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 2/3] imx: add reg definitions for imx25 and imx35 boot source.
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    2 ++
 arch/arm/mach-imx/include/mach/imx35-regs.h |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index ac590d9..e01fa86 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -79,6 +79,8 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
+#define CCM_RCSR_MEM_CTRL_SHIFT	30
+
 /*
  * Adresses and ranges of the external chip select lines
  */
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 75825e5..7da911b 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -79,6 +79,8 @@
 #define CCM_CGR1_SDHC1_SHIFT	26
 #define CCM_CGR2_USB_SHIFT	22
 
+#define CCM_RCSR_MEM_CTRL_SHIFT	25
+
 #define PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
 #define PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
 #define PDR0_CON_MUX_DIV(x)	(((x) & 0xf) << 16)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
