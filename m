Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7QZG-0000JO-3x
 for barebox@lists.infradead.org; Sun, 16 Aug 2020 21:51:56 +0000
Received: from radon.fritz.box (a89-183-41-155.net-htp.de [89.183.41.155])
 by lynxeye.de (Postfix) with ESMTPA id 47D18E74217
 for <barebox@lists.infradead.org>; Sun, 16 Aug 2020 23:42:46 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 16 Aug 2020 23:42:42 +0200
Message-Id: <20200816214242.137168-3-dev@lynxeye.de>
In-Reply-To: <20200816214242.137168-1-dev@lynxeye.de>
References: <20200816214242.137168-1-dev@lynxeye.de>
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
Subject: [PATCH 3/3] ARM: vexpress: enable KALLSYMS in defconfig
To: barebox@lists.infradead.org

Vexpress is mostly a vehicle to test things in a virtual enviroment,
so it makes sense to enable this option which helps a lot when trying
to debug where things go wrong.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/vexpress_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 149ba1732116..caa9f512d646 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -3,6 +3,7 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
 CONFIG_PROMPT="vexpress: "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
