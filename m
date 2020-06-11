Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjICX-0002r8-Ix
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 08:04:43 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 11 Jun 2020 10:02:00 +0200
Message-Id: <20200611080207.6482-1-cleger@kalray.eu>
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
Subject: [PATCH v5 0/7] elf: add better bootm support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
simply pass the file to the bootm handler and the read done on it will
read the entire flash partition. This series starts by some cleanup and
then modify the elf loader to load the elf file without copying the whole
elf file to an intermediate buffer. Only the elf header is copied in
order to parse the elf file into a list of segment and then, the segments
are loaded directly from the file.

A special handling for the elf file is also added in bootm data to allow
using directly the elf file structure. Finally the mips bootm handler is
modified to use bootm_load_os directly instead of manual elf loading.

Compilation for both mips and arm has been tested but run on qemu-malta was not
possible. Changes have been tested on kvx architecture for which bootm support
has been added and will be submitted.

Changes v4 -> v5
 - Rework elf loading to load from file rather than a buffer
 - Use calloc instead of xzalloc in elf file loading
 - Add check of program headers in elf check

Changes v3 -> v4
 - Fix init of elf entry address to be used by bootm_load_elf

Changes v2 -> v3
 - Integrate elf loading in bootm_load_os
 - Add patch to remove now unused elf_load_image/elf_release_image
 - Use malloc instead of xmalloc and check return value

Changes v1 -> v2
 - Add BOOTM_ELF config to select elf support and add checks in code
 - Add an elf_get_mem_size function to avoid computing elf size in bootm.c
 - Use xmalloc and read_full in elf_open instead of xzalloc/read
 - Fix data->elf NULL reset
 - Remove elf struct entirely from mips bootm code

Clement Leger (7):
  common: elf: fix warning on 32 bits architectures
  common: elf: use calloc instead of xzalloc
  common: elf: check number of elf program headers
  common: elf: load elf directly from file
  common: elf: add elf_open, elf_close and elf_load
  common: bootm: add support for elf file loading
  mips: lib: bootm: use bootm elf loading capabilities

 arch/mips/lib/bootm.c |  25 ++---
 common/Kconfig        |   8 ++
 common/bootm.c        |  33 ++++++
 common/elf.c          | 226 +++++++++++++++++++++++++++++++++++-------
 include/bootm.h       |   3 +
 include/elf.h         |   9 +-
 6 files changed, 248 insertions(+), 56 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
