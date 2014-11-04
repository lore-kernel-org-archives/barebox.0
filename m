Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uP-5L
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:22 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-41
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:49 +0100
Message-Id: <1415094176-26435-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 03/10] fs: efivar: cosmetic changes
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 58c637ef19b4..4e13c8365e0e 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -1,7 +1,7 @@
 /*
- * ramfs.c - a malloc based filesystem
+ * efivars.c - EFI variable filesystem
  *
- * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -75,8 +75,8 @@ int efi_guid_parse(const char *str, efi_guid_t *guid)
 			if (*str != '-')
 				return -EINVAL;
 			str++;
-                        break;
-                }
+			break;
+		}
 	}
 
 	return 0;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
