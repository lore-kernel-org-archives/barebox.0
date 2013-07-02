Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56d-0005a9-70
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:15 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so2471350bkc.21
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:46 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:29 +0200
Message-Id: <1372788879-11028-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 00/10] OF: address and device related sync and cleanup
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

v3 of this patch set includes fixes introduced with v2 that have been
sent as separate patches. Also patch 5 is inserted to not break OF
gpio parsing with subsequent patches.

This time I have tested the OF gpio patches on Marvell Dove; side
effect: Orion GPIO driver that I will post as part of the MVEBU DT
improvement patches.

Sebastian Hesselbarth (10):
  OF: import address related functions from Linux OF API
  OF: convert of_translate_address to new API
  OF: base: move OF_ROOT_NODE_ defines to local OF code
  OF: import bus/device related functions from Linux OF API
  OF: gpio: convert DT based gpio handling to new OF API
  OF: base: use of_platform_populate for probing
  OF: base: remove dead device related functions
  OF: remove device and resource pointer from struct device_node
  OF: base: convert of_add_memory to OF API
  OF: base: rename of_free to of_delete_node

 commands/of_node.c    |    2 +-
 commands/oftree.c     |    4 +-
 drivers/of/Makefile   |    4 +-
 drivers/of/address.c  |  437 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/of/base.c     |  339 +++++---------------------------------
 drivers/of/fdt.c      |    2 +-
 drivers/of/gpio.c     |   26 ---
 drivers/of/of_gpio.c  |   52 ++++++
 drivers/of/platform.c |  321 ++++++++++++++++++++++++++++++++++++
 drivers/spi/imx_spi.c |    1 +
 include/of.h          |   33 +++--
 include/of_address.h  |   72 ++++++++
 include/of_gpio.h     |   44 +++++
 13 files changed, 999 insertions(+), 338 deletions(-)
 create mode 100644 drivers/of/address.c
 delete mode 100644 drivers/of/gpio.c
 create mode 100644 drivers/of/of_gpio.c
 create mode 100644 drivers/of/platform.c
 create mode 100644 include/of_address.h
 create mode 100644 include/of_gpio.h

---
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
