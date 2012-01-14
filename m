Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm4w4-0003Mh-Us
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:50:26 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F17F41008F16
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:51:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:49:55 +0100
Message-Id: <1326552595-8603-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] CMD_UNCOMPRESS: select UNCOMPRESS
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 766428c..e332a85 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -478,6 +478,7 @@ config CMD_GPIO
 
 config CMD_UNCOMPRESS
 	bool
+	select UNCOMPRESS
 	prompt "uncompress"
 	help
 	  Say yes here to get the uncompress command. uncompress handles
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
