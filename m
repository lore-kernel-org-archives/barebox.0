Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAp-0000wa-FC
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:26 +0200
Message-Id: <20200617081126.5683-20-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/19] Documentation: Add document for parallel execution in
 barebox
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devel/devel.rst              | 14 ++++
 Documentation/devel/parallel-execution.rst | 92 ++++++++++++++++++++++
 Documentation/index.rst                    |  1 +
 3 files changed, 107 insertions(+)
 create mode 100644 Documentation/devel/devel.rst
 create mode 100644 Documentation/devel/parallel-execution.rst

diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
new file mode 100644
index 0000000000..041545a60d
--- /dev/null
+++ b/Documentation/devel/devel.rst
@@ -0,0 +1,14 @@
+.. highlight:: console
+
+barebox programming
+===================
+
+Contents:
+
+.. toctree::
+   :maxdepth: 2
+
+   parallel-execution
+
+* :ref:`search`
+* :ref:`genindex`
diff --git a/Documentation/devel/parallel-execution.rst b/Documentation/devel/parallel-execution.rst
new file mode 100644
index 0000000000..2a01d25276
--- /dev/null
+++ b/Documentation/devel/parallel-execution.rst
@@ -0,0 +1,92 @@
+Parallel execution in barebox
+=============================
+
+barebox is single threaded only and doesn't support interrupts. Nevertheless it
+is sometimes desired to execute code "in the background", like for example
+polling for completion of transfers or to regularly blink a heartbeat LED.  For
+these scenarios barebox offers some techniques described below.
+
+Pollers
+-------
+
+Pollers are a way in barebox to frequently execute code in the background.
+barebox is single threaded only, so a poller is not executed as a separate
+thread, but instead pollers are executed whenever ``is_timeout()`` is called.
+This has a few implications. First of all pollers are not executed when
+``is_timeout()`` is not called. For this and also other reasons loops polling
+for hardware should always include a timeout which is best implemented with
+``is_timeout()``. Another thing to take care about is that pollers can be
+executed anywhere in the middle of other device accesses. Care must be taken
+that a poller doesn't access a device from which itself is called from. See
+"slices" below on how devices can safely be accessed from pollers. Some
+operations are entirely forbidden from pollers. For example it is forbidden to
+access the virtual filesystem, as this could trigger arbitrary device accesses.
+The macro ``assert_command_context()`` is added to those places to make sure
+they are not called in the wrong context. The poller interface is declared in
+``include/poller.h``.  ``poller_register()`` is used to register a poller. The
+``struct poller_struct`` passed to ``poller_register()`` needs to have the
+``poller_struct.func()`` member populated with the function that shall be
+called. From the moment a poller is registered ``poller_struct.func()`` will be
+called regularly.
+
+A special poller can be registered with ``poller_async_register()``. A poller
+registered this way won't be called right away, instead running it can be
+triggered by calling ``poller_call_async()``. This will execute the poller
+after the ``@delay_ns`` argument. ``poller_call_async()`` may also be called
+from with the poller, so with this it's possible to run a poller regularly with
+configurable delays.
+
+Workqueues
+----------
+
+Sometimes pollers wish to run code that can't be directly executed from
+pollers.  For this case workqueues provide a way to asynchronously execute this
+code in a context where this is allowed. The workqueue interface is declared in
+``include/work.h``.
+
+``wq_register()`` is the first step to use the workqueue interface.
+``wq_register()`` registers a workqueue to which work items can be attached.
+Before registering a workqueue a ``struct work_queue`` has to be populated with
+two function callbacks.  ``work_queue.fn()`` is the callback that actually does
+the work once it is scheduled.  ``work_queue.cancel()`` is a callback which is
+executed when the pending work shall be cancelled. This is primarily for
+freeing the memory associated to a work item.  ``wq_queue_work()`` is for
+actually queueing a work item on a work queue. This can be called from poller
+code. Usually a work item is allocated by the poller and then freed either in
+``work_queue.fn()`` or in ``work_queue.cancel()``.
+
+Slices
+------
+
+Slices are a way to test if a device is currently busy and thus may not be
+called into currently. Pollers wanting to access a device must call
+``slice_acquired()`` on the slice provided by the device before calling into
+it. When the slice is acquired (which can only happen inside a poller) the
+poller can't continue at this moment and must try again next time it is
+executed. Devices providing a slice must call ``slice_acquire()`` before
+accessing the device and ``slice_release()`` afterwards. Slices can have
+dependencies to other slices, for example a USB network controller uses the
+corresponding USB host controller. A dependency can be expressed with
+``slice_depends_on()``. With this the USB network controller can add a
+dependency from the network device it provides itself to the USB host
+controller it depends on.  With this ``slice_acquired()`` on the network device
+will return ``true`` when the USB host controller is busy.
+
+Limitations
+-----------
+
+What barebox does is best described as cooperative multitasking. As pollers
+can't be interrupted it will directly affect the user experience when they take
+too long. When barebox reacts sluggish to key presses then probably pollers
+take too long to execute. A first test if this is the case can be done by
+executing ``poller -t`` on the command line. This command will print how many
+times we can execute all registered pollers in one second. When this number is
+too low then pollers are guilty.  Workqueues help to run longer running code,
+but during the time workqueues are executed nothing else happens. This means
+that when fastboot flashes an image in a workqueue then barebox won't react to
+any key presses on the command line.  The usage of the interfaces described in
+this document is not yet very widespread in barebox. The interfaces are used
+some places we need them, but there are other places which do not use them but
+should. For example using a LED driven by a I2C GPIO exander used as hearbeat
+LED won't work currently. Sooner or later the poller toggling the LED will do
+this right in the middle of an unrelated I2C transfer.
diff --git a/Documentation/index.rst b/Documentation/index.rst
index b7dae2396b..836dc41af2 100644
--- a/Documentation/index.rst
+++ b/Documentation/index.rst
@@ -19,6 +19,7 @@ Contents:
    boards
    glossary
    devicetree/*
+   devel/devel.rst
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
