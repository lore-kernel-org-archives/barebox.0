Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kA-0003VW-MJ
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WG4jo-00084c-O1
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 11:50:48 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WG4jo-0001Gr-Mi
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 11:50:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:42 +0100
Message-Id: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Cleanup environment dependencies and compressed file generation
To: barebox@lists.infradead.org

This changes the way how we track whether the default environment has
to be regenerated. Instead of trying to push this into make rules we
now always regenerate it, but only if the result differs from the last
run we copy it over to the target. This way make only sees a change when
something has changed (and only then rebuilds the barebox binary).
Also we introduce wildcard rules for generating compressed files which
further cleans up generating the default environment files.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      common/Makefile: reorder targets
      defaultenv: simplify env dependencies
      make: Add wildcard rules for compressed files
      defaultenv: use wildcard compression rules
      Kconfig: Select default compression type

 Makefile             |  17 +++++++
 common/Kconfig       |  39 ++++++++--------
 common/Makefile      | 126 +++++++++++++++++++--------------------------------
 common/startup.c     |   2 +-
 scripts/Makefile.lib |  18 ++++++++
 scripts/genenv       |  12 ++++-
 6 files changed, 114 insertions(+), 100 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
