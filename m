Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdAq-0005GA-96
 for barebox@lists.infradead.org; Fri, 01 Nov 2019 20:05:33 +0000
Received: from astat.fritz.box (a89-183-34-18.net-htp.de [89.183.34.18])
 by lynxeye.de (Postfix) with ESMTPA id 67982E7421F
 for <barebox@lists.infradead.org>; Fri,  1 Nov 2019 20:53:45 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Nov 2019 20:53:38 +0100
Message-Id: <20191101195338.7597-2-dev@lynxeye.de>
In-Reply-To: <20191101195338.7597-1-dev@lynxeye.de>
References: <20191101195338.7597-1-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: force TEXT_BASE to zero only for relocatable build
To: barebox@lists.infradead.org

Commit 2a94e821ba2e (ARM: For relocatable image force TEXT_BASE 0x0)
intended to force the TEXT_BASE to zero for relocatable images, but
the change added the Kconfig symbol overriding the TEXT_BASE
unconditionally. This breaks non-relocatable images.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 652ac24ce3fa..f4e943a8fd8a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -19,9 +19,11 @@ config ARM_USE_COMPRESSED_DTB
 	select UNCOMPRESS
 	select LZO_DECOMPRESS
 
+if RELOCATABLE
 config TEXT_BASE
 	hex
 	default 0x0
+endif
 
 menu "System Type"
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
