Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9j.cmail.yandex.net ([2a02:6b8:0:1630::184])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZvkb-0003U5-8D
 for barebox@lists.infradead.org; Wed, 17 Aug 2016 07:59:02 +0000
Received: from smtp2m.mail.yandex.net (smtp2m.mail.yandex.net
 [IPv6:2a02:6b8:0:2519::122])
 by forward9j.cmail.yandex.net (Yandex) with ESMTP id 0B54221022
 for <barebox@lists.infradead.org>; Wed, 17 Aug 2016 10:58:37 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed, 17 Aug 2016 10:58:06 +0300
Message-Id: <1471420687-14367-2-git-send-email-rndfax@yandex.ru>
In-Reply-To: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH 1/2] hush: do not do anything if string is zero length
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 common/hush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index d3f7bf3..d8fd64b 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1655,6 +1655,9 @@ char *shell_expand(char *str)
 	o_string o = {};
 	char *res, *parsed;
 
+	if (strlen(str) == 0)
+		return xstrdup("");
+
 	remove_quotes_in_str(str);
 
 	o.quote = 1;
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
