Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout10.rmx.de ([94.199.88.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz6P-0007b3-UG
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 07:46:35 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout10.rmx.de (Postfix) with ESMTPS id 485hdd0n1wz376d
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:46:29 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 485hdY6lQ4z2TTHn
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:46:25 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 08:46:06 +0100
Message-ID: <20200127074606.17254-1-ceggers@arri.de>
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
Subject: [PATCH] barebox_banner: switch to pr_notice
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

The banner should already be printed, if CONFIG_COMPILE_LOGLEVEL is set
to 5 (notice). If printing of the banner is not desired, CONFIG_BANNER
can be disabled.

Fixes: 1d60b224e5 ("barebox_banner: switch to pr_info")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/version.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/version.c b/common/version.c
index 8b1fd4dbe..0457b37a7 100644
--- a/common/version.c
+++ b/common/version.c
@@ -14,8 +14,8 @@ EXPORT_SYMBOL(release_string);
 void barebox_banner (void)
 {
 	printf("\n\n");
-	pr_info("%s", version_string);
+	pr_notice("%s", version_string);
 	printf("\n\n");
-	pr_info("Board: %s\n", barebox_get_model());
+	pr_notice("Board: %s\n", barebox_get_model());
 }
 #endif
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
