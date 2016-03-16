Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EL-0007gI-Bu
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:42 +0000
Received: by mail-pf0-x22b.google.com with SMTP id x3so56154553pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:51 -0700
Message-Id: <1458099232-9050-16-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/16] common: Add EPROBE_DEFER to strerror
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
