Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clz0W-0000rr-Ok
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 14:25:34 +0000
Received: from player795.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 32DF55E86A
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 15:25:09 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player795.ha.ovh.net (Postfix) with ESMTPA id 2EBC81200A8
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 15:25:07 +0100 (CET)
Date: Thu, 9 Mar 2017 15:31:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170309143117.GI4120@mail.ovh.net>
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
Subject: [PATCH 0/5] EFI Secure boot support
To: barebox@lists.infradead.org

Hi,

	This patch serie is the first one to add the secure boot support
	to barebox on efi

	For now on this will allow you to execute only properly signed EFI
	Application.

	And request confirmation for non signed binary other than EFI

	Later will add non signed EFI Application execution request at user
	request and MoK Support, add other goodies.

Please pull
The following changes since commit 071eb906506d478a3d0b04460625e64edbcd1294:

  efi: fix secure and setup mode report (2017-03-04 13:20:38 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/efi-sb

for you to fetch changes up to 99e61a9be467fab5b5127b1233c4c4e70288e84c:

  efi: enable sercure boot support (2017-03-04 13:20:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      boot: if we are in secure boot mode
      efi: enable sercure boot support

 arch/x86/Kconfig         |  1 +
 commands/go.c            |  7 +++++++
 common/Kconfig           |  8 ++++++++
 common/Makefile          |  1 +
 common/bootm.c           |  7 +++++++
 common/efi/efi-image.c   |  1 +
 common/secure_boot.c     | 43 +++++++++++++++++++++++++++++++++++++++++++
 drivers/efi/efi-device.c |  9 +++++++++
 include/bootm.h          |  1 +
 include/secure_boot.h    | 25 +++++++++++++++++++++++++
 10 files changed, 103 insertions(+)
 create mode 100644 common/secure_boot.c
 create mode 100644 include/secure_boot.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
