Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZV-00036J-Kc
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:52:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2019 14:51:51 +0200
Message-Id: <20190822125158.10296-2-s.hauer@pengutronix.de>
In-Reply-To: <20190822125158.10296-1-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] ARM: aarch64: Fixup relocation table for the second
 relocation
To: Barebox List <barebox@lists.infradead.org>

In case we want to relocate the binary multiple times we have to
adjust the relocation table itself for any further relocations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 4d957da1dc..c81b2b3791 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -84,6 +84,8 @@ void relocate_to_current_adr(void)
 			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = rel->r_addend + offset;
+			rel->r_addend += offset;
+			rel->r_offset += offset;
 		} else {
 			putc_ll('>');
 			puthex_ll(rel->r_info);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
