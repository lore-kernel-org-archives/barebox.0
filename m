Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZelwU-0007LH-5d
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 15:26:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 17:26:12 +0200
Message-Id: <1443021972-18223-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443021972-18223-1-git-send-email-s.hauer@pengutronix.de>
References: <1443021972-18223-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: check return value of of_property_count_strings
To: Barebox List <barebox@lists.infradead.org>

When a enum32 state variable node does not have a "names" property bail
out instead of continuing with an error value used as number of strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/state.c b/common/state.c
index 9f8ead1..117a686 100644
--- a/common/state.c
+++ b/common/state.c
@@ -318,6 +318,10 @@ static struct state_variable *state_enum32_create(struct state *state,
 	enum32 = xzalloc(sizeof(*enum32));
 
 	num_names = of_property_count_strings(node, "names");
+	if (num_names < 0) {
+		dev_err(&state->dev, "enum32 node without \"names\" property\n");
+		return ERR_PTR(-EINVAL);
+	}
 
 	enum32->names = xzalloc(sizeof(char *) * num_names);
 	enum32->num_names = num_names;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
