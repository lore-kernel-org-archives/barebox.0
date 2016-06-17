Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDpuC-0000YY-L8
 for barebox@lists.infradead.org; Fri, 17 Jun 2016 09:17:37 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 17 Jun 2016 11:14:35 +0200
Message-Id: <1466154875-3080-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1466154875-3080-1-git-send-email-mpa@pengutronix.de>
References: <1466154875-3080-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 2/2] docs: Add/Update state documentation
To: barebox@lists.infradead.org

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst  |  4 +-
 Documentation/user/state.rst                       | 46 ++++++++++++++++++++++
 Documentation/user/user-manual.rst                 |  1 +
 3 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/user/state.rst

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index d50765705348..bcc3b3be10cd 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -36,7 +36,9 @@ Optional properties:
 
 * ``algo``: A HMAC algorithm used to detect manipulation of the data
   or header, sensible values follow this pattern ``hmac(<HASH>)``,
-  e.g. ``hmac(sha256)``.
+  e.g. ``hmac(sha256)``. Only used for ``raw``.
+* ``backend-stride``: Maximum size per copy of the data. Only important for
+  non-MTD devices
 
 Variable nodes
 --------------
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
new file mode 100644
index 000000000000..c401f105bd64
--- /dev/null
+++ b/Documentation/user/state.rst
@@ -0,0 +1,46 @@
+Barebox State Framework
+=======================
+
+The state framework is build to exchange data between Barebox and Linux
+userspace using a non-volatile storage. There are several components involved.
+Barebox has a state driver to access the variables. For the Linux Userspace
+there is a userspace tool.
+
+Devicetree
+----------
+
+Currently the devicetree defines the layout of the variables and data.
+Variables are fixed size. Several types are supported, see the binding
+documentation for details.
+
+Data Formats
+------------
+
+The state data can be stored in different ways. Currently two formats are
+available, ``raw`` and ``dtb``. Both format the state data differently.
+Basically these are serializers. The raw serializer additionally supports a
+HMAC algorithm to detect manipulations.
+
+Storage Backends
+----------------
+
+The serialized data can be stored to different backends which are automatically
+selected depending on the defined backend in the devicetree. Currently two
+implementations exist, ``circular`` and ``direct``. ``circular`` writes the
+data sequentially on the backend storage device. Each save is appended until
+the storage area is full. It then erases the block and starts from offset 0.
+``circular`` is used for MTD devices with erase functionality. ``direct``
+writes the data directly to the file without erasing.
+
+For all backends multiple copies are written to handle read errors.
+
+Commands
+--------
+
+The ``state`` command can be used to store and manipulate the state. Using
+``state`` without argument lists you all available states with their name.
+``devinfo STATE_NAME`` shows you all variables and their values. ``state -s``
+stores the state.
+
+Starting Barebox will automatically load the last written state. If loading the
+state fails the defaults are used.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index be44f0d64541..5841ea625c09 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -31,6 +31,7 @@ Contents:
    system-setup
    reset-reason
    system-reset
+   state
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
