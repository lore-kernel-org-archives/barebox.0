Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2fgt-00023u-Lj
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 12:00:42 +0000
Received: from [69.196.158.250] (port=35030 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2fgW-0006tI-It
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 08:00:16 -0400
Date: Thu, 3 Jul 2014 08:00:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407030759060.22279@localhost>
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
Subject: [PATCH] Documentation: Various tweaks to user manual, device tree
 chapter.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Grammar, typoes, font, link fixes.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 856ff6a..17934d8 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -4,29 +4,29 @@ Devicetree support
 ==================

 Flattened Device Tree (FDT) is a data structure for describing the hardware on
-a system. On an increasing number of boards both barebox and the Linux Kernel can
+a system. On an increasing number of boards, both barebox and the Linux kernel can
 probe their devices directly from devicetrees. barebox needs the devicetree compiled
-into the binary. The Kernel usually does not have a devicetree compiled in, instead
-the Kernel expects to be passed a devicetree from the bootloader.
+into the binary. The kernel usually does not have a devicetree compiled in; instead,
+the kernel expects to be passed a devicetree from the bootloader.

 From a bootloader's point of view, using devicetrees has the advantage that the
-same devicetree is used to probe both the Kernel and the Bootloader; this
+same devicetree can be used by both the bootloader and the kernel; this
 drastically reduces porting effort since the devicetree has to be written only
-once (and with luck somebody has already written a devicetree for the Kernel).
-Probing barebox from devicetree is highly recommended for new projects.
+once (and with luck somebody has already written a devicetree for the kernel).
+Having barebox consult a devicetree is highly recommended for new projects.

 .. _internal_devicetree:

 The internal devicetree
 -----------------------

-The devicetree barebox has been probed from plays a special role. It is referred to
-as the :ref:`internal_devicetree`. The barebox devicetree commands work on this
-devicetree. The devicetree source (DTS) files are kept in sync with the Kernel DTS
+The devicetree consulted by barebox plays a special role. It is referred to
+as the "internal devicetree." The barebox devicetree commands work on this
+devicetree. The devicetree source (DTS) files are kept in sync with the kernel DTS
 files. As the FDT files are meant to be backward compatible, it should always be possible
-to start a Kernel with the barebox internal devicetree. However, since the barebox
+to start a kernel with the barebox internal devicetree. However, since the barebox
 devicetree may not be complete or contain bugs it is always possible to start the
-Kernel with another devicetree than barebox has been started with.
+kernel with a devicetree different from the one used by barebox.
 If a device has been probed from the devicetree then using the :ref:`command_devinfo`
 command on it will show the corresponding devicetree node:

@@ -73,10 +73,11 @@ work on the internal devicetree. It is possible to add/remove nodes using the

 It is important to know that these commands always work on the internal
 devicetree. If you modify the internal devicetree to influence the behaviour of
-a Kernel booted later, make sure that you start the kernel with the internal
+a kernel booted later, make sure that you start the kernel with the internal
 devicetree (i.e. don't pass a devicetree to the :ref:`command_bootm` command). If you
-wish to use another devicetree than the internal devicetree for starting the Kernel,
-you can exchange the internal devicetree during runtime:
+wish to use another devicetree than the internal devicetree for starting the kernel,
+you can exchange the internal devicetree during runtime using the
+:ref:`command_oftree` command:

 .. code-block:: sh


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
