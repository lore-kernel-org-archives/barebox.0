Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gldlD-0003MT-V1
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 17:53:25 +0000
Received: by mail-qk1-x744.google.com with SMTP id y78so12698148qka.12
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2019 09:53:23 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Mon, 21 Jan 2019 12:53:05 -0500
Message-Id: <20190121175305.31674-2-vivien.didelot@gmail.com>
In-Reply-To: <20190121175305.31674-1-vivien.didelot@gmail.com>
References: <20190121175305.31674-1-vivien.didelot@gmail.com>
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
Subject: [PATCH 2/2] ARM: zii-vf610-dev: boot initrd from SD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

As for tftp, make use of the initramfs if one is present on the SD card.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
index 1a6f9706b..48476bd14 100644
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
@@ -12,3 +12,8 @@ path="/mnt/mmc${sd}.0"
 
 global.bootm.image="${path}/zImage"
 global.bootm.oftree="${path}/${global.bootm.oftree}"
+
+initramfs="${path}/initramfs"
+if [ -f "${initramfs}" ]; then
+	global.bootm.initrd="$initramfs"
+fi
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
