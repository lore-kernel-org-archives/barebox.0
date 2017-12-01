Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj7F-00011K-KV
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:04:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:23 +0100
Message-Id: <20171201110326.31598-5-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] Documentation: change default highlight language to shell
To: Barebox List <barebox@lists.infradead.org>

There are many places where sphinx complains that blocks cannot
be hilghlighted in 'c' and in fact I am not aware of any C code
snippets in the documentation, so change the default highlighting
style to shell which fits our needs much better. With this we
get rid of many warnings while building the documentation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/conf.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index 0292c720a7..dbd4a80caa 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -259,4 +259,4 @@ texinfo_documents = [
 # If true, do not generate a @detailmenu in the "Top" node's menu.
 #texinfo_no_detailmenu = False
 
-highlight_language = 'c'
+highlight_language = 'sh'
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
