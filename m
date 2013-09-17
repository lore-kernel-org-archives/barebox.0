Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLxpK-0001Kn-H2
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 16:08:35 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 794BBFF981B
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 18:08:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 18:09:15 +0200
Message-Id: <1379434156-32055-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] filetype: add Somfy BPK2 type
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index f986ea4..e07b65a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -51,6 +51,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
+	[filetype_somfy_bpk2] = { "Somfy BPK2", "somfy-bpk2" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -219,6 +220,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_png;
 	if (is_barebox_mips_head(_buf))
 		return filetype_mips_barebox;
+	if (buf[0] == be32_to_cpu(0x534F4659))
+		return filetype_somfy_bpk2;
 
 	if (bufsize < 64)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index 3e9cea3..b97d860 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -28,6 +28,7 @@ enum filetype {
 	filetype_png,
 	filetype_ext,
 	filetype_gpt,
+	filetype_somfy_bpk2,
 	filetype_max,
 };
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
