Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVBGa-0001aY-9v
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 08:13:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id 64so1571149pfr.9
 for <barebox@lists.infradead.org>; Fri, 07 Dec 2018 00:13:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri,  7 Dec 2018 00:13:22 -0800
Message-Id: <20181207081322.15539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] Documentation: i.MX: Document how to use GPT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Document a way to avoid clashes between i.MX boot info/Barebox and
GPT's Partition Entry Array.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx.rst | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 99ca10b7c..a87acbee2 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -60,6 +60,25 @@ The images can also always be started second stage::
 
   bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
 
+Using GPT on i.MX
+^^^^^^^^^^^^^^^^^
+
+For i.MX SoCs that place vendor specific header at +1KiB mark of a
+boot medium, special care needs to be taken when parition that medium
+with GPT. In order to make room for i.MX boot headr GPT Partition
+Entry Array needs to be moved from its typical location, LBA 2, to an
+offset past vendor specific information. One way to do this would be
+to use ``-j`` or ``--adjust-main-table`` option of ``sgdisk``. For
+example, the following sequence:
+
+  sgdisk -Z <block device>
+  sgdisk -o -j 2048 -n 1:8192:+100M <block device>
+
+will create a single GPT partition starting at LBA 8192 and would
+place Partition Entry Array starting at LBA 2048 which should leave
+enough room for Barebox/i.MX boot header. Once that is done ``dd``
+command above can be used to place Barebox on the same medium.
+
 Information about the ``imx-image`` tool
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
