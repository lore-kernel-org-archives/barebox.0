Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x244.google.com ([2a00:1450:400c:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDody-0001L5-CU
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 08:29:03 +0000
Received: by mail-wj0-x244.google.com with SMTP id j10so10566848wjb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 00:28:41 -0800 (PST)
Received: from localhost.localdomain (ppp109-252-108-40.pppoe.spdop.ru.
 [109.252.108.40])
 by smtp.gmail.com with ESMTPSA id v17sm2738910lja.43.2016.12.05.00.28.38
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Dec 2016 00:28:39 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 11:28:29 +0300
Message-Id: <20161205082829.22468-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: qemu-malta_defconfig: set MAX_IMAGE_SIZE = 4 MiB
To: barebox@lists.infradead.org

If barebox binary image size exceeds the 4 MiB then
qemu exits with the 'Could not load MIPS bios' message.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 004adac..9671e93 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,6 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="qemu-malta"
 CONFIG_PBL_IMAGE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=38400
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
