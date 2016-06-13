Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCPTp-0007mL-AL
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 10:52:30 +0000
From: Alexander Aring <aar@pengutronix.de>
Date: Mon, 13 Jun 2016 12:51:52 +0200
Message-Id: <20160613105152.28770-1-aar@pengutronix.de>
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
Subject: [PATCH RFC] common: env: handle var="" not as var=NULL
To: barebox@lists.infradead.org
Cc: Alexander Aring <aar@pengutronix.de>

This patch changes the behaviour which I think is used everywhere in
barebox code. Currently var="" and var=NULL will end in the same
behaviour.

New behaviour is:

setenv(name, "")	-> sets name to ""
\-> getenv(name)	-> ""

setenv(name, NULL)	-> deletes env
\-> getenv(name)	-> NULL

It seems that barebox code already wants such behaviour, by run

$ grep -r "\"\"" | grep setenv

it finds most all related code sections which use "".

I detected the issue while commenting #ip="foo" in my env. The code
part:

net/ifup.c:	setenv("ip", "");

Sets at first "ip" to "" but will end in the old behaviour as "delete".
The getenv("ip") in ifup.c will not check on the NULL value and has a
general handling for unknown ip env.

Note:
Also check commit e7ed69d5 ("setenv: be robust against setenv(<var>,
NULL") which says that hush will handle "" and NULL as the same.

Another check would be:

$ grep -r "NULL" | grep setenv

which should show the behaviour in case of deleting env.

Signed-off-by: Alexander Aring <aar@pengutronix.de>
---
I test the ip env stuff only that barebox will not crash anymore but I
think it will break some other setenv/getenv behaviour.

The question is "Shall we keep that "" and NULL ends in same behaviour"
and fix the code which use it wrong, e.g. setenv("ip", ""); getenv("ip").

 common/env.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/common/env.c b/common/env.c
index 6f736d5..4d8d446 100644
--- a/common/env.c
+++ b/common/env.c
@@ -210,10 +210,6 @@ int setenv(const char *_name, const char *value)
 	int ret = 0;
 	struct list_head *list;
 
-	if (value && !*value)
-		value = NULL;
-
-
 	if ((par = strchr(name, '.'))) {
 		struct device_d *dev;
 
-- 
2.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
