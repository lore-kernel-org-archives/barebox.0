Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMACH-0008IM-8r
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 05:21:05 +0000
Received: by mail-la0-f52.google.com with SMTP id ev20so5121355lab.39
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 22:20:43 -0700 (PDT)
From: Dmitry Smagin <dmitry.s.smagin@gmail.com>
Date: Wed, 18 Sep 2013 09:20:33 +0400
Message-Id: <1379481633-24534-4-git-send-email-dmitry.s.smagin@gmail.com>
In-Reply-To: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
References: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: [PATCH 3/3] MIPS: rzx50_defconfig: enable devicetree
To: barebox@lists.infradead.org
Cc: Dmitry Smagin <dmitry.s.smagin@gmail.com>

Signed-off-by: Dmitry Smagin <dmitry.s.smagin@gmail.com>
---
 arch/mips/configs/rzx50_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/configs/rzx50_defconfig b/arch/mips/configs/rzx50_defconfig
index 7b75909..7691bae 100644
--- a/arch/mips/configs/rzx50_defconfig
+++ b/arch/mips/configs/rzx50_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="rzx50"
 CONFIG_MACH_MIPS_XBURST=y
 CONFIG_JZ4750D_DEBUG_LL_UART1=y
 CONFIG_PBL_IMAGE=y
@@ -27,6 +29,10 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
 CONFIG_SHA1=y
 CONFIG_SHA224=y
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
