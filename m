Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0pqq-0006p4-4B
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 10:27:20 +0000
Received: from [99.240.204.5] (port=39457 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0pqH-0007vP-RV
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 06:26:45 -0400
Date: Sat, 28 Jun 2014 06:22:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406280621410.30555@localhost>
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
Subject: [PATCH] Documentation: Minor editing changes to filesystems content.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/Documentation/filesystems/nfs.rst b/Documentation/filesystems/nfs.rst
index b8ad4f3..f4eda5d 100644
--- a/Documentation/filesystems/nfs.rst
+++ b/Documentation/filesystems/nfs.rst
@@ -5,7 +5,7 @@
 NFS Support
 ===========

-barebox has readonly support for NFSv3 un UDP mode.
+barebox has readonly support for NFSv3 in UDP mode.

 Example::

diff --git a/Documentation/filesystems/ramfs.rst b/Documentation/filesystems/ramfs.rst
index 70e7282..b7ece1a 100644
--- a/Documentation/filesystems/ramfs.rst
+++ b/Documentation/filesystems/ramfs.rst
@@ -3,10 +3,10 @@
 RAM filesystem
 ==============

-ramfs is a simple malloc based filesystem. An instance of ramfs is
-mounted during startup on /. The filesystem type passed to mount is
-'ramfs'
+ramfs is a simple malloc-based filesystem. An instance of ramfs is
+mounted during startup on /. The filesystem type passed to ``mount``
+is ``ramfs``.

-example::
+Example::

   mount none ramfs /somedir
diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index 273be5e..e0a1159 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -8,8 +8,8 @@ TFTP support
 barebox has read/write support for the Trivial File Transfer Protocol.

 TFTP is not designed as a filesystem. It does not have support for listing
-directories. This means a :ref:`command_ls` to a TFTP mounted path will show an empty
-directory. Nevertheless the files are there.
+directories. This means a :ref:`command_ls` to a TFTP-mounted path will show an empty
+directory. Nevertheless, the files are there.

 Example::


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
