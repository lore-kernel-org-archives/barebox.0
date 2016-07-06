Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi45-0002Pf-PI
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:15 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  6 Jul 2016 10:19:41 +0200
Message-Id: <1467793185-3709-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v3 0/4] state: Refactor backend
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

Changes in v3:
- A central cache implementation bucket data. This is implemented as another
  bucket (backend_bucket_cached) which can access other buckets. See the
  updated diagram in the second patch.
- Fixup flush usage
- lazy initialization of buckets

Best Regards,

Markus


Markus Pargmann (3):
  libfile: Change write_full to be have const buf
  state: Refactor state framework
  docs: Add/Update state documentation

Michael Grzeschik (1):
  state: also append backend storage stridesize

 .../devicetree/bindings/barebox/barebox,state.rst  |    7 +-
 Documentation/user/state.rst                       |   46 +
 Documentation/user/user-manual.rst                 |    1 +
 common/Makefile                                    |    2 +-
 common/state.c                                     | 1720 --------------------
 common/state/Makefile                              |    9 +
 common/state/backend.c                             |  188 +++
 common/state/backend_bucket_cached.c               |  155 ++
 common/state/backend_bucket_circular.c             |  515 ++++++
 common/state/backend_bucket_direct.c               |  180 ++
 common/state/backend_format_dtb.c                  |  150 ++
 common/state/backend_format_raw.c                  |  329 ++++
 common/state/backend_storage.c                     |  525 ++++++
 common/state/state.c                               |  573 +++++++
 common/state/state.h                               |  277 ++++
 common/state/state_variables.c                     |  493 ++++++
 drivers/misc/state.c                               |   65 +-
 include/libfile.h                                  |    2 +-
 include/state.h                                    |    4 +-
 lib/libfile.c                                      |    2 +-
 20 files changed, 3455 insertions(+), 1788 deletions(-)
 create mode 100644 Documentation/user/state.rst
 delete mode 100644 common/state.c
 create mode 100644 common/state/Makefile
 create mode 100644 common/state/backend.c
 create mode 100644 common/state/backend_bucket_cached.c
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
