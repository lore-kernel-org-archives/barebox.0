Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZAA-0007lg-A3
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 16:53:23 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  5 Jun 2019 18:52:40 +0200
Message-Id: <20190605165242.17147-2-linux@rempel-privat.de>
In-Reply-To: <20190605165242.17147-1-linux@rempel-privat.de>
References: <20190605165242.17147-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/4] elf: add missing elf32_shdr
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

needed for remoteproc port

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 include/elf.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/elf.h b/include/elf.h
index 92c8d9c12..e1deb3fe0 100644
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
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
