Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.gnudd.com ([213.203.150.91] helo=mail.gnudd.com)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ncn7p-0004QB-Ub
	for barebox@lists.infradead.org; Wed, 03 Feb 2010 21:51:11 +0000
Received: from mail.gnudd.com (localhost [127.0.0.1])
	by mail.gnudd.com (8.14.3/8.14.3/Debian-5) with ESMTP id o13LorRb001440
	for <barebox@lists.infradead.org>; Wed, 3 Feb 2010 22:50:53 +0100
Received: (from rubini@localhost)
	by mail.gnudd.com (8.14.3/8.14.3/Submit) id o13Loqdb001439
	for barebox@lists.infradead.org; Wed, 3 Feb 2010 22:50:52 +0100
Date: Wed, 3 Feb 2010 22:50:51 +0100
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20100203215050.GA1432@morgana.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: newbie problem with kconfig
To: barebox@lists.infradead.org

It must be my fault, as it works for everyone else, but there might be
a bug somewhere in kconfig within barebox.

It looks like Makefile includes include/config/auto.conf instead of
.config but such file is not properly regenerated, despite the rules
in Makefile and scripts/ look ok at first sight:

   tornado% make at91sam9263ek_defconfig > /dev/null
   tornado% ls -l include/config/auto.conf .config
   -rw-rw-r-- 1 rubini staff 4709 Feb  3 22:42 .config
   -rw-rw-r-- 1 rubini staff 2699 Feb  3 22:00 include/config/auto.conf

   tornado% make oldconfig > /dev/null
   tornado% ls -l include/config/auto.conf .config
   -rw-rw-r-- 1 rubini staff 4709 Feb  3 22:42 .config
   -rw-rw-r-- 1 rubini staff 2699 Feb  3 22:00 include/config/auto.conf

But silentoldconfig works (isn't automatically fired if .config is newer
than auto.conf)?

   tornado% make silentoldconfig > /dev/null
   tornado% ls -l include/config/auto.conf .config
   -rw-rw-r-- 1 rubini staff 4709 Feb  3 22:48 .config
   -rw-rw-r-- 1 rubini staff 2699 Feb  3 22:48 include/config/auto.conf

thanks
/alessandro, on release e1e9fc4 which is current master

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
