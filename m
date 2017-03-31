Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fd-Cc
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ctqb6-0000Vl-Rq
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 09:03:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <sha@pengutronix.de>) id 1ctqb6-00050J-Db
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 09:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:04 +0200
Message-Id: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: State patches
To: Barebox List <barebox@lists.infradead.org>

Hi All,

Here is a ton of patches working on the state framework:

- make code easier to follow
  - Drop cached backend, replace with open coded more direct code
  - drop backend as extra struct type
  - drop lazy init code
- update documentation
- Add keystore command
  Using authenticated state requires hardware support which currently
  is only available for i.MX6. At least for testing purposes a keystore
  command to set keys is useful. This way authenticated state can be
  tested without hardware support
- more robust conversion of the backend path to a device node
- make work better with NOR flash: The current code ended up reading
  from NOR Flash byte by byte which was painfully slow

----------------------------------------------------------------
Sascha Hauer (42):
      state: Make pointing to the backend using a phandle the only supported method
      state: Use positive logic
      state: backend: remove .get_packed_len
      state: backend: remove len_hint argument from state_storage_read
      state: Drop backend as extra struct type
      state: merge backend.c into state.c
      state: open code state_backend_init in caller
      state: remove unnecessary argument from state_format_init
      state: pass struct state * to storage functions
      state: storage: initialize variable once outside loop
      state: backend_circular: Read whole PEB
      state: drop lazy_init
      state: simplify direct backend
      state: replace len_hint logic
      state: Convert all bufs to void *
      state: Drop cache bucket
      state: backend-direct: Fix max_size
      state: bucket: Make output more informative
      state: backend_bucket_direct: max_size is always given
      state: backend: Add more fields to struct state_backend_storage
      state: backend_circular: remove unnecessary warning
      state: storage: direct: do not close file that is not opened
      state: backend: Add some documentation
      state: backend_circular: default to circular storage
      state: backend_circular: rewrite function doc
      state: backend_storage: Rename variable nr_copies to n_buckets
      state: backend_storage: Rename variable desired_copies to desired_buckets
      state: backend_storage: rewrite function doc
      state: backend_storage: make locally used variable static
      state: backend_storage: rename more variables
      keystore: implement forgetting secrets
      commands: implement keystore command
      commands: state: allow loading state with -l
      crypto: digest: initialize earlier
      state: backend_raw: alloc digest only when needed
      state: backend_circular: Set minumum writesize to 8
      state: backend bucket circular: Explain metadata
      state: Allow to load without authentification
      state: Update documentation
      state: Do not load state during state_new_from_node
      state: Remove -EUCLEAN check from userspace tool
      state: find device node from device path, not from device node path

 .../devicetree/bindings/barebox/barebox,state.rst  |  33 +-
 Documentation/user/state.rst                       |  33 +-
 commands/Kconfig                                   |   6 +
 commands/Makefile                                  |   1 +
 commands/keystore.c                                | 100 +++++
 commands/state.c                                   |  21 +-
 common/state/Makefile                              |   2 -
 common/state/backend.c                             | 189 ---------
 common/state/backend_bucket_cached.c               | 155 -------
 common/state/backend_bucket_circular.c             |  96 ++---
 common/state/backend_bucket_direct.c               |  20 +-
 common/state/backend_format_dtb.c                  |  13 +-
 common/state/backend_format_raw.c                  | 127 +++---
 common/state/backend_storage.c                     | 456 ++++++++-------------
 common/state/state.c                               | 188 +++++++--
 common/state/state.h                               |  71 ++--
 crypto/hmac.c                                      |   2 +-
 crypto/keystore.c                                  |  53 ++-
 crypto/sha1.c                                      |   2 +-
 crypto/sha2.c                                      |   2 +-
 crypto/sha4.c                                      |   2 +-
 drivers/misc/state.c                               |   6 +
 include/crypto/keystore.h                          |   4 +
 include/state.h                                    |   1 +
 24 files changed, 713 insertions(+), 870 deletions(-)
 create mode 100644 commands/keystore.c
 delete mode 100644 common/state/backend.c
 delete mode 100644 common/state/backend_bucket_cached.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
