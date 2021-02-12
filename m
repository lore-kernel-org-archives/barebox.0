Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUB4-00061U-Go
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 08:51:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Feb 2021 09:51:48 +0100
Message-Id: <20210212085148.19347-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master] sandbox: fix unreliable block device detection
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

If barebox detects that an --image file is a block device, it will try
to represent it as a block device internally as well, provided that
the user didn't explicitly specify that it should be mapped as a
character device instead. The hf_info::is_cdev member used to indicate
this override wasn't initialized though, so detection was unreliable,
Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index da87be29c74d..56c2d0519388 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -276,7 +276,7 @@ extern char * strsep_unescaped(char **s, const char *ct);
 
 static int add_image(const char *_str, char *devname_template, int *devname_number)
 {
-	struct hf_info *hf = malloc(sizeof(struct hf_info));
+	struct hf_info *hf = calloc(1, sizeof(struct hf_info));
 	char *str, *filename, *devname;
 	char tmp[16];
 	char *opt;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
