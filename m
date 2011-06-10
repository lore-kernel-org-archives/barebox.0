Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvfP-0001hI-Se
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 06:58:04 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QUvfN-0002Hk-VL
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:58:01 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QUvfN-0002eU-UG
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:58:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jun 2011 08:57:51 +0200
Message-Id: <1307689073-9559-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] improve string_list
To: barebox@lists.infradead.org

This implements string_list_asprintf to put an entry to
a string_list using printf format.

Sascha Hauer (2):
      stringlist: use seperately allocated string.
      stringlist: implement string_list_asprintf

 include/stringlist.h |    7 +++++--
 lib/stringlist.c     |   28 +++++++++++++++++++++++++---
 2 files changed, 30 insertions(+), 5 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
