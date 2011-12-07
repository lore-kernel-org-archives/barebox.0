Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzu-00068i-3F
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:53:07 +0100
Message-Id: <1323262387-8012-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] x86: Fix linker script for magic vars
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/lib/barebox.lds.S |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 716cea6..c7d5175 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -172,7 +172,7 @@ SECTIONS
 
 	.barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
 		__barebox_magicvar_start = .;
-		.barebox_magicvar : { BAREBOX_MAGICVARS }
+		BAREBOX_MAGICVARS
 		__barebox_magicvar_end = .;
 		. = ALIGN(4);
 	} > barebox
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
