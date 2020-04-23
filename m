Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRX30-0001Dm-2W
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 08:17:27 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 23 Apr 2020 10:17:05 +0200
Message-Id: <20200423081712.4022-1-cleger@kalray.eu>
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
Subject: [PATCH v2 0/6] elf: add better bootm support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
simply pass the file to the bootm and the read done on it will read the
entire flash partition. This series starts by some cleanup and then add an
elf_open function to load the elf file size only based on the elf header.
A special handling for the elf file is also added in bootm data to allow
using directly the elf file structure. Finally the mips bootm is modified
to use bootm elf loading capability.

Changes v1 -> v2
 - Add BOOTM_ELF config to select elf support and add checks in code
 - Add an elf_get_mem_size function to avoid computing elf size in bootm.c
 - Use xmalloc and read_full in elf_open instead of xzalloc/read
 - Fix data->elf NULL reset
 - Remove elf struct entirely from mips bootm code

Clement Leger (6):
  common: elf: add computation of elf boundaries
  common: elf: fix warning on 32 bits architectures
  common: elf: split init to be reused from other function
  common: elf: add elf_open and elf_close
  common: bootm: add support for elf file loading
  mips: lib: bootm: use bootm elf loading capabilities

 arch/mips/lib/bootm.c |  27 +++--------
 common/Kconfig        |   8 ++++
 common/bootm.c        |  30 ++++++++++++
 common/elf.c          | 107 ++++++++++++++++++++++++++++++++++++++++--
 include/bootm.h       |   3 ++
 include/elf.h         |  14 ++++++
 6 files changed, 164 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
