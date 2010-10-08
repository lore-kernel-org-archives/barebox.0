Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4C07-00032b-A4
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 12:24:40 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1P4C03-0000rz-Ri
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 14:24:35 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1P4C03-0004Vg-QY
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 14:24:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Oct 2010 14:24:31 +0200
Message-Id: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: barebox@lists.infradead.org

Hi,

Here are some hush related fixes/improvements:

Sascha Hauer (3):
      hush: pass context around in shell
      hush: fix nasty memory leak in hush
      hush: implement getopt builtin

 common/hush.c |   98 +++++++++++++++++++++++++++++++++++++++++++++++++++------
 1 files changed, 88 insertions(+), 10 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
