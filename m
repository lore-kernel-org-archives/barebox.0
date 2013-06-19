Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPH-0004yk-1R
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:24 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so2208859bkc.7
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:01 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:31 +0200
Message-Id: <1371632991-1504-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 02/22] OF: base: bail out early on missing matches for
 of_match_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

of_match_node checks for compatiblity between a set of matches and a
node. Neither the matches nor node pointer are checked for validity.
This adds the required checks to of_match_node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4241e65..ab0f4cd 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -321,6 +321,9 @@ EXPORT_SYMBOL(of_device_is_compatible);
 const struct of_device_id *of_match_node(const struct of_device_id *matches,
 					 const struct device_node *node)
 {
+	if (!matches || !node)
+		return NULL;
+
 	while (matches->compatible) {
 		if (of_device_is_compatible(node, matches->compatible) == 1)
 			return matches;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
