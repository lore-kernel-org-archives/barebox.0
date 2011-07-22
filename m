Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QkDjg-0003Wy-Tm
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 11:17:41 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1QkDjc-0006dO-O0
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 13:17:36 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Jul 2011 13:16:35 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201107221316.35943.jbe@pengutronix.de>
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
Subject: DHCP and NFSroot/TFTP
To: barebox@lists.infradead.org

Hi,

for the case someone uses DHCP for her/his network configuration in Barebox,
there is a race with the setup of some variables used for the NFS root.

The following patch fixes it, but maybe there are better solutions than that.

------------------------------------------------------------------------------

Setting up NFS root/TFTP related variables is successfull only if the network
interface is already configured. For the case someone is using DHCP, this
fails, because all these vars are still empty. Changing the order when the
DHCP is done solves the issue.

Signed off by: Juergen Beisert <jbe@pengutronix.de>

---
 defaultenv/bin/boot |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

Index: barebox-2011.05.0/defaultenv/bin/boot
===================================================================
--- barebox-2011.05.0.orig/defaultenv/bin/boot
+++ barebox-2011.05.0/defaultenv/bin/boot
@@ -18,6 +18,9 @@ fi
 
 if [ x$ip = xdhcp ]; then
 	bootargs="$bootargs ip=dhcp"
+	if [ x$kernel_loc = xnfs ] || [ x$kernel_loc = xtftp ]; then
+		dhcp
+	fi
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
@@ -75,9 +78,6 @@ if [ ! -e /dev/ram0.kernel ]; then
 fi
 
 if [ x$kernel_loc = xnfs ] || [ x$kernel_loc = xtftp ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
 	if [ $kernelimage_type = uimage ]; then
 		netload="/dev/ram0.kernel"
 	elif [ $kernelimage_type = zimage ]; then

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
