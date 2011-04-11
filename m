Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000661-Kf
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:45 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9Hww-0008HP-SA
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:18:42 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9Hww-0002my-R1
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:18:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:34 +0200
Message-Id: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: assorted patches
To: barebox@lists.infradead.org


Sascha Hauer (7):
      eth: check the result of edev->get_ethaddr
      net: add a context to the packet handler
      environment: make default env path configurable
      move simple_itoa to libbb so that others can use it
      kfifo: kfifo_put takes a const buffer
      copy_file: handle write return value correctly
      cp command: handle directories as last argument

 commands/cp.c         |    3 ++-
 commands/loadenv.c    |    2 +-
 commands/saveenv.c    |    2 +-
 common/environment.c  |    2 ++
 common/hush.c         |   15 +--------------
 common/startup.c      |    7 ++++---
 include/environment.h |    3 +++
 include/kfifo.h       |    2 +-
 include/libbb.h       |    2 ++
 include/net.h         |    8 +++++---
 lib/copy_file.c       |   15 +++++++++++----
 lib/kfifo.c           |    2 +-
 lib/libbb.c           |   13 +++++++++++++
 net/dhcp.c            |    4 ++--
 net/dns.c             |    4 ++--
 net/eth.c             |    6 ++++--
 net/net.c             |   17 ++++++++++-------
 net/netconsole.c      |    4 ++--
 net/nfs.c             |    4 ++--
 net/ping.c            |    4 ++--
 net/tftp.c            |    4 ++--
 21 files changed, 73 insertions(+), 50 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
