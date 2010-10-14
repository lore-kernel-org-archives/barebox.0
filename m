Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22] helo=mail.gmx.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6LeD-0000dn-Nx
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 11:07:00 +0000
From: Carsten Schlote <carsten.schlote@gmx.net>
Date: Thu, 14 Oct 2010 13:06:46 +0200
Message-Id: <1287054406-31713-5-git-send-email-carsten.schlote@gmx.net>
In-Reply-To: <1287054406-31713-4-git-send-email-carsten.schlote@gmx.net>
References: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-2-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-4-git-send-email-carsten.schlote@gmx.net>
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
Subject: [PATCH 5/5] [drivers/nor] Fixed mismatch in prototype
To: barebox@lists.infradead.org

From: Carsten Schlote <c.schlote@konzeptpark.de>

Trivial mismatch between cfi_flash.h and function in cfi_flash.c

Signed-off-by: Carsten Schlote <c.schlote@konzeptpark.de>
---
 drivers/nor/cfi_flash.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fa5e5ee..7b9f06c 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -634,7 +634,7 @@ static int write_buff (struct flash_info *info, const uchar * src, ulong addr, u
 	return flash_write_cfiword (info, wp, cword);
 }
 
-static int flash_real_protect (struct flash_info *info, long sector, int prot)
+int flash_real_protect (struct flash_info *info, long sector, int prot)
 {
 	int retcode = 0;
 
-- 
1.7.2.2.277.gb49c4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
