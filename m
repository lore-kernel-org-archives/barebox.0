Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01fU-0002AD-Hk
 for barebox@lists.infradead.org; Fri, 07 Feb 2020 11:19:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1j01fR-0005l5-JG
 for barebox@lists.infradead.org; Fri, 07 Feb 2020 12:19:25 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1j01fR-00019G-BH
 for barebox@lists.infradead.org; Fri, 07 Feb 2020 12:19:25 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  7 Feb 2020 12:19:19 +0100
Message-Id: <20200207111919.2153-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] fixup! imd: add support for checksum generation/verification
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
CRC32 is now needed for imd, but was selected by accident. In situations
where barebox is stripped down (e.g. socfpga-xload, where there is no
environment, globalvars or command_support), barebox won't compile anymore.

 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index f9ef9bd83bad..fcdeb5c30b58 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -693,6 +693,7 @@ config FLEXIBLE_BOOTARGS
 	  completely.
 
 config IMD
+	select CRC32
 	bool "barebox metadata support"
 
 config IMD_TARGET
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
