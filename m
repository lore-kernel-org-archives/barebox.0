Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout11.rmx.de ([94.199.88.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrxf-00032X-E2
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 11:44:52 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout11.rmx.de (Postfix) with ESMTPS id 4826CH2tvPz3yw9
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:44:43 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 4826C83zkkz2xN4
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:44:36 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 21 Jan 2020 12:44:19 +0100
Message-ID: <20200121114421.24401-1-ceggers@arri.de>
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
Subject: [PATCH 1/3] watchdog: Select CONFIG_PARAMETER
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

Without CONFIG_PARAMETER, watchdog_register() will always fail.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/watchdog/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 45dd41a2a..34b7fea39 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -4,6 +4,7 @@ config WATCHDOG_IMX_RESET_SOURCE
 
 menuconfig WATCHDOG
 	bool "Watchdog support"
+	select PARAMETER
 	help
 	  Many platforms support a watchdog to keep track of a working machine.
 	  This framework provides routines to handle these watchdogs.
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
