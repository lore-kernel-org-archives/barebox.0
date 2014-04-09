Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXn6r-0000GM-T9
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 07:39:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WXn6V-00064R-G2
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 09:39:27 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WXn6V-0000im-Em
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 09:39:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 09:39:22 +0200
Message-Id: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fix some longstanding environment bugs
To: barebox@lists.infradead.org

When an environment doesn't fit into the environment partition saveenv
still returned success. Also loading this corrupted partition resulted
in success. Fix this.

----------------------------------------------------------------
Sascha Hauer (4):
      unlink_recursive: return negative error value
      loadenv: ignore -ENOENT when removing /env
      saveenv: Properly detect write errors
      loadenv: detect truncated environment files

 commands/loadenv.c     |  2 +-
 common/environment.c   | 38 ++++++++++++++++++++++++++++----------
 lib/unlink-recursive.c |  2 +-
 3 files changed, 30 insertions(+), 12 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
