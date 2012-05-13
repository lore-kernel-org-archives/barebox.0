Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STRVV-0007Jk-OC
 for barebox@lists.infradead.org; Sun, 13 May 2012 05:38:14 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 13 May 2012 09:38:02 +0400
Message-Id: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/4] PCM038: Update board description
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.dox |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.dox b/arch/arm/boards/pcm038/pcm038.dox
index 9b17674..85177d2 100644
--- a/arch/arm/boards/pcm038/pcm038.dox
+++ b/arch/arm/boards/pcm038/pcm038.dox
@@ -2,7 +2,8 @@
 
 This CPU card is based on a Freescale i.MX27 CPU. The card is shipped with:
 
-- up to 32MiB NOR type Flash Memory
-- 32MiB synchronous dynamic RAM
+- up to 64MB NOR Flash Memory
+- up to 1GB NAND Flash Memory
+- up to 256MB DRAM
 
 */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
