Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwaSN-0001f8-Db
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 13:26:40 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwaSL-0008LR-3V
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 14:26:37 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 7 Mar 2011 14:24:13 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201103071424.14270.jbe@pengutronix.de>
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
Subject: [RFC] S3C24xx: Fixing the NAND handling
To: barebox@lists.infradead.org

Hi,

anyone here with an idea how to fix this:

The NAND support for the S3C24xx CPU seems totally broken in the current 
kernel:

 - the driver's local OOB layout for small page NANDs overwrites the vendors
   bad block marker (a really bad idea!)
 - the ECC setup for large page NANDs violates NANDs partial write count (it
   forces 8 partial writes instead of allowed 4 per 2048 byte page)

How to adapt barebox according to the kernel? If we do OOB and ECC setup 
correctly in barebox, the mainline kernel cannot work with this data. If we 
do it in the same way than the kernel, we lose the bad block markers or do 
more writes than the manufacturer allows for reliable data security.

Changing the kernel is also hard to do, because it breaks existing software 
installations which should just run with more recent kernels.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
