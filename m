Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZhEa-0003vc-Gy
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 12:10:53 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so927413lbo.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 04:10:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 16:10:39 +0400
Message-Id: <1353154239-31574-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 3/3] MIPS: qemu-malta_defconfig: use pbl
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 7ade1aa..7dab969 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,3 +1,4 @@
+CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
