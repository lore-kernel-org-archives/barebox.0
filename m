Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXrq-0006tt-Dd
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:39:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bQXrU-0005qH-L6
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:39:20 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1bQXrT-0006FL-Vq
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:39:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:13 +0200
Message-Id: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: nv variable changes
To: Barebox List <barebox@lists.infradead.org>

This series has some changes for nv variables. The most significant change:
nv variables are now automatically saved when they are changed. This makes
an explicit 'saveenv' unnecessary. Since we do not want excessive write
accesses on the environment storage we save the variables only on shutdown.
The rest of the environment is still shall not automatically be saved, to
implement this the nv variable code reads the environment from storage,
changes the nv variables and writes it back to storage.

----------------------------------------------------------------
Sascha Hauer (6):
      nv: Do not save nv variables while loading
      nv: Save nv variables on shutdown
      nv: Add option to explicitly save nv variables
      nv: Allow to set/remove multiple variables with one command
      nv: Use dev_remove_param to delete nv variable
      nv: Allow wildcards when removing NV vars

 commands/nv.c        |  43 ++++++++++-------
 common/environment.c |   4 ++
 common/globalvar.c   | 134 ++++++++++++++++++++++++++++++++++++++++++++-------
 include/globalvar.h  |   3 ++
 4 files changed, 149 insertions(+), 35 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
