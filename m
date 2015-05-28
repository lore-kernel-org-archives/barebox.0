Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv9X-000659-K0
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:35:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Yxv9B-0001pS-D4
 for barebox@lists.infradead.org; Thu, 28 May 2015 12:34:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Yxv9B-0003Kp-1G
 for barebox@lists.infradead.org; Thu, 28 May 2015 12:34:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:34:34 +0200
Message-Id: <1432809284-17362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add 64bit support to mem commands
To: Barebox List <barebox@lists.infradead.org>

This series adds 64bit support to the memory commands which can
be quite useful on 64bit architectures. The commands use the
'-q' (for quad) option to switch to 64bit mode.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      memory_display: Use consistent types
      memory_display: Add 64bit support
      fs: Add O_RWSIZE_8
      mem commands: suppport parsing 'q' option
      md command: Add 64bit support
      memcmp command: Add 64bit support
      memcpy command: Add 64bit support
      memset command: Add 64bit support
      mm command: Add 64bit support
      mw command: Add 64bit support

 commands/md.c           |  3 ++-
 commands/mem.c          |  3 +++
 commands/memcmp.c       |  3 ++-
 commands/memcpy.c       |  3 ++-
 commands/memset.c       |  3 ++-
 commands/mm.c           | 20 ++++++++++++++++----
 commands/mw.c           | 10 +++++++++-
 common/memory_display.c | 42 ++++++++++++++++++++++++++++--------------
 fs/fs.c                 |  3 +++
 include/fcntl.h         |  3 ++-
 10 files changed, 69 insertions(+), 24 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
