Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRfiI-0005jo-2R
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 10:01:03 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0F78CDC237D
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 12:00:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 12:01:52 +0200
Message-Id: <1380794513-7100-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131003095957.GQ32444@ns203013.ovh.net>
References: <20131003095957.GQ32444@ns203013.ovh.net>
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
Subject: [PATCH 1/2] filetype: add Binary PacKage BPK type
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 7507d85..8cdf827 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -50,6 +50,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
+	[filetype_bpk] = { "Binary PacKage", "bpk" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -220,6 +221,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_png;
 	if (is_barebox_mips_head(_buf))
 		return filetype_mips_barebox;
+	if (buf[0] == be32_to_cpu(0x534F4659))
+		return filetype_bpk;
 
 	if (bufsize < 64)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index 9a864da..ffefe1c 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -28,6 +28,7 @@ enum filetype {
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
