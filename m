Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIbk8-0006rO-2y
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 08:20:32 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 784F0FF90F7
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 10:21:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Apr 2012 10:02:45 +0200
Message-Id: <1334304170-26176-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120413075705.GE11079@game.jcrosoft.org>
References: <20120413075705.GE11079@game.jcrosoft.org>
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
index b784bff..4b5a6fa 100644
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
