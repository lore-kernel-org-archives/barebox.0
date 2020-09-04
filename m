Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kE8gC-0007D5-Mh
 for barebox@lists.infradead.org; Fri, 04 Sep 2020 10:10:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id ay8so5542695edb.8
 for <barebox@lists.infradead.org>; Fri, 04 Sep 2020 03:10:46 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri,  4 Sep 2020 12:10:40 +0200
Message-Id: <20200904101040.19043-1-hubert.feurstein@vahle.at>
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
Subject: [PATCH] imd: imd_calculate_crc32: initialize imd_crc to NULL
To: barebox@lists.infradead.org

From: Hubert Feurstein <h.feurstein@gmail.com>

This fixes a NULL pointer dereference in the caller when imd-crc-token is
not found.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 common/imd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/imd.c b/common/imd.c
index 96496514a..0644e6d3b 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -312,6 +312,7 @@ static int imd_calculate_crc32(void *input, const struct imd_header *imd_start,
 	const struct imd_header *imd;
 	int length;
 	int end_ofs = (char *)imd_start - (char *)input + sizeof(char) * 8;
+	*imd_crc = NULL;
 
 	/* search the checksum imd token */
 	imd_for_each(imd_start, imd) {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
