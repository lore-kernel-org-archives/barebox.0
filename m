Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw564-0002GA-GP
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aw55i-0000TB-Qt
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 11:52:06 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1aw55i-0004qw-Fg
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 11:52:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:51:59 +0200
Message-Id: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: Barebox List <barebox@lists.infradead.org>

With this series we can let the bootm command automatically append a root=
option for the Kernel which will let the rootfs come from the same
device as the kernel comes from. The code was already there, but only
worked with bootloader spec. By moving it to bootm we can also use it
with bootm directly. As usual there a a few things to cleanup I stumbled
upon which are also part of this series.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      globalvar: Allow to remove globalvars
      string: Introduce strtobool
      getenv_bool: use strtobool
      parameter: Use strtobool
      bootm: Optionally add a root= option to Kernel command line
      blspec: push appendroot handling to bootm

 Documentation/user/booting-linux.rst | 14 ++++++++++++
 commands/bootm.c                     |  1 +
 common/blspec.c                      | 39 +++++++++++---------------------
 common/bootm.c                       | 17 ++++++++++++++
 common/env.c                         | 28 ++++++++++++++---------
 common/globalvar.c                   | 10 +++++++++
 include/boot.h                       |  5 +++++
 include/globalvar.h                  |  1 +
 include/string.h                     |  1 +
 lib/parameter.c                      |  7 +++---
 lib/string.c                         | 43 ++++++++++++++++++++++++++++++++++++
 11 files changed, 126 insertions(+), 40 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
