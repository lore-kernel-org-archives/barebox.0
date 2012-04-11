Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHsCQ-0004TN-UO
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 07:42:43 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B6C54FF9117
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2012 09:43:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Apr 2012 09:25:24 +0200
Message-Id: <1334129124-6903-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
References: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] filetype: add Android boot image support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    3 +++
 include/filetype.h |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 40faff3..b784bff 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -37,6 +37,7 @@ static const char *filetype_str[] = {
 	[filetype_gzip] = "gzip compressed",
 	[filetype_bzip2] = "bzip2 compressed",
 	[filetype_oftree] = "open firmware flat device tree",
+	[filetype_aimage] = "Android boot image",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -72,6 +73,8 @@ enum filetype file_detect_type(void *_buf)
                 return filetype_bzip2;
 	if (buf[0] == be32_to_cpu(0xd00dfeed))
 		return filetype_oftree;
+	if (strncmp(buf8, "ANDROID!", 8) == 0)
+		return filetype_aimage;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 88f31df..d0b6226 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -15,6 +15,7 @@ enum filetype {
 	filetype_gzip,
 	filetype_bzip2,
 	filetype_oftree,
+	filetype_aimage,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
