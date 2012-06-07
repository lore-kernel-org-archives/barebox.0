Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScjSe-0005jV-J6
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 20:37:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 22:37:34 +0200
Message-Id: <1339101456-8116-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1339101456-8116-1-git-send-email-s.hauer@pengutronix.de>
References: <1339101456-8116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] defaultenv-2 ifup: Always overwrite eth0.serverip
To: barebox@lists.infradead.org

if serverip is specified, also overwrite eth0.serverip in dhcp
case. This makes it possible to specify a different serverip
when the dhcp server returns the wrong ip (because the DHCP
might be a DSL router which does not provide tftp).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/ifup |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
index 9f6fd6b..ed33b06 100644
--- a/defaultenv-2/base/bin/ifup
+++ b/defaultenv-2/base/bin/ifup
@@ -53,7 +53,12 @@ if [ "$ip" = static ]; then
 	${interface}.gateway=$gateway
 elif [ "$ip" = dhcp ]; then
 	dhcp
-	exit $?
+	ret=$?
+	if [ $ret = 0 -a -n "$serverip" ]; then
+		${interface}.serverip=$serverip
+	fi
+
+	exit $ret
 fi
 
 echo -o /tmp/network/$interface up
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
