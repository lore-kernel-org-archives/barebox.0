Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viV-0006c7-TI
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:30 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:13 +0200
Message-Id: <1316984054-31295-11-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 10/11] defaultenv: place eth0.ethaddr more visibly
To: barebox@lists.infradead.org

The config file looks like you just need to set ethaddr when you do
static IP. This is misleading, so put the setting to a more prominent
place.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/config |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/defaultenv/config b/defaultenv/config
index c2fe6ce..0aaead5 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -3,6 +3,9 @@
 machine=FIXME
 #user=
 
+# Enter MAC address here if not retrieved automatically
+#eth0.ethaddr=de:ad:be:ef:00:00
+
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
@@ -12,7 +15,6 @@ ip=dhcp
 #eth0.netmask=a.b.c.d
 #eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
-#eth0.ethaddr=de:ad:be:ef:00:00
 
 # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
 kernel_loc=tftp
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
