Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmQ-0005xL-FZ
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:10 +0000
Received: by mail-la0-f53.google.com with SMTP id gl10so1182928lab.12
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:33 +0400
Message-Id: <1406741676-1641-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
References: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] MIPS: ritmix-rzx50_defconfig: enable LED-related stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/ritmix-rzx50_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index e6f10fb..232faa2 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -29,12 +29,18 @@ CONFIG_CMD_GETOPT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
 CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_GPIO_JZ4740=y
 CONFIG_SHA1=y
 CONFIG_SHA224=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
