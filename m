Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdQh-0004q6-Az
 for barebox@lists.infradead.org; Fri, 31 May 2019 09:02:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hWdQf-0005Ib-Lr
 for barebox@lists.infradead.org; Fri, 31 May 2019 11:02:25 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hWdQf-0005g3-Ec
 for barebox@lists.infradead.org; Fri, 31 May 2019 11:02:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 31 May 2019 11:02:23 +0200
Message-Id: <20190531090224.21707-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: panic with a message when relocation type is unknown
To: barebox@lists.infradead.org

Currently such failures result in a

	>00000000 00000000

	### ERROR ### Please RESET the board ###

With this patch this now becomes

	>00000000 00000000
	Unknown relocation type
	### ERROR ### Please RESET the board ###

which improves user experience a little bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 821cafbf26c2..3668c5977ca9 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -78,7 +78,7 @@ void relocate_to_current_adr(void)
 			putc_ll(' ');
 			puthex_ll(rel->r_addend);
 			putc_ll('\n');
-			panic("");
+			panic("Unknown relocation type");
 		}
 
 		dstart += sizeof(*rel);
@@ -108,7 +108,7 @@ void relocate_to_current_adr(void)
 			putc_ll(' ');
 			puthex_ll(rel->r_offset);
 			putc_ll('\n');
-			panic("");
+			panic("Unknown relocation type");
 		}
 
 		dstart += sizeof(*rel);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
