Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCqJ-000453-Cg
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:30:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Dec 2020 10:29:52 +0100
Message-Id: <20201207092952.21438-3-s.hauer@pengutronix.de>
In-Reply-To: <20201207092952.21438-1-s.hauer@pengutronix.de>
References: <20201207092840.GH3977@pengutronix.de>
 <20201207092952.21438-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] images: i.MX: fill in crc in IMD crc tags
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <y.bas@phytec.de>

FIXME: This also generates crcs in the signed images which invalidates
the signature.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 514db326bb..808c7a13e8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -26,7 +26,7 @@ endef
 .SECONDEXPANSION:
 define imx_image_rule
 $(eval
-$$(obj)/%.$(strip $(1)): $$(obj)/% $$$$(CFG_%.imximg) FORCE
+$$(obj)/%.$(strip $(1)): $$(obj)/%.imdcrc $$$$(CFG_%.imximg) FORCE
 	$$(call if_changed,imx_image,$$(CFG_$$(patsubst %.$(strip $(1)),%.imximg,$$(@F))),$(strip $(2)))
 )
 endef
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
