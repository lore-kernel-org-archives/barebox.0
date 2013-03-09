Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4I-0005Sy-CE
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:47 +0000
Received: by mail-we0-f174.google.com with SMTP id r6so2305476wey.33
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:44 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:38 +0100
Message-Id: <1362871182-25726-6-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 5/9] panda: remove unused configuration items
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/configs/panda_xload_defconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index 1ed20a1..5cedcff 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -6,9 +6,6 @@ CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x8f000000
-CONFIG_MALLOC_BASE=0x84000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_PROMPT="barebox> "
 CONFIG_SHELL_NONE=y
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
