Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0oXz-0007vF-QB
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 06:54:45 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 525F61054ADC
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 08:59:19 +0200 (CEST)
Date: Mon, 13 Aug 2012 08:54:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120813065448.GM6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [for master PATCH 0/4] Bootm uImage initrd fix
To: barebox@lists.infradead.org

Hi,

please pull
The following changes since commit 58713d32746d49ad39ba17658fe82f1b98b80b2e:

  commands: memset: fix help message (2012-08-09 08:44:38 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/bootm_fix

for you to fetch changes up to d9cefaed51917da5121443715cb9a14c237f9b9b:

  uimage_laod: fix ramdisk support (2012-08-13 14:48:16 +0800)

----------------------------------------------------------------
bootm: uImage initrd fix support

Fix multiple issues:
 - arm: loadaddr hardcode to 0x0 if valid
 - uncompress the ramdisk (U-Boot do not do so)
 - image_sdram_flush: wrong start address when expending the resource
 - bootm: load the initrd to ram where this is done at arch level

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      arm/bootm: fix initrd_start init
      bootm: do not load the initrd in the common code
      uimage_sdram_flush: fix resource start
      uimage_laod: fix ramdisk support

 arch/arm/lib/bootm.c |    4 +++-
 commands/bootm.c     |    8 --------
 common/uimage.c      |    6 ++++--
 3 files changed, 7 insertions(+), 11 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
