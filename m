Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCL49-0000D5-0b
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 09:55:34 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 23 Sep 2019 11:55:25 +0200
Message-Id: <20190923095527.29174-2-o.rempel@pengutronix.de>
In-Reply-To: <20190923095527.29174-1-o.rempel@pengutronix.de>
References: <20190923095527.29174-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 1/3] elf: add missing elf32_shdr
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

needed for remoteproc port

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 include/elf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/elf.h b/include/elf.h
index 633f4992dd..44be07f73a 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -286,7 +286,7 @@ typedef struct elf64_phdr {
 #define SHN_COMMON	0xfff2
 #define SHN_HIRESERVE	0xffff
 
-typedef struct {
+typedef struct elf32_shdr {
   Elf32_Word	sh_name;
   Elf32_Word	sh_type;
   Elf32_Word	sh_flags;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
