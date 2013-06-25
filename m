Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPR9-0000IL-Tv
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:22 +0000
Received: by mail-ee0-f47.google.com with SMTP id e49so6461604eek.20
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 02:20:57 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 25 Jun 2013 11:20:38 +0200
Message-Id: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/9] OF: address and device related sync and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set comprises a quite unsorted bunch of patches to further
improve and cleanup OF API. With address and device related functions,
two more API sets of Linux OF API are imported and modified to match
barebox driver core.

With above API improvements, device and resource pointer are removed
from struct device_node. Futher, of_translate_address, of_probe, and
of_add_memory are converted to recently introduced OF API.

At last, of_free is renamed to of_delete_node, which gives a better
impression of what the function is doing.

Sebastian Hesselbarth (9):
  OF: import address related functions from Linux OF API
  OF: convert of_translate_address to new API
  OF: base: move OF_ROOT_NODE_ defines to local OF code
  OF: import bus/device related functions from Linux OF API
  OF: base: use of_platform_populate for probing
  OF: base: remove dead device related functions
  OF: remove device and resource pointer from struct device_node
  OF: base: convert of_add_memory to OF API
  OF: base: rename of_free to of_delete_node

 commands/of_node.c    |    2 +-
 commands/oftree.c     |    4 +-
 drivers/of/Makefile   |    2 +-
 drivers/of/address.c  |  437 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/of/base.c     |  339 +++++---------------------------------
 drivers/of/fdt.c      |    2 +-
 drivers/of/gpio.c     |    6 +-
 drivers/of/platform.c |  294 +++++++++++++++++++++++++++++++++
 include/of.h          |   30 +++-
 include/of_address.h  |   72 ++++++++
 10 files changed, 879 insertions(+), 309 deletions(-)
 create mode 100644 drivers/of/address.c
 create mode 100644 drivers/of/platform.c
 create mode 100644 include/of_address.h

---
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
