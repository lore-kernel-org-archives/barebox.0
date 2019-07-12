Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlu3Y-00070J-Nz
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 11:49:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlu3S-0007Jv-68
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 13:49:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlu3O-0007D5-EU
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 13:49:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 13:49:18 +0200
Message-Id: <20190712114917.27437-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190712102457.15339-5-a.fatoum@pengutronix.de>
References: <20190712102457.15339-5-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! Documentation: boards: add initial STM32MP
 documentation
To: barebox@lists.infradead.org

Fix typo: TF-A is FSBL, barebox is SSBL
---
 Documentation/boards/stm32mp.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 7f787bac203e..8cbf36c3961e 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -16,7 +16,7 @@ SYSRAM and executed. The FSBL sets up the SDRAM, install a secure monitor and
 then the second stage boot loader (SSBL) is loaded into DRAM.
 
 When building barebox, the resulting ``barebox-${board}.img`` file has the STM32
-header preprended, so it can be loaded directly as FSBL by the ARM TF-A
+header preprended, so it can be loaded directly as SSBL by the ARM TF-A
 (https://github.com/ARM-software/arm-trusted-firmware). Each entry point has a
 header-less image ending in ``*.pblb`` as well.
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
