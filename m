Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGO1K-0003JY-0A
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 10:07:31 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 24 Jun 2016 12:05:56 +0200
Message-Id: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 0/6] state: Refactor backend
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

Hi,

Version 2 has some additional bugfixes and previously missing patches.

write_full should use a const pointer and is required by the state refactor
patch as it uses const buffers to write.

The refactor patch has some fixups.

The new 3 patches from Michael fix some behaviour related to the direct bucket.

Best Regards,

Markus


Markus Pargmann (3):
  libfile: Change write_full to be have const buf
  state: Refactor state framework
  docs: Add/Update state documentation

Michael Grzeschik (3):
  state: also append backend storage stridesize
  state: backend_storage_direct: also use cached data on write
  barebox-state: handle flush errno correctly

 .../devicetree/bindings/barebox/barebox,state.rst  |    7 +-
 Documentation/user/state.rst                       |   46 +
 Documentation/user/user-manual.rst                 |    1 +
 common/Makefile                                    |    2 +-
 common/state.c                                     | 1720 --------------------
 common/state/Makefile                              |    8 +
 common/state/backend.c                             |  209 +++
 common/state/backend_bucket_circular.c             |  587 +++++++
 common/state/backend_bucket_direct.c               |  242 +++
 common/state/backend_format_dtb.c                  |  150 ++
 common/state/backend_format_raw.c                  |  329 ++++
 common/state/backend_storage.c                     |  471 ++++++
 common/state/state.c                               |  572 +++++++
 common/state/state.h                               |  267 +++
 common/state/state_variables.c                     |  493 ++++++
 drivers/misc/state.c                               |   64 +-
 include/libfile.h                                  |    2 +-
 include/state.h                                    |    4 +-
 lib/libfile.c                                      |    2 +-
 19 files changed, 3388 insertions(+), 1788 deletions(-)
 create mode 100644 Documentation/user/state.rst
 delete mode 100644 common/state.c
 create mode 100644 common/state/Makefile
 create mode 100644 common/state/backend.c
 create mode 100644 common/state/backend_bucket_circular.c
 create mode 100644 common/state/backend_bucket_direct.c
 create mode 100644 common/state/backend_format_dtb.c
 create mode 100644 common/state/backend_format_raw.c
 create mode 100644 common/state/backend_storage.c
 create mode 100644 common/state/state.c
 create mode 100644 common/state/state.h
 create mode 100644 common/state/state_variables.c

-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
