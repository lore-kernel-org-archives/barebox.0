Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI3Ph-00019e-KR
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 05:21:58 +0000
Received: from geraet.fritz.box (unknown [87.123.107.145])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id F28BD1BF203
 for <barebox@lists.infradead.org>; Tue, 15 Sep 2020 05:21:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 15 Sep 2020 07:21:43 +0200
Message-Id: <20200915052143.894451-1-ahmad@a3f.at>
In-Reply-To: <20200914133748.5988-4-a.fatoum@pengutronix.de>
References: <20200914133748.5988-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! sandbox: implement actual sandbox reset via exec(2)
To: barebox@lists.infradead.org

add_image modifies the argument passed to it, we want to reexec with
the original argv however, thus make a copy of the argument.

---
 arch/sandbox/os/common.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 778ac3d6e60f..d0addef5af49 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -247,10 +247,10 @@ extern void mem_malloc_init(void *start, void *end);
 
 extern char * strsep_unescaped(char **s, const char *ct);
 
-static int add_image(char *str, char *devname_template, int *devname_number)
+static int add_image(const char *_str, char *devname_template, int *devname_number)
 {
 	struct hf_info *hf = malloc(sizeof(struct hf_info));
-	char *filename, *devname;
+	char *str, *filename, *devname;
 	char tmp[16];
 	int readonly = 0, cdev = 0, blkdev = 0;
 	struct stat s;
@@ -260,6 +260,8 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	if (!hf)
 		return -1;
 
+	str = strdup(_str);
+
 	filename = strsep_unescaped(&str, ",");
 	while ((opt = strsep_unescaped(&str, ","))) {
 		if (!strcmp(opt, "ro"))
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
