Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkerC-0001iw-FK
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 00:51:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so9147165qkj.0
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2019 16:51:30 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Fri, 18 Jan 2019 19:51:21 -0500
Message-Id: <20190119005121.31832-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] ARM: zii-vf610-dev: boot initrd from SD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

As for tftp, make use of the initramfs if one is present on the SD card.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
index cf8eec363..e9b087257 100644
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
@@ -2,3 +2,8 @@
 
 global.bootm.image=/mnt/sd/zImage
 global.bootm.oftree=/mnt/sd/${global.bootm.oftree}
+
+initramfs="/mnt/sd/initramfs"
+if [ -f "${initramfs}" ]; then
+	global.bootm.initrd="$initramfs"
+fi
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
