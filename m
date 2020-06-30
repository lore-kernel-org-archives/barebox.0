Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqN7E-0003pJ-4S
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 20:44:28 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 30 Jun 2020 22:44:00 +0200
Message-Id: <20200630204402.26566-3-cleger@kalray.eu>
In-Reply-To: <20200630204402.26566-1-cleger@kalray.eu>
References: <20200630204402.26566-1-cleger@kalray.eu>
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
Subject: [PATCH v3 2/4] common: Kconfig: remove MIPS dependency for ELF
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

There is no reason anymore to limit the use of elf on mips since there
is no elf specific support needed in architectures. Drop the MIPS
dependency.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index f150092af..36b504dd3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -39,7 +39,6 @@ config BLOCK_WRITE
 
 config ELF
 	bool "ELF Support" if COMPILE_TEST
-	depends on MIPS || COMPILE_TEST
 
 config FILETYPE
 	bool
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
