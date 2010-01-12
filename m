Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gh-63
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrp-0006Ve-Qo
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:53 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrp-0006x9-OP
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:53 +0100
Message-Id: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:34 +0100
From: Juergen Beisert <jbe@pengutronix.de>
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
Subject: [PATCHv2 00/14] Bring in basic x86 support into 'barebox'
To: barebox@lists.infradead.org

This patch series brings in some basic x86 support into the tree.
At first this support can act as a boot loader on a BIOS based
x86 machine like GRUB is. E.g. barebox will be stored in the MBR of
a boot media the BIOS supports to boot from. This implementation still
talks to the BIOS in real mode, to load or store data from/to a disk
drive, but the barebox core itself runs in 32 bit flat mode.

Currently only a serial console is supported.

v2 of this patch series comes with some clean ups and also uses the discussed
naming convention for BIOS based disk access. The whole series is updated to
'barebox' (instead of u-boot-v2). Note: Its tested only with QEMU yet. We are
going to port it to real hardware now.

Comments are welcome.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
