Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHUzw-0003Kd-5W
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 11:14:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Jan 2016 12:13:55 +0100
Message-Id: <1452251635-14689-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] barebox remote control: Documentation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/remote-control.rst | 121 ++++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100644 Documentation/user/remote-control.rst

diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
new file mode 100644
index 0000000..07fdd4c
--- /dev/null
+++ b/Documentation/user/remote-control.rst
@@ -0,0 +1,121 @@
+barebox remote control
+======================
+
+barebox remote control is for controlling barebox from a remote host via
+scripts. The barebox console is designed for human interaction,
+controlling it from a script is very error prone since UARTs do not
+offer reliable communication. Usually a tool like 'expect' is used for
+this purpose which uses its own language to communicate with the remote
+partner. The barebox remote control offers an alternative. barebox
+commands can be integrated into regular shell scripts running on the
+host:
+
+.. code-block:: sh
+
+  bbremote --port /dev/ttyUSB0 run "ls"
+
+Additionally files can be transferred from/to barebox and a regular
+console offers interactive access to barebox on flawy serial
+connections.
+
+Enabling remote control support
+-------------------------------
+
+To get remote control support barebox has to be compiled with
+CONFIG_RATP and CONFIG_CONSOLE_RATP enabled. Optionally CONFIG_FS_RATP
+can also be enabled.
+
+Running the bbremote tool
+-------------------------
+
+The bbremote host tool is written in python. To run it python2 has to be
+installed with the following additional packages:
+
++----------------+---------------------+
+| python package | Debian package name |
++================+=====================+
+| crcmod         | python-crcmod       |
++----------------+---------------------+
+| enum           | python-enum         |
++----------------+---------------------+
+| enum34         | python-enum34       |
++----------------+---------------------+
+
+configuring bbremote
+^^^^^^^^^^^^^^^^^^^^
+
+bbremote needs the port and possibly the baudrate to access the remote
+barebox. The port can be configured with the ``--baudrate`` option or
+with the ``BBREMOTE_PORT`` environment variable. The port can either be
+the device special file if it's a local port or if it's a remote port a
+string of the form: ``rfc2217://host:port``. The baudrate can be given
+with the ``--baudrate`` option or the ``BBREMOTE_BAUDRATE`` environment
+variable. For the rest of this document it is assumed that ``bbremote``
+has been configured using environment variables.
+
+running commands on the target
+------------------------------
+
+``bbremote`` can be used to run arbitrary commands on the remote
+barebox:
+
+.. code-block:: sh
+
+  bbremote run "echo huhu"
+  huhu
+
+The bbremote exit status will be 0 if the remote command exited
+successfully, 1 if the remote command failed and 127 if there was a
+communication error.
+
+**NOTE** It is possible to put the output into a shell variable for
+further processing, like ``RESULT=$(bbremote run "echo huhu")``.
+However, this string may contain unexpected messages from drivers and
+the like because currently we cannot filter out driver messages and
+messages to stderr.
+
+ping
+----
+
+This is a simple ping test.
+
+.. code-block:: sh
+
+  bbremote ping
+  pong
+
+getenv
+------
+
+.. code-block:: sh
+
+  bbremote getenv global.version
+  2015.12.0-00150-g81cd49f
+
+interactive console
+-------------------
+
+The bbremote tool also offers a regular interactive console to barebox.
+This is especially useful for flawy serial connections.
+
+.. code-block:: sh
+
+  bbremote console
+  barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ ls
+  .      ..     dev    env    mnt
+
+transferring files
+------------------
+
+With the bbremote tool it's possible to transfer files both from the
+host to barebox and from barebox to the host. Using the ``--export``
+option to bbremote a directory can be specified to export to barebox.
+This can be mounted on barebox using the regular mount command using
+``-t ratpfs`` as filesystem type.
+
+.. code-block:: sh
+
+  bbremote --export=somedir console
+  mkdir -p /ratpfs; mount -t ratpfs none /ratpfs
+  ls /ratpfs
+
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
