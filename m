Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg01U-0005QI-4B
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 04:59:10 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 06:58:47 +0200
Message-Id: <7cad4f09333beb4416baa0f03446e2ea568dd208.1561525118.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH 06/13] sections: fix macro for barebox_pbl_size
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

On ARM64 this did not contain the expected barebox_pbl size. Rework this
to be a substraction between __piggydata_start and __image_start, which
should cover the whole PBL.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/asm-generic/sections.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 0eb18f6..f584cad 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -8,12 +8,12 @@ extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
+extern char __piggydata_start[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
 
 #define barebox_image_size	(__image_end - __image_start)
 #define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
-#define barebox_pbl_size	(unsigned int)&_barebox_pbl_size
-
+#define barebox_pbl_size	(__piggydata_start - __image_start)
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
