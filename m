Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqNr0-0007Lk-J0
 for barebox@lists.infradead.org; Sun, 15 Jul 2012 12:23:18 +0000
Received: by lbbgg6 with SMTP id gg6so6683712lbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 05:22:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Jul 2012 16:21:57 +0400
Message-Id: <1342354917-14742-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] filetype: add forgotten mips barebox filetype_str
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/filetype.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/common/filetype.c b/common/filetype.c
index 39c2098..1a5b82d 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -39,6 +39,7 @@ static const char *filetype_str[] = {
 	[filetype_oftree] = "open firmware flat device tree",
 	[filetype_aimage] = "Android boot image",
 	[filetype_sh] = "Bourne Shell",
+	[filetype_mips_barebox] = "MIPS barebox image",
 };
 
 const char *file_type_to_string(enum filetype f)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
