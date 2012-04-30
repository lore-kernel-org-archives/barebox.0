Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpYH-0001sN-85
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:18:01 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1958A10508C0
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:19:18 +0200 (CEST)
Date: Mon, 30 Apr 2012 13:57:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120430115703.GD2992@game.jcrosoft.org>
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
Subject: [PATCH 0/3] qemu-malta nor flash support
To: barebox@lists.infradead.org

Hi,

	The following patch serie add CFI flash support

The following changes since commit 6b489256ee1358973d536e723c77c2483e6b9f5b:

  Makefile: add barebox.srec to 'clean' (2012-04-30 14:01:34 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/malta-cfi-flash

for you to fetch changes up to 37a97ca3fce6a92e25e7855359270f83548793bd:

  qemu-malta: add nor flash support (2012-04-30 20:16:28 +0800)

----------------------------------------------------------------
Mips: malta add cfi flash support

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      mips: add in_be16/32 and out_be16/32 for cfi support
      qemu-malta: rename serial.c to init.c
      qemu-malta: add nor flash support

 arch/mips/boards/qemu-malta/Makefile             |    2 +-
 arch/mips/boards/qemu-malta/{serial.c => init.c} |   14 ++++++++++++++
 arch/mips/configs/qemu-malta_defconfig           |    5 +++++
 arch/mips/include/asm/io.h                       |    5 +++++
 4 files changed, 25 insertions(+), 1 deletions(-)
 rename arch/mips/boards/qemu-malta/{serial.c => init.c} (76%)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
