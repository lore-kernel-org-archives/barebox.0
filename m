Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XD-VO
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:56 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:41 +0100
Message-Id: <20190215125348.12851-2-ejo@pengutronix.de>
In-Reply-To: <20190215125348.12851-1-ejo@pengutronix.de>
References: <20190215125348.12851-1-ejo@pengutronix.de>
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
Subject: [PATCH 1/8] doc: bootchooser: fix typos etc.
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 05725d8f21..667ab7d736 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -3,7 +3,7 @@
 Barebox Bootchooser
 ===================
 
-In many cases embedded systems are layed out redundantly with multiple
+In many cases embedded systems are laid out redundantly with multiple
 kernels and multiple root file systems. The *bootchooser* framework provides
 the building blocks to model different use cases without the need to start
 from scratch over and over again.
@@ -60,7 +60,7 @@ the boot target won't be booted anymore. To prevent that, the ``remaining_attemp
 counter must be reset to its default. There are different flags in the
 *bootchooser* which control resetting the ``remaining_attempts`` counter,
 controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
-list of space separated flags. Possible values are:
+list of space-separated flags. Possible values are:
 
 - empty: counters will never be reset
 - ``power-on``: The ``remaining_attempts`` counters of all enabled boot targets are reset
@@ -97,7 +97,7 @@ options not specific to any boot target.
 ``global.bootchooser.reset_attempts``
   Already described in :ref:`Bootchooser Algorithm <bootchooser,algorithm>`
 ``global.bootchooser.reset_priorities``
-  A space separated list of events that cause *bootchooser* to reset the priorities of
+  A space-separated list of events that cause *bootchooser* to reset the priorities of
   all boot targets. Possible values:
 
   * empty: priorities will never be reset
@@ -111,7 +111,7 @@ options not specific to any boot target.
   Variable prefix when *bootchooser* is used with the *state* framework as backend
   for storing run-time data, see below.
 ``global.bootchooser.targets``
-  Space separated list of boot targets that are used. For each entry in the list
+  Space-separated list of boot targets that are used. For each entry in the list
   a corresponding
   set of ``global.bootchooser.<targetname>.<variablename>`` variables must exist.
 ``global.bootchooser.last_chosen``
@@ -125,7 +125,7 @@ Setup Example
 We want to set up a redundant machine with two bootable systems within one shared
 memory, here a NAND type flash memory with a UBI partition. We have a 512 MiB NAND
 type flash, to be used only for the root filesystem. The devicetree doesn't
-define any partition, because we want to run one UBI partition with two volumens
+define any partition, because we want to run one UBI partition with two volumes
 for the redundant root filesystems on this flash memory.
 
 .. code-block:: text
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
