Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo173.mail-out.ovh.net ([178.33.111.180])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ckkhC-0001LX-Km
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 04:56:32 +0000
Received: from player791.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id C770F2A488
 for <barebox@lists.infradead.org>; Mon,  6 Mar 2017 05:56:05 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player791.ha.ovh.net (Postfix) with ESMTPA id C0A8C420071
 for <barebox@lists.infradead.org>; Mon,  6 Mar 2017 05:56:04 +0100 (CET)
Date: Mon, 6 Mar 2017 06:02:11 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170306050211.GH4120@mail.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] add support of efi Serial IO and Graphics Output Protocol
To: barebox@lists.infradead.org

Hi,

The following changes since commit d92ed454107b4d6f0d30fa0271da191ae5911d18:

  Merge branch 'for-next/video' into next (2017-02-27 08:51:08 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/serial-gop

for you to fetch changes up to 6ecbe33539f20076bbc781b9e20a5a54d504fdf3:

  efi: add serial driver support (2017-03-01 22:11:37 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      video: add EFI Graphics Output Protocol support
      efi: add serial driver support

 drivers/serial/Kconfig      |   4 +++
 drivers/serial/Makefile     |   1 +
 drivers/serial/serial_efi.c | 241 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/video/Kconfig       |   4 +++
 drivers/video/Makefile      |   2 ++
 drivers/video/efi_gop.c     | 267 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 519 insertions(+)
 create mode 100644 drivers/serial/serial_efi.c
 create mode 100644 drivers/video/efi_gop.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
