Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp17.mail.ru ([94.100.176.154])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SGuzR-00063h-4j
 for barebox@lists.infradead.org; Sun, 08 Apr 2012 16:29:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  8 Apr 2012 20:35:31 +0400
Message-Id: <1333902931-20312-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] PCM-038: fix SRAM device name
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 86bc721..b6f4b01 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -135,7 +135,7 @@ static int pcm038_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 
-	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
+	add_mem_device("ram1", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
 				   IORESOURCE_MEM_WRITEABLE);
 	return 0;
 }
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
