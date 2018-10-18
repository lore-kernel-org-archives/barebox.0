Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD6il-00079T-V0
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 11:44:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 13:43:51 +0200
Message-Id: <20181018114351.29022-2-s.hauer@pengutronix.de>
In-Reply-To: <20181018114351.29022-1-s.hauer@pengutronix.de>
References: <20181018114351.29022-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] bootchooser: Add reference counting
To: Barebox List <barebox@lists.infradead.org>

This adds reference counting to the bootchooser. Instead of creating a
new bootchooser instance with each bootchooser_get() we return a
reference to the existing bootchooser.
This makes the behaviour consistent when bootchooser_get() is called
multiple times.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootchooser.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 29f61aec7f..c47c734c9c 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -57,6 +57,7 @@ struct bootchooser {
 
 	struct state *state;
 	char *state_prefix;
+	int refs;
 
 	int verbose;
 	int dryrun;
@@ -344,11 +345,15 @@ static void bootchooser_reset_priorities(struct bootchooser *bc)
 		bootchooser_target_set_priority(target, -1);
 }
 
+static struct bootchooser *bootchooser;
+
 /**
- * bootchooser_get - get a bootchooser instance
+ * bootchooser_get - get a reference to the bootchooser
  *
- * This evaluates the different globalvars and eventually state variables,
- * creates a bootchooser instance from it and returns it.
+ * When no bootchooser is initialized this function allocates the bootchooser
+ * and initializes it with the different globalvars and state variables. The
+ * bootchooser is returned. Subsequent calls will return a reference to the same
+ * bootchooser.
  */
 struct bootchooser *bootchooser_get(void)
 {
@@ -359,6 +364,11 @@ struct bootchooser *bootchooser_get(void)
 	uint32_t last_chosen;
 	static int attempts_resetted;
 
+	if (bootchooser) {
+		bootchooser->refs++;
+		return bootchooser;
+	}
+
 	bc = xzalloc(sizeof(*bc));
 
 	if (*state_prefix) {
@@ -473,6 +483,10 @@ struct bootchooser *bootchooser_get(void)
 
 	}
 
+	bootchooser = bc;
+
+	bootchooser->refs = 1;
+
 	return bc;
 
 err:
@@ -528,16 +542,26 @@ int bootchooser_save(struct bootchooser *bc)
 }
 
 /**
- * bootchooser_put - release a bootchooser instance
+ * bootchooser_put - return a bootchooser reference
  * @bc: The bootchooser instance
  *
- * This releases a bootchooser instance and the memory associated with it.
+ * This returns a reference to the bootchooser. If it is the last reference the
+ * bootchooser is saved and the associated memory is freed.
+ *
+ * Return: 0 for success or a negative error code. An error can occur when
+ *         bootchooser_save fails to write to the storage, nevertheless the
+ *         bootchooser reference is still released.
  */
 int bootchooser_put(struct bootchooser *bc)
 {
 	struct bootchooser_target *target, *tmp;
 	int ret;
 
+	bc->refs--;
+
+	if (bc->refs)
+		return 0;
+
 	ret = bootchooser_save(bc);
 	if (ret)
 		pr_err("Failed to save bootchooser state: %s\n", strerror(-ret));
@@ -552,6 +576,8 @@ int bootchooser_put(struct bootchooser *bc)
 
 	free(bc);
 
+	bootchooser = NULL;
+
 	return ret;
 }
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
