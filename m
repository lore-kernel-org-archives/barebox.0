Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCCOg-00024C-4w
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 16:36:11 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A180CFFAACB
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 18:37:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Sep 2012 18:29:28 +0200
Message-Id: <1347553768-19030-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347553768-19030-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120913155532.GA9153@game.jcrosoft.org>
 <1347553768-19030-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] defaultenv-2: eth0 add default global.dhcp.vendor_id
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/network/eth0 |    1 +
 1 file changed, 1 insertion(+)

diff --git a/defaultenv-2/base/network/eth0 b/defaultenv-2/base/network/eth0
index 048a288..7e731ca 100644
--- a/defaultenv-2/base/network/eth0
+++ b/defaultenv-2/base/network/eth0
@@ -2,6 +2,7 @@
 
 # ip setting (static/dhcp)
 ip=dhcp
+global.dhcp.vendor_id=barebox-${global.hostname}
 
 # static setup used if ip=static
 ipaddr=
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
