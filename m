Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcRLy-0005MK-DN
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 23:40:50 +0000
Received: by mail-iw0-f177.google.com with SMTP id 38so20877811iwn.36
	for <barebox@lists.infradead.org>; Mon, 10 Jan 2011 15:40:46 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 11 Jan 2011 10:40:15 +1100
Message-Id: <1294702816-21612-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
References: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH v2 2/3] imx: add reg definitions for imx25 and imx35 boot
	source.
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h |    3 +++
 arch/arm/mach-imx/include/mach/imx35-regs.h |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index ac590d9..78ec0cd 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -79,6 +79,9 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
+#define CCM_RCSR_MEM_CTRL_SHIFT		30
+#define CCM_RCSR_MEM_TYPE_SHIFT		28
+
 /*
  * Adresses and ranges of the external chip select lines
  */
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 75825e5..280d075 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -79,6 +79,9 @@
 #define CCM_CGR1_SDHC1_SHIFT	26
 #define CCM_CGR2_USB_SHIFT	22
 
+#define CCM_RCSR_MEM_CTRL_SHIFT		25
+#define CCM_RCSR_MEM_TYPE_SHIFT		23
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
