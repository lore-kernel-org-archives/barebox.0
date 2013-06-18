Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22f.google.com ([2a00:1450:4008:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozjv-0006ov-N3
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:30:46 +0000
Received: by mail-bk0-f47.google.com with SMTP id jg1so1910464bkc.34
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:21 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:45 +0200
Message-Id: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/22] Barebox OF API fixes, sync, and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This is a quite large patch set to make Barebox OF API more behave
like Linux OF API. Also, it prepares Barebox to reuse Linux OF address
handling and drivers/of/of_* helpers soon.

The patch set is roughly divided into 5 sections:

(1) Patch 1 introduces case-insensitive string compare functions that will
    be used later during import of Linux OF API functions.

(2) Patches 2 and 3 fix some bugs in existing OF API functions.

(3) Patches 4-8 synchronize existing OF API functions with Linux OF API
    counterparts.

(4) Patches 9-18 import API functions from Linux OF API or introduce new
    functions based on existing Barebox OF API functions.

(5) Patches 19-22 convert to new API functions and remove now obsolete
    functions. Further, it cleans up existing OF include, by providing
    OFTREE prototypes and !OFTREE bogus stubs.

I have tested the patch set with both CONFIG_OFTREE set and not set.

The patch set applied to barebox/next can also be found at
git://github.com/shesselba/barebox-dove.git  barebox-of-sync-v1

Sebastian Hesselbarth (22):
  lib: string: import case-insensitive string compare
  OF: base: bail out early on missing matches for of_match_node
  OF: base: also update property length on of_property_write_u32
  OF: base: export of_alias_scan
  OF: base: convert strcmp to default string compare functions
  OF: base: sync of_find_property with linux OF API
  OF: base: sync of_find_node_by_path with linux OF API
  OF: base: rename of_node_disabled to of_device_is_available
  OF: base: import of_find_node_by_name from Linux OF API
  OF: base: import of_find_compatible_node from Linux OF API
  OF: base: import of_find_matching_node_and_match from Linux OF API
  OF: base: import of_find_node_with_property from Linux OF API
  OF: base: import parent/child functions from Linux OF API
  OF: base: import of_property_read_* helpers from Linux OF API
  OF: base: import of_parse_phandle from Linux OF API
  OF: base: import parse phandle functions from Linux OF API
  OF: base: introduce property write for bool, u8, u16, and u64
  OF: base: import property iterators from Linux OF API
  OF: base: remove of_tree_for_each_node from public API
  OF: base: remove of_find_child_by_name
  OF: base: convert and remove device_node_for_nach_child
  OF: base: cleanup base function include

 arch/arm/boards/at91sam9x5ek/hw_version.c |   10 +-
 arch/arm/boards/highbank/init.c           |   20 +-
 arch/ppc/mach-mpc5xxx/cpu.c               |    4 +-
 commands/of_node.c                        |    2 +-
 commands/of_property.c                    |   12 +-
 commands/oftree.c                         |   11 +-
 common/oftree.c                           |    2 +-
 drivers/i2c/i2c.c                         |    2 +-
 drivers/mfd/stmpe-i2c.c                   |    7 +-
 drivers/of/base.c                         | 1234 +++++++++++++++++++++++------
 drivers/of/fdt.c                          |   14 +-
 drivers/of/gpio.c                         |    9 +-
 drivers/of/of_net.c                       |    6 +-
 drivers/of/partition.c                    |    2 +-
 drivers/pinctrl/pinctrl.c                 |    4 +-
 drivers/spi/spi.c                         |   12 +-
 drivers/usb/imx/chipidea-imx.c            |   14 +-
 include/linux/string.h                    |    9 +
 include/of.h                              |  616 ++++++++++++--
 lib/string.c                              |   60 ++
 net/eth.c                                 |    2 +-
 21 files changed, 1624 insertions(+), 428 deletions(-)
---
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
