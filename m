Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfXvD-0002xl-6c
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 13:18:02 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PfXvB-0007ut-2z
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 14:17:57 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 19 Jan 2011 14:16:24 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101191416.25128.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Fix default environment 'boot' script
To: barebox@lists.infradead.org

Maybe this patch is wrong and instead the "nfsroot=$nfsroot,v3,tcp" line must
be fixed. But at first this patch makes my target again booting with NFS root
and static IP configuration.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index fa68748..0f3a6cc 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -18,7 +18,7 @@ if [ x$ip = xdhcp ]; then
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
-	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
 fi
 
-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
