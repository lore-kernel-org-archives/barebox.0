Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzPB3-00083j-3k
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:46:19 +0000
Received: by mail-wg0-f41.google.com with SMTP id a1so198571wgh.0
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 04:45:54 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 13:45:35 +0200
Message-Id: <1403610336-5949-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/3] ARM: mvebu: select PCI specific DT bus translator
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Marvell MVEBU DT files contain some nodes mapped to PCI address space,
add the translator Kconfig to be able to iomap those node's addresses.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3b8a2a2207e4..8465d4a7f739 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -95,6 +95,7 @@ config ARCH_MVEBU
 	select HAVE_PBL_MULTI_IMAGES
 	select MVEBU_MBUS
 	select OFTREE
+	select OF_ADDRESS_PCI
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
