Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x230.google.com ([2a00:1450:400c:c09::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3lHW-0005y2-2h
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 13:47:46 +0000
Received: by wmww144 with SMTP id w144so173588858wmw.1
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 05:47:24 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 14:46:48 +0100
Message-Id: <1448977608-4950-3-git-send-email-fvallee@eukrea.fr>
In-Reply-To: <1448977608-4950-1-git-send-email-fvallee@eukrea.fr>
References: <1448977608-4950-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [PATCH 3/3] eukrea-cpuimx35: update defconfig
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

enable chipidea usb driver

Signed-off-by: Florian Vallee <fvallee@eukrea.fr>
---
 arch/arm/configs/eukrea_cpuimx35_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 4c83102..c163827 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -77,6 +77,7 @@ CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
 CONFIG_NAND_IMX_BBM=y
 CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
