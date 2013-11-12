Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-00061A-WA
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VgEOD-0003SU-FZ
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:52:21 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VgEOD-000376-ES
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 14:52:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:09 +0100
Message-Id: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: hush patches
To: barebox@lists.infradead.org

This contains several hush cleanup patches I came across while trying
to fix the weird behaviour that an interactive hush currently exits
on a syntax error. This is fixed and also we now get a nice
'syntax error: unexpected token `x'' in some cases. Hopefully no other
functional changes introduced.

----------------------------------------------------------------
Sascha Hauer (10):
      hush: fix exit on syntax error behaviour
      hush: refactor readline call
      readline: remove unused variable
      hush: refactor get_user_input()
      hush: refactor file_get()
      hush: rename __promptme to interrupt
      consolidate syntax() and syntax_err()
      hush: Be more informative on syntax error
      hush: use standard ARRAY_SIZE
      hush: refactor reserved_word()

 common/hush.c  | 188 ++++++++++++++++++++++++++++++++-------------------------
 lib/readline.c |   3 +-
 2 files changed, 108 insertions(+), 83 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
