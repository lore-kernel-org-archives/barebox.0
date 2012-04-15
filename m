Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQo8-0007W4-Ab
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:52:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SJQo2-0004lF-Gj
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:51:58 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SJQo2-0007gU-Fp
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:51:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:51:53 +0200
Message-Id: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] automount work
To: barebox@lists.infradead.org

Some patches for the new automount support

----------------------------------------------------------------
Sascha Hauer (4):
      automount: Pass automount pass as environment variable
      automount: fix argument parsing
      automount: optionally make directory
      automount: remove existing automountpoint

 commands/automount.c |   17 +++++++++++++----
 fs/fs.c              |   15 +++++++++++----
 2 files changed, 24 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
