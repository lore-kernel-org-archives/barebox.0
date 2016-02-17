Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwL-0003ml-R3
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:02 +0000
Received: by mail-pf0-x232.google.com with SMTP id e127so1488366pfe.3
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:02 -0800
Message-Id: <1455672559-25061-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/18] common: Add EPROBE_DEFER to strerror
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/misc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/misc.c b/common/misc.c
index 8b2417b..f0f0b80 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -65,6 +65,7 @@ const char *strerror(int errnum)
 	case	ENETUNREACH	: str = "Network is unreachable"; break;
 	case	ENETDOWN	: str = "Network is down"; break;
 	case	ETIMEDOUT	: str = "Connection timed out"; break;
+	case	EPROBE_DEFER	: str = "Requested probe deferral"; break;
 #if 0 /* These are probably not needed */
 	case	ENOTBLK		: str = "Block device required"; break;
 	case	EFBIG		: str = "File too large"; break;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
