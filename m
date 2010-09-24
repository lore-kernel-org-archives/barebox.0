Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz63E-0002ps-Sy
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 11:02:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 13:01:18 +0200
Message-Id: <1285326078-13582-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285326078-13582-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285326078-13582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] pcm038: fix initialization makes pointer from integer
	without a cast
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pcm038/pcm038.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 20ffffb..a4dc207 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -406,7 +406,7 @@ extern void *pcm038_pll_init, *pcm038_pll_init_end;
 static int pcm038_power_init(void)
 {
 	int ret;
-	void *vram = 0xffff4c00;
+	void *vram = (void*)0xffff4c00;
 	void (*pllfunc)(void) = vram;
 
 	printf("initialising PLLs: 0x%p 0x%p\n", &pcm038_pll_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
