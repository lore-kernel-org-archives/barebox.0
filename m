Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDn2c-0005dE-L1
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 10:00:00 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 27 Sep 2019 11:59:50 +0200
Message-Id: <20190927095954.13168-1-bst@pengutronix.de>
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
Subject: [PATCH v4 0/4] Machine ID Support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Bastian Krause <bst@pengutronix.de>

By default systemd generates a machine id on first boot and tries to
persist it (see `man machine-id`). When the root file system is read-only
systemd cannot persist the machine id. In case multiple redundant slots
are used the machine id will vary. When not handled explicitly the
machine id will also change during system updates.

It is possible to pass a machine id to the kernel which will be used by
systemd (systemd.machine_id=).

This series adds a way to provide device-specific hashable information
to generate a unique, persistent id. The i.MX unique id from the OCOTP
registers is added as hashable exemplarily. The id is available as
global.machine_id in barebox. It can be overwritten with nv.machine_id
if necessary.
The machine id is passed on to the Kernel by bootm based on
global.bootm.provide_machine_id.

Changes since v3:
  - nvmem: ocotp: use existing OCOTP_UNIQUE_ID instead of introducing a
    new define
  - convert imx_ocotp_set_unique_machine_id() to void as it's return
    is not used, simplify it

Changes since v2:
  - set id to global.machine_id in init call instead of preparing the
    bootarg already (so it's usable within barebox, too)
  - move global.linux.bootargs.machine_id preparations to bootm code
  - make global.linux.bootargs.machine_id preparations conditionally,
    based on bootm.provide_machine_id
  - free machine id char pointer after globalvar_add_simple()
  - make global.machine_id a magicvar
  - make global.bootm.provide_machine_id a magicvar

Changes since (implicit) v1:
  - depend on SHA1 instead of selecting DIGEST/DIGEST_SHA1_GENERIC
  - add note about multiple sources providing hashables to kconfig
  - add note about no hashable provided to kconfig
  - remove warning about "no hashable info provided" along with pr_fmt
  - make machine_id_set_hashable()'s hashable parameter const
  - make a copy of the hashable provided rather than storing the pointer
  - hash data instead of pointer address
  - use basprintf() and dedicated variables for hex machine id/machine id
    bootarg
  - add static inline wrapper if CONFIG_MACHINE_ID is disabled
  - nvmem: ocotp: remove explicit address-of operator for unique_id_parts

Regards,
Bastian

Bastian Krause (3):
  common: machine_id: introduce machine id generation
  nvmem: ocotp: set unique id as machine-id hashable
  bootm: allow providing machine id to Kernel

Juergen Borleis (1):
  digest.h: needs errno definitions

 common/Kconfig        | 18 +++++++++++
 common/Makefile       |  1 +
 common/bootm.c        | 19 ++++++++++++
 common/machine_id.c   | 69 +++++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/ocotp.c | 19 ++++++++++++
 include/bootm.h       |  5 ++++
 include/digest.h      |  1 +
 include/machine_id.h  | 16 ++++++++++
 8 files changed, 148 insertions(+)
 create mode 100644 common/machine_id.c
 create mode 100644 include/machine_id.h

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
