Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0tSp-0008RI-7Q
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 14:18:48 +0000
Received: from [99.240.204.5] (port=42314 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0tS5-0006rV-St
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 10:18:01 -0400
Date: Sat, 28 Jun 2014 10:13:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406281011120.4521@localhost>
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
Subject: [PATCH] Documentation: Clean up sandbox.rst, use definition list.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Some minor cleanup to the sandbox.rst documentation file, mostly
involving using a definition list for the options.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i thought using a definition list here made the output cleaner, but
i'm willing to be convinced otherwise. also, all those backslashes
seemed unnecessary.

diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index 4601aed..558f111 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -4,64 +4,52 @@ Sandbox
 barebox can be run as a simulator on your host to check and debug new non
 hardware related features.

-Build barebox for simulation
-----------------------------
+Building barebox for simulation
+-------------------------------

-the barebox sand box can be built with the host compiler::
+The barebox sandbox can be built with the host compiler::

   ARCH=sandbox make sandbox_defconfig
   ARCH=sandbox make

-Run sandbox
------------
+Running the sandbox
+-------------------

-::
+Once you compile barebox for the sandbox, you can run it with::

-  $ barebox [\<OPTIONS\>]
+  $ barebox [<OPTIONS>]

-Options can be::
+Available sandbox invocation options include:

-  -m, --malloc=\<size\>
+  ``-m``, ``--malloc=<size>``

-Start sandbox with a specified malloc-space \<size\> in bytes.
+    Start sandbox with a specified malloc-space <size> in bytes.

-::
+  ``-i <file>``

-  -i \<file\>
+    Map a <file> to barebox. This option can be given multiple times. The <file>s
+    will show up as ``/dev/fd0`` ... ``/dev/fdX`` in the barebox simulator.

-Map a \<file\> to barebox. This option can be given multiple times. The \<file\>s
-will show up as /dev/fd0 ... /dev/fdx in the barebox simulator.
+  ``-e <file>``

-::
+    Map <file> to barebox. With this option <file>s are mapped as
+    ``/dev/env0`` ...  ``/dev/envX`` and thus are used as default environment.
+    A clean file generated with ``dd`` will do to get started with an empty environment.

-  -e \<file\>
+  ``-O <file>``

-Map \<file\> to barebox. With this option \<file\>s are mapped as /dev/env0 ...
-/dev/envx and thus are used as default environment. A clean file generated
-with dd will do to get started with an empty environment
+    Register <file> as a console capable of doing stdout. <file> can be a
+    regular file or a FIFO.

-::
+  ``-I <file>``

-  -O \<file\>
+    Register <file> as a console capable of doing stdin. <file> can be a regular
+    file or a FIFO.

-Register \<file\> as a console capable of doing stdout. \<file\> can be a
-regular file or a fifo.
+  ``-x``, ``--xres <res>``

-::
+    Specify SDL width.

-  -I \<file\>
+  ``-y``, ``--yres <res>``

-Register \<file\> as a console capable of doing stdin. \<file\> can be a regular
-file or a fifo.
-
-::
-
-  -x, --xres \<res\>
-
-Specify SDL width
-
-::
-
-  -y, --yres \<res\>
-
-Specify SDL height
+    Specify SDL height.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
