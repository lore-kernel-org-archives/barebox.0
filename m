Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U617x-0006EM-Kc
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 15:53:38 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B179D101806E
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 17:04:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 14 Feb 2013 16:52:24 +0100
Message-Id: <1360857147-489-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] filetype: add GPT support
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

GPT need to be check before MBR

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    4 ++++
 include/filetype.h |    1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 22fc621..6563ecc 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -48,6 +48,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_bmp] = { "BMP image", "bmp" },
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
+	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -159,6 +160,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 512)
 		return filetype_unknown;
 
+	if (bufsize >= 520 && strncmp(&buf8[512], "EFI PART", 8) == 0)
+		return filetype_gpt;
+
 	type = is_fat_or_mbr(buf8, NULL);
 	if (type != filetype_unknown)
 		return type;
diff --git a/include/filetype.h b/include/filetype.h
index 4d43757..78ca5d2 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -23,6 +23,7 @@ enum filetype {
 	filetype_bmp,
 	filetype_png,
 	filetype_ext,
+	filetype_gpt,
 	filetype_max,
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
