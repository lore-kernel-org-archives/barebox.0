Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [92.103.151.219] (helo=zimbra2.kalray.eu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4PQE-0007ru-Rk
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 11:53:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BA27A27E0341
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dBFelOAFZgGa for <barebox@lists.infradead.org>;
 Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 782FD27E037D
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FSG5fIwb87kK for <barebox@lists.infradead.org>;
 Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 64EB927E0341
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
Date: Mon, 24 Sep 2018 13:45:35 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <755142489.12655559.1537789535402.JavaMail.zimbra@kalray.eu>
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
Subject: [PATCH] ratp: select CMDLINE_EDITING
To: Barebox List <barebox@lists.infradead.org>

ratp seems to send special characters which are not handle correctly
without CDMLINE_EDITING. Without this config, commands run via ratp will
have an erratic behavior and/or incorrect output.
---
 common/ratp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
index 93ff75d64..07d1f53da 100644
--- a/common/ratp/Kconfig
+++ b/common/ratp/Kconfig
@@ -4,6 +4,7 @@ config CONSOLE_RATP
 	select RATP
 	select CRC16
 	select POLLER
+	select CMDLINE_EDITING
 	depends on CONSOLE_FULL
 	prompt "RATP console support"
 	help
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
