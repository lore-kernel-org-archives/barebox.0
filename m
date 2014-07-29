Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDju-0005Sb-5c
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:11:18 +0000
Received: by mail-la0-f51.google.com with SMTP id pn19so144031lab.10
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:25 +0400
Message-Id: <1406664625-19653-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 9/9] MIPS: ritmix-rzx50_defconfig: enable RTC support
To: barebox@lists.infradead.org

Also enable CONFIG_LONGHELP.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ritmix-rzx50_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index e6f10fb..3a2cf54 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -10,6 +10,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
@@ -36,6 +37,8 @@ CONFIG_CMD_OFTREE=y
 CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
 CONFIG_GPIO_JZ4740=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_JZ4740=y
 CONFIG_SHA1=y
 CONFIG_SHA224=y
 CONFIG_SHA256=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
