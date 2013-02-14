Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U67We-0006Rt-Dd
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 22:43:33 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 25CCDFF8F3B
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 23:58:19 +0100 (CET)
Date: Thu, 14 Feb 2013 23:42:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130214224222.GX19322@game.jcrosoft.org>
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
Subject: [PATCH 0/5] add EFI GUID Partition Table support
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

HI,

	v2:
	 fix memory leak
	 filetype: full check
	 part name: comment
	 efi: make gpt primary and alternate check optional

	this add the support of the EFI GPT and named partition

The following changes since commit a40e76cebcbe8b025bafdefdc6e27b7553209ed7:

  Add warning above get_ram_size (2013-02-13 18:14:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/efi_gpt

for you to fetch changes up to 7825a076660b34dd08e4041f820fcbeb6a301e67:

  disk: partitions: add EFI GUID Partition Table (2013-02-14 05:59:31 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      linux/types: import __aligned_x64 from the kernel
      filetype: add GPT support
      partitons: add framework
      disk: introduce partition name
      disk: partitions: add EFI GUID Partition Table

 common/Kconfig             |   14 +------
 common/Makefile            |    2 +-
 common/filetype.c          |   47 +++++++++++++++++++++
 common/partitions.c        |  179 +++++++++++++++++++++++++++++++++++++------------------------------------------
 common/partitions/Kconfig  |   32 +++++++++++++++
 common/partitions/Makefile |    2 +
 common/partitions/dos.c    |   88 +++++++++++++++++++++++++++++++++++++++
 common/partitions/efi.c    |  477 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/partitions/efi.h    |  123 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/partitions/parser.h |   37 +++++++++++++++++
 include/filetype.h         |    1 +
 include/linux/efi.h        |  547 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/types.h      |   13 ++++++
 13 files changed, 1452 insertions(+), 110 deletions(-)
 create mode 100644 common/partitions/Kconfig
 create mode 100644 common/partitions/Makefile
 create mode 100644 common/partitions/dos.c
 create mode 100644 common/partitions/efi.c
 create mode 100644 common/partitions/efi.h
 create mode 100644 common/partitions/parser.h
 create mode 100644 include/linux/efi.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
