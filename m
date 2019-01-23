Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmKGZ-0006IG-P7
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 15:16:37 +0000
Received: by mail-qk1-x743.google.com with SMTP id 189so1271814qkj.8
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2019 07:16:35 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Wed, 23 Jan 2019 10:16:20 -0500
Message-Id: <20190123151620.4398-2-vivien.didelot@gmail.com>
In-Reply-To: <20190123151620.4398-1-vivien.didelot@gmail.com>
References: <20190123151620.4398-1-vivien.didelot@gmail.com>
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
Subject: [PATCH v2 2/2] ARM: zii-vf610-dev: boot initrd from SD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

As for tftp, make use of the initramfs if one is present on the SD card.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 .../boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
index 92dfae0ab..dd8e99ba6 100644
--- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
+++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
@@ -6,3 +6,8 @@ path="/mnt/mmc1.0"
 
 global.bootm.image="${path}/zImage"
 global.bootm.oftree="${path}/vf610-zii-${global.hostname}.dtb"
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
