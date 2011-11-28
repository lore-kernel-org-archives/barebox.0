Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAa-0003qo-En
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RUwAQ-0004U7-0C
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 09:02:22 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RUwAP-0002n1-VG
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 09:02:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:06 +0100
Message-Id: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: bootm work
To: barebox@lists.infradead.org

This series puts some work into the bootm command. My goal is to
turn bootm into the only boot command which can detect other image
types when necessary. I'm not quite there, but this is some useful
preparation.

Sascha Hauer (14):
      bootm: remove dead code
      factor out iminfo command
      compile in simple_strtoull
      introduce some env helpers
      armlinux: cleanup linux vars
      ARM bootm: remove now obsolete args
      bootm: handle initrds inline
      bootm: remove image handler options
      bootm: fix various memory leaks
      bootm: do not require -L after -r
      bootm: fix typo, update help str
      bootm relocate_image: honour load_address
      bootm: push relocate_image up to the generic command
      bootm: use initrd_address and initrd_size

 arch/arm/lib/armlinux.c            |  102 ++++++++----
 arch/arm/lib/bootm.c               |   36 -----
 arch/blackfin/lib/blackfin_linux.c |    3 -
 arch/nios2/lib/bootm.c             |    3 -
 arch/ppc/lib/ppclinux.c            |    3 -
 commands/Kconfig                   |    6 +
 commands/Makefile                  |    1 +
 commands/bootm.c                   |  305 +++++++-----------------------------
 commands/iminfo.c                  |   71 +++++++++
 common/env.c                       |   22 +++
 common/image.c                     |    3 +-
 include/boot.h                     |    6 +-
 include/common.h                   |    2 -
 include/environment.h              |    3 +
 include/image.h                    |    3 -
 lib/vsprintf.c                     |    2 -
 16 files changed, 237 insertions(+), 334 deletions(-)
 create mode 100644 commands/iminfo.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
