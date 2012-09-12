Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLT-0005M0-L6
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:16 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 87F56FFA03D
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:28 +0200
Message-Id: <1347461308-24208-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
