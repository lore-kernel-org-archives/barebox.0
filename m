Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z82Oe-0003G5-Vm
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 08:20:34 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E7CFAA0042B
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 10:21:40 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Thu, 25 Jun 2015 10:18:29 +0200
Message-Id: <1435220309-35810-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1435220309-35810-1-git-send-email-w.egorov@phytec.de>
References: <1435220309-35810-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v2 2/2] ARM: OMAP: Add max file size for PBLX images
To: barebox@lists.infradead.org

On AM335x SOCs the maximum size of a downloaded MLO/PBLX image is 109 KB.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v2:
	size fixed: size was 109*1000
---
 arch/arm/configs/am335x_mlo_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 1dd7567..b66a653 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -9,6 +9,7 @@ CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x0
+CONFIG_BAREBOX_MAX_PBLX_SIZE=0x1b400
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
