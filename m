Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4yf9-0007uX-G7
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 19:03:37 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7D13CFFA389
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 20:18:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 20:02:24 +0100
Message-Id: <1360609344-21376-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] oftree: fix probe support
To: barebox@lists.infradead.org

in commit e118761c5f7e8
oftree command: refactor

the Kconfig CMD_OFTREE_PROBE was remove

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index d3c338c..c1454c7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -487,6 +487,13 @@ config CMD_OFTREE
 	  The oftree command has support for dumping devicetrees and, if
 	  enabled, to probe devices from the devicetree
 
+config CMD_OFTREE_PROBE
+	bool
+	depends on CMD_OFTREE
+	prompt "oftree probe support"
+	help
+	  This enables the -p option to probe devices from the devicetree
+
 config CMD_OF_PROPERTY
 	tristate
 	select OFTREE
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
