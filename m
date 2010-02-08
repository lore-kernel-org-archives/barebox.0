Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTxk-00058V-9X
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:47:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NeTxd-0001Xn-Fu
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 14:47:33 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NeTxd-00055u-F1
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 14:47:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2010 14:47:26 +0100
Message-Id: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Clean up flash driver confusion
To: barebox@lists.infradead.org

Hi all,

Here are some patches to clean up the confusion between cfi_flash.c and
cfi_flash_new.c. First of all, fix the new driver for Intel Chips, do
some general cleanup and finally remove the old driver. The way the
kconfig variables are defined all defconfigs should switch to the
new driver automatically.

Sascha


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
