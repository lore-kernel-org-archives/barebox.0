Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUHG-0008Oj-0g
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:15:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PyUHD-0007EV-A5
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 20:14:59 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PyUHD-0002OE-3I
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 20:14:59 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:14:51 +0100
Message-Id: <1299957297-8539-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH v3] S3C24xx: NAND management changes to support booting from
	NAND
To: barebox@lists.infradead.org

After digging deep into NAND flash handling and ECC generation, this is
revision three of my patch series to make the mini2440 booting from NAND.
This patch stack is tested on:
 - mini2440, 64 MiB Hynix SDRAM, 64 MiB Samsung NAND
 - mini2440, 64 MiB Micron SDRAM, 128 MiB Samsung NAND

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
