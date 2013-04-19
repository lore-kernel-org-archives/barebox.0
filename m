Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f51.google.com ([74.125.83.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT6yC-0008Vs-Kz
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 08:47:01 +0000
Received: by mail-ee0-f51.google.com with SMTP id c4so1640957eek.10
 for <barebox@lists.infradead.org>; Fri, 19 Apr 2013 01:46:58 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 19 Apr 2013 10:46:05 +0200
Message-Id: <1366361165-28803-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
References: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/2] common/partition: check only for partition table types
To: barebox@lists.infradead.org

The detection of the partition table fails when we have a barebox image
in the MBR. So check only for partition table types.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 common/partitions.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index dd25160..683b258 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -89,7 +89,7 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	struct partition_parser *parser;
 
 	/* first new partition table as EFI GPT */
-	type = file_detect_type(buf, SECTOR_SIZE * 2);
+	type = file_detect_partition_table(buf, SECTOR_SIZE * 2);
 
 	list_for_each_entry(parser, &partition_parser_list, list) {
 		if (parser->type == type)
@@ -100,7 +100,7 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	 * so if EFI GPT not enable take it as MBR
 	 * useful for compatibility
 	 */
-	type = file_detect_type(buf, SECTOR_SIZE);
+	type = file_detect_partition_table(buf, SECTOR_SIZE);
 
 	list_for_each_entry(parser, &partition_parser_list, list) {
 		if (parser->type == type)
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
