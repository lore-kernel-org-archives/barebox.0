Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgqk-0007yb-03
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 11:28:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id l2so18103492lja.6
 for <barebox@lists.infradead.org>; Wed, 15 Jan 2020 03:28:34 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jan 2020 14:28:28 +0300
Message-Id: <20200115112828.20050-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: actually use CONFIG_MIPS_RELOCATION_TABLE_SIZE
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

The commit 28ed10d6a67c9 ("MIPS: relocation: add relocation support")
introduce the Kconfig CONFIG_MIPS_RELOCATION_TABLE_SIZE parameter
but it is never used.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index e96c3bf6e2..693a778980 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -54,7 +54,7 @@ SECTIONS
 	.data.reloc : {
 		__rel_start = .;
 		BYTE(0x0)
-		. += (32 * 1024) - 1;
+		. += CONFIG_MIPS_RELOCATION_TABLE_SIZE - 1;
 	}
 
 	_end = .;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
