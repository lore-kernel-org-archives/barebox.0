Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw3i0-00054T-Hc
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 11:37:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 12:36:58 +0100
Message-Id: <20190219113700.10172-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/2] scripts/dtc: Update to upstream version v1.4.7
To: barebox@lists.infradead.org

To play around with the new /omit-if-no-ref/ feature, I've enabled
update-dtc-source.sh for barebox and used it to update dtc to v1.4.7.

The second patch also reinstates the dtc-lexer.l and dtc-parser.y
files which were erroneously deleted in 
273dbe5f87 ("kbuild: generate lexer and parser during build instead of shipping").

Ahmad Fatoum (2):
  scripts/dtc: fix update-dtc-source.sh for barebox use
  scripts/dtc: Update to upstream version v1.4.7

 scripts/dtc/checks.c                 |  199 ++-
 scripts/dtc/data.c                   |    4 +-
 scripts/dtc/dtc-lexer.l              |  313 ++++
 scripts/dtc/dtc-lexer.lex.c_shipped  | 2253 -------------------------
 scripts/dtc/dtc-parser.tab.c_shipped | 2332 --------------------------
 scripts/dtc/dtc-parser.tab.h_shipped |  125 --
 scripts/dtc/dtc-parser.y             |  560 +++++++
 scripts/dtc/dtc.h                    |   12 +
 scripts/dtc/fdt.c                    |   81 +-
 scripts/dtc/fdt_addresses.c          |   35 +-
 scripts/dtc/fdt_overlay.c            |    6 +-
 scripts/dtc/fdt_ro.c                 |  199 ++-
 scripts/dtc/fdt_rw.c                 |   28 +-
 scripts/dtc/fdt_sw.c                 |  109 +-
 scripts/dtc/fdtdump.c                |  163 --
 scripts/dtc/fdtget.c                 |    8 +-
 scripts/dtc/fdtput.c                 |  362 ----
 scripts/dtc/flattree.c               |    2 +-
 scripts/dtc/libfdt.h                 |   76 +-
 scripts/dtc/libfdt_env.h             |    1 +
 scripts/dtc/libfdt_internal.h        |    5 +-
 scripts/dtc/livetree.c               |   38 +-
 scripts/dtc/treesource.c             |  222 ++-
 scripts/dtc/update-dtc-source.sh     |   23 +-
 scripts/dtc/util.c                   |   23 +-
 scripts/dtc/util.h                   |   20 +-
 scripts/dtc/version_gen.h            |    2 +-
 27 files changed, 1713 insertions(+), 5488 deletions(-)
 create mode 100644 scripts/dtc/dtc-lexer.l
 delete mode 100644 scripts/dtc/dtc-lexer.lex.c_shipped
 delete mode 100644 scripts/dtc/dtc-parser.tab.c_shipped
 delete mode 100644 scripts/dtc/dtc-parser.tab.h_shipped
 create mode 100644 scripts/dtc/dtc-parser.y
 delete mode 100644 scripts/dtc/fdtdump.c
 delete mode 100644 scripts/dtc/fdtput.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
