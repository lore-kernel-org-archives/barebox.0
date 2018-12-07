Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAcm-0000vC-Eq
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:32:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id w73so1516320pfk.10
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:32:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:32:18 -0800
Message-Id: <20181207073218.3858-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] lib/parameter: Fix typecases to match corresponding
 PARAM_TYPE_*
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This change should be a no-op in terms of behavior, but it makes code
less confusing when PARAM_TYPE_* matches the type used in the type
cast.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/parameter.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index a21b8fa4a..00e9a9ff4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -343,10 +343,10 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 		ret = strtobool(val, pi->value);
 		break;
 	case PARAM_TYPE_INT32:
-		*(uint32_t *)pi->value = simple_strtol(val, NULL, 0);
+		*(int32_t *)pi->value = simple_strtol(val, NULL, 0);
 		break;
 	case PARAM_TYPE_UINT32:
-		*(int32_t *)pi->value = simple_strtoul(val, NULL, 0);
+		*(uint32_t *)pi->value = simple_strtoul(val, NULL, 0);
 		break;
 	case PARAM_TYPE_INT64:
 		*(int64_t *)pi->value = simple_strtoll(val, NULL, 0);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
