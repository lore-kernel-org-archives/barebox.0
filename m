Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKUHH-00020o-W8
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:46:36 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BB487FF9752
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:47:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Apr 2012 14:27:43 +0200
Message-Id: <1334752067-11445-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120418120230.GC1980@game.jcrosoft.org>
References: <20120418120230.GC1980@game.jcrosoft.org>
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
Subject: [PATCH 1/5] filetype: add Bourne Shell support
To: barebox@lists.infradead.org

Put it at first as it's the most likely to detect

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |    3 +++
 include/filetype.h |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 0120913..15a3732 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -38,6 +38,7 @@ static const char *filetype_str[] = {
 	[filetype_bzip2] = "bzip2 compressed",
 	[filetype_oftree] = "open firmware flat device tree",
 	[filetype_aimage] = "Android boot image",
+	[filetype_sh] = "Bourne Shell",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -53,6 +54,8 @@ enum filetype file_detect_type(void *_buf)
 	u32 *buf = _buf;
 	u8 *buf8 = _buf;
 
+	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
+		return filetype_sh;
 	if (buf[8] == 0x65726162 && buf[9] == 0x00786f62)
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
diff --git a/include/filetype.h b/include/filetype.h
index d0b6226..9338793 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -16,6 +16,7 @@ enum filetype {
 	filetype_bzip2,
 	filetype_oftree,
 	filetype_aimage,
+	filetype_sh,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
