Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTRgo-0002W3-EN
 for barebox@lists.infradead.org; Wed, 10 Feb 2016 10:08:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 10 Feb 2016 11:07:35 +0100
Message-Id: <1455098857-25339-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
References: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/4] Documentation: filesystems: tftp: bring in line with
 other filesystem docs
To: barebox@lists.infradead.org

Clarify that this is about the TFTP filesystem implementation, in
contrast to the tftp command.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/filesystems/tftp.rst | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesystems/tftp.rst
index e0a1159..b5bb1b3 100644
--- a/Documentation/filesystems/tftp.rst
+++ b/Documentation/filesystems/tftp.rst
@@ -2,15 +2,19 @@
 
 .. _filesystems_tftp:
 
-TFTP support
-============
+TFTP filesystem
+===============
 
-barebox has read/write support for the Trivial File Transfer Protocol.
+barebox has read/write support for the Trivial File Transfer Protocol (TFTP,
+`RFC1350 <https://tools.ietf.org/html/rfc1350>`_).
 
 TFTP is not designed as a filesystem. It does not have support for listing
-directories. This means a :ref:`command_ls` to a TFTP-mounted path will show an empty
-directory. Nevertheless, the files are there.
+directories. This means a :ref:`ls <command_ls>` to a TFTP-mounted path will
+show an empty directory. Nevertheless, the files are there.
 
 Example::
 
   mount -t tftp 192.168.23.4 /mnt/tftp
+
+In addition to the TFTP filesystem implementation, barebox does also have a
+:ref:`tftp command <command_tftp>`.
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
