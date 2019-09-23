Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNAr-0001si-Ba
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 12:10:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 14:10:12 +0200
Message-Id: <20190923121018.31574-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/6] scripts/dtc: rework dtc import handling
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux upstream doesn't use fdtget. barebox does however for IMD.
Commits 46bdae84e8 ("dtc: Update update-dtc-source.sh from Linux") and
4e731e48d4 ("scripts/dtc: Update to upstream version v1.5.0") broke
this, which the first two patches in this series fix. They should be
applied to upstream/master.

This probably went undtected because an old ftdget would survive a
mrproper, so this issue only happens on fresh check-outs.

The other 4 patches address the fact that the process by which we update
dtc is error-prone. This is evident by this patch and 1df07fbcdf
("scripts/dtc: Reenable fdtget"), which fixed the same issue a year
prior.

To address this add documentation on how to update dtc and make the
script easier to use. The update to v1.5.1 is included as well to test
this out, but can be dropped.

Ahmad Fatoum (6):
  scripts/dtc: Reinstate barebox-specifics in update-dtc-source.sh
  scripts/dtc: reinstate building of fdtget along with dtc
  scripts/dtc: git rm old files as part of update process
  scripts/dtc: mention dtc project in update-dtc-source.sh commit
    message
  scripts/dtc: Update to upstream version v1.5.1
  Documentation: document barebox device tree handling

 Documentation/devicetree/index.rst   |  56 +++-
 scripts/dtc/Makefile                 |   8 +-
 scripts/dtc/Makefile.dtc             |   1 +
 scripts/dtc/checks.c                 |  36 ++-
 scripts/dtc/data.c                   |  17 +-
 scripts/dtc/dtc-lexer.l              |  17 +-
 scripts/dtc/dtc-parser.y             |  17 +-
 scripts/dtc/dtc.c                    |  17 +-
 scripts/dtc/dtc.h                    |  20 +-
 scripts/dtc/fdtget.c                 | 369 +++++++++++++++++++++++++++
 scripts/dtc/flattree.c               |  19 +-
 scripts/dtc/fstree.c                 |  17 +-
 scripts/dtc/libfdt/Makefile.libfdt   |   3 +
 scripts/dtc/libfdt/fdt.c             |  56 +---
 scripts/dtc/libfdt/fdt.h             |  47 +---
 scripts/dtc/libfdt/fdt_addresses.c   | 102 ++++----
 scripts/dtc/libfdt/fdt_empty_tree.c  |  47 +---
 scripts/dtc/libfdt/fdt_overlay.c     |  85 ++----
 scripts/dtc/libfdt/fdt_ro.c          | 108 +++-----
 scripts/dtc/libfdt/fdt_rw.c          |  69 ++---
 scripts/dtc/libfdt/fdt_strerror.c    |  47 +---
 scripts/dtc/libfdt/fdt_sw.c          | 125 ++++-----
 scripts/dtc/libfdt/fdt_wip.c         |  47 +---
 scripts/dtc/libfdt/libfdt.h          | 199 +++++++++++----
 scripts/dtc/libfdt/libfdt_env.h      |  48 +---
 scripts/dtc/libfdt/libfdt_internal.h |  57 +----
 scripts/dtc/livetree.c               |  40 +--
 scripts/dtc/srcpos.c                 |  16 +-
 scripts/dtc/srcpos.h                 |  16 +-
 scripts/dtc/treesource.c             |  17 +-
 scripts/dtc/update-dtc-source.sh     |  16 +-
 scripts/dtc/util.c                   |  16 +-
 scripts/dtc/util.h                   |  20 +-
 scripts/dtc/yamltree.c               |  16 +-
 34 files changed, 873 insertions(+), 918 deletions(-)
 create mode 100644 scripts/dtc/fdtget.c

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
