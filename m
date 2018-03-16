Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-000687-4c
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:45 +0100
Message-Id: <20180316125354.23462-10-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/78] ARM: android image: Fix compiler warning on aarch64
To: Barebox List <barebox@lists.infradead.org>

The android image format has a u32 value which tells the loader
where to put the ATAG list. Casting this value to a pointer directly
causes a warning on aarch64. Silence it by casting it to unsigned
long first. The code is of no use on aarch64, so no need to fix anything
really.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 25efb42541..9c6174adfe 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -522,7 +522,7 @@ static int do_bootm_aimage(struct image_data *data)
 		linux_bootargs_overwrite(header->cmdline);
 
 	if (!getenv("aimage_noverwrite_tags"))
-		armlinux_set_bootparams((void*)header->tags_addr);
+		armlinux_set_bootparams((void *)(unsigned long)header->tags_addr);
 
 	cmp = &header->second_stage;
 	if (cmp->size) {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
