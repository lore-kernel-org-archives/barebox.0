Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077J-Nh
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:37 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SOode-0004zm-4f
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 13:19:30 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SOodd-0002PZ-Mg
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 13:19:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:15 +0200
Message-Id: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: hush fixes and cleanups
To: barebox@lists.infradead.org

The following series generally cleans up the hush code and fixes
some longstanding bugs.

Since busybox hush has evolved a lot (looks completely different than
our version) and U-Boots hush version does not evolve much (so no useful
commits there) it's no longer worth to keep the original coding style,
so this series cleans up the coding style making it better readable.

Also some longstanding bugs are fixed. It is now possible to echo ' and "
to the console. These quotes were either removed or were printed with
the preceeding \ to the console. Also the quotes from the stream are now
removed at the end of parsing which means that a

me=sascha; echo "hello $me"

now correctly passed as

argv[1] = "hello sascha"

instead of

argv[1] = "hello", argv[2] = "sascha".

Also the bug that hush expands glob wildcards at the beginning of a
script instead of right before executing a command is fixed. This
makes the 'hush hack' script in the default environment unnecessary.

Sascha

----------------------------------------------------------------
Sascha Hauer (13):
      hush: safe indention level by continueing a loop
      hush: safe an indention level by continueing a loop
      hush: cleanup coding style
      hush: remove bogus 'else'
      hush: run_pipe_real must have num_progs == 1
      hush: run_pipe_real: bail out early to safe an indention level
      hush: remove quotes at end of processing
      hush: simplify globhack
      hush: pass GLOB_NOCHECK to glob
      glob: activate GLOB_NOCHECK flag
      hush: Fix globbing
      hush: allow to run interactive shell in do_sh
      defaultenv: remove now unnecessary hush-hack

 common/hush.c            |  779 ++++++++++++++++++++++++++++------------------
 defaultenv/bin/hush_hack |    1 -
 defaultenv/bin/init      |    5 +-
 lib/glob.c               |   10 +-
 4 files changed, 476 insertions(+), 319 deletions(-)
 delete mode 100644 defaultenv/bin/hush_hack

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
