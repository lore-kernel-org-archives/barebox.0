Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sil20-0001dq-A3
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 11:31:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 13:31:01 +0200
Message-Id: <1340537461-22976-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defaultenv-2 ifup: create network up state file for dhcp
To: barebox@lists.infradead.org

We store the 'up' status of a network device in /tmp/network/$interface.
Create this file for dhcp aswell to prevent doing dhcp requests each
time ifup is called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/ifup |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
index 9f6fd6b..4248149 100644
--- a/defaultenv-2/base/bin/ifup
+++ b/defaultenv-2/base/bin/ifup
@@ -51,9 +51,12 @@ if [ "$ip" = static ]; then
 	${interface}.netmask=$netmask
 	${interface}.serverip=$serverip
 	${interface}.gateway=$gateway
+	retval=0
 elif [ "$ip" = dhcp ]; then
 	dhcp
-	exit $?
+	retval=$?
 fi
 
 echo -o /tmp/network/$interface up
+
+exit $retval
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
