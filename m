Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iO-VQ
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W1Zua-0002Xy-QB
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 12:06:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W1Zua-00039v-P9
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 12:06:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:51 +0100
Message-Id: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: bootm + devicetree + much memory
To: barebox@lists.infradead.org

Current bootm implementation on ARM has the problem with systems with
much memory. The devicetree is allocated with malloc(). On some systems
the malloc area is outside of the kernels lowmem, so the kernel can't
access the devicetree anymore. The complexity of the current code
makes it hard to solve, so this series contains several patches to
make the bootm code simpler before the actual problem is solved.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      list: add list_first_entry_or_null()
      bootm: introduce bootm_load_os helper
      ARM: bootm: move os loading to do_bootm_linux
      bootm: introduce bootm_load_initrd helper
      bootm: introduce bootm_load_devicetree helper
      ARM: bootm: locate zImage higher into RAM
      ARM: bootm: determine RAM start in separate function
      ARM: bootm: pass free memory to __do_bootm_linux

 arch/arm/lib/bootm.c               | 164 ++++++++++++++++++++++++-------------
 arch/blackfin/lib/blackfin_linux.c |   6 +-
 arch/nios2/lib/bootm.c             |   6 +-
 arch/ppc/lib/ppclinux.c            |   6 +-
 common/bootm.c                     | 150 +++++++++++++++++++++++++++++++--
 include/boot.h                     |   5 ++
 include/linux/list.h               |  11 +++
 7 files changed, 278 insertions(+), 70 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
