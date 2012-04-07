Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGZVN-0002N1-4T
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 17:32:54 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6D60EFF862E
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 19:33:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 19:15:54 +0200
Message-Id: <1333818954-3029-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: fix zImage support when a oftree is concatenated
To: barebox@lists.infradead.org

When a oftree is concatenated,the zImage is bigger than the size specified in
the zImage header. Detect it copy the full zImage into the memory.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |   13 ++++++++++---
 1 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index defc89b..26833bd 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -125,6 +125,7 @@ struct zimage_header {
 
 static int do_bootz_linux(struct image_data *data)
 {
+	struct stat st;
 	int fd, ret, swap = 0;
 	struct zimage_header __header, *header;
 	void *zimage;
@@ -171,7 +172,10 @@ static int do_bootz_linux(struct image_data *data)
 	if (swap)
 		end = swab32(end);
 
-	data->os_res = request_sdram_region("zimage", load_address, end);
+	if (stat(data->os_file, &st) < 0)
+		st.st_size = end;
+
+	data->os_res = request_sdram_region("zimage", load_address, st.st_size);
 	if (!data->os_res) {
 		ret = -ENOMEM;
 		goto err_out;
@@ -181,15 +185,18 @@ static int do_bootz_linux(struct image_data *data)
 
 	memcpy(zimage, header, sizeof(*header));
 
-	ret = read_full(fd, zimage + sizeof(*header), end - sizeof(*header));
+	ret = read_full(fd, zimage + sizeof(*header), st.st_size - sizeof(*header));
 	if (ret < 0)
 		goto err_out;
-	if (ret < end - sizeof(*header)) {
+	if (ret < st.st_size - sizeof(*header)) {
 		printf("premature end of image\n");
 		ret = -EIO;
 		goto err_out;
 	}
 
+	if (file_detect_type(zimage + end) == filetype_oftree)
+		pr_info("zImage: concatenated oftree detected\n");
+
 	if (swap) {
 		void *ptr;
 		for (ptr = zimage; ptr < zimage + end; ptr += 4)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
