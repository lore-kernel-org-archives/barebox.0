Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XoW-0003a7-5M
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:24:09 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 13:23:55 +0400
Message-Id: <1361697839-14310-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
References: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/7] ARM: pcm970: Fix bug with CompactFlash
To: barebox@lists.infradead.org

Patch adds missing MX27_PCMCIA_CTL_BASE_ADDR offset for "readl" operator.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm970.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index a50a1f2..dd95f52 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -120,8 +120,8 @@ static void pcm970_ide_init(void)
 	writel(0x0000001f, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGSR);
 
 	/* Make PCMCIA bank0 valid */
-	writel(readl(MX27_PCMCIA_POR(0)) | (1 << 29),
-			MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
+	i = readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
+	writel(i | (1 << 29), MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
 
 	platform_device_register(&pcm970_ide_device);
 }
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
