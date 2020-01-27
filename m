Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout10.rmx.de ([94.199.88.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz4N-0006Gg-Re
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 07:44:29 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout10.rmx.de (Postfix) with ESMTPS id 485hbF0qL4z35XG
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:44:25 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 485hbD2Wkmz2TSCf
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:44:24 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 08:44:15 +0100
Message-ID: <20200127074415.17165-1-ceggers@arri.de>
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
Subject: [PATCH] common: make CONFIG_BAREBOX_UPDATE visible
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

The barebox update infrastructure is also useful without
CONFIG_CMD_BAREBOX_UPDATE (e.g. from a own barebox_main() with
CONFIG_SHELL_NONE).

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 60237d305..06d4bb068 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -69,9 +69,6 @@ config LOGBUF
 config STDDEV
 	bool
 
-config BAREBOX_UPDATE
-	bool
-
 config MENUTREE
 	bool
 	select GLOB
@@ -692,6 +689,9 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config BAREBOX_UPDATE
+	bool "In-system barebox update infrastructure"
+
 config IMD
 	bool "barebox metadata support"
 
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
