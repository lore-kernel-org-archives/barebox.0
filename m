Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDRc-0007F1-An
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 11:21:36 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 22 Apr 2020 13:21:13 +0200
Message-Id: <20200422112119.23181-1-cleger@kalray.eu>
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
Subject: [PATCH 0/6] elf: add better bootm support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, when booting an elf file using bootm /dev/mtdx, bootm will
simply pass the file to the bootm and the read done on it will read the
entire flash partition. This series starts by some cleanup and then add an
elf_open function to load the elf size only based on the elf header.
A special handling for the elf file is also added in bootm data to allow
using directly the elf file structure. Finally the mips bootm is modified
to use this new elf member.

Clement Leger (6):
  common: elf: add computation of elf boundaries
  common: elf: fix warning on 32 bits architectures
  common: elf: split init to be reused from other function
  common: elf: add elf_open and elf_close
  common: bootm: add support for elf file loading
  mips: lib: bootm: use new data->elf member

 arch/mips/lib/bootm.c |  13 +-----
 common/bootm.c        |  27 +++++++++++
 common/elf.c          | 105 ++++++++++++++++++++++++++++++++++++++++--
 include/bootm.h       |   3 ++
 include/elf.h         |   9 ++++
 5 files changed, 141 insertions(+), 16 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
