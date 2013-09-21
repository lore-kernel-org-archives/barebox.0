Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNOfu-0001Bb-GA
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 15:00:47 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3696DFFAC1E
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 16:53:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 16:54:15 +0200
Message-Id: <1379775256-29471-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v2] filetype: add Binary PacKage BPK type
To: barebox@lists.infradead.org
Cc: Fargier Sylvain <sylvain.fargier@somfy.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Fargier Sylvain <sylvain.fargier@somfy.com>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 59ea25a..ef4452d 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -51,6 +51,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
+	[filetype_bpk] = { "Binary PacKage", "bpk" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -221,6 +222,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_png;
 	if (is_barebox_mips_head(_buf))
 		return filetype_mips_barebox;
+	if (buf[0] == be32_to_cpu(0x534F4659))
+		return filetype_bpk;
 
 	if (bufsize < 64)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index b83b9be..096fc79 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -29,6 +29,7 @@ enum filetype {
 	filetype_ext,
 	filetype_gpt,
 	filetype_ubifs,
+	filetype_bpk,
 	filetype_max,
 };
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
