Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXHE-0002Um-DY
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 12:59:14 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Mon, 21 Oct 2019 14:59:08 +0200
Message-Id: <1571662748-328848-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] sandbox: add_image: output errno string on mmap failure
To: barebox@lists.infradead.org

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 arch/sandbox/os/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 86118822a..1b2daa396 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -264,7 +264,7 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 			PROT_READ | (readonly ? 0 : PROT_WRITE),
 			MAP_SHARED, fd, 0);
 	if ((void *)hf->base == MAP_FAILED)
-		printf("warning: mmapping %s failed\n", filename);
+		printf("warning: mmapping %s failed: %s\n", filename, strerror(errno));
 
 	ret = barebox_register_filedev(hf);
 	if (ret)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
