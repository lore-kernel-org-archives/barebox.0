Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fugZE-00080a-2H
 for barebox@lists.infradead.org; Tue, 28 Aug 2018 16:10:37 +0000
From: <Oleg.Karfich@wago.com>
Date: Tue, 28 Aug 2018 16:09:46 +0000
Message-ID: <1535472578-22131-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH v2] commands: of_property: copy value instead of resizing
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com, Florian.Baeuerle@allegion.com

Commit 748d1b8 adds the fixup feature to the above command. With this commit an
unwanted free(data) on the freshly set property value is done if someone tries
to set the value of an already present property (not the case for a new
property). Furthermore in fixup mode the pointer fixup->data is freed when the
fixup function is called more than once. This leads to a hanging system after
calling of_dump -F many times.
Fix this issues by copying the data to a new allocated memory area like a new
property is created.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---

Changes in v2:

        - slightly different solution like in [1]
        - consider memory leak when a new property is created. Noted in [2]
        - also consider hanging system when oftree -F is used

[1] http://lists.infradead.org/pipermail/barebox/2018-August/034444.html
[2] http://lists.infradead.org/pipermail/barebox/2018-August/034446.html

---
 commands/of_property.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index d0b923f..31e9b71 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -270,9 +270,8 @@ static int do_of_property_set_now(struct device_node *root, const char *path,
 		free(pp->value);
 		pp->value_const = NULL;
 
-		/* limit property data to the actual size */
 		if (len)
-			pp->value = xrealloc(data, len);
+			pp->value = xmemdup(data, len);
 		else
 			pp->value = NULL;
 
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
