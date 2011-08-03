Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVkI-00052A-Q2
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:20:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QoVkG-00049H-QF
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:20:00 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QoVkG-0005Bq-Os
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:20:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Aug 2011 09:19:57 +0200
Message-Id: <1312355999-19496-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add a 'time' command
To: barebox@lists.infradead.org

The time command was useful during MMU rework as it allowed me
to measure the impacts of caching. Unfortunately the timer
may overrun during execution of the command, so the result may
not be correct. Still I find this useful enough to be part
of barebox.

Sascha

Sascha Hauer (2):
      memcpy command: allow to interrupt
      Add 'time' command to measure execution time of a command

 commands/Kconfig  |   10 +++++++++
 commands/Makefile |    1 +
 commands/mem.c    |    3 ++
 commands/time.c   |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 71 insertions(+), 0 deletions(-)
 create mode 100644 commands/time.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
