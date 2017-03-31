Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbT-0008Fw-Qc
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:12 +0200
Message-Id: <20170331070346.26878-9-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/42] state: remove unnecessary argument from
 state_format_init
To: Barebox List <barebox@lists.infradead.org>

The device pointer is already in struct state, no need to pass it
around when a struct state * is already passed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index fce8fcc943..87b704feba 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -106,25 +106,24 @@ out:
 	return ret;
 }
 
-static int state_format_init(struct state *state,
-			     struct device_d *dev, const char *backend_format,
+static int state_format_init(struct state *state, const char *backend_format,
 			     struct device_node *node, const char *state_name)
 {
 	int ret;
 
 	if (!backend_format || !strcmp(backend_format, "raw")) {
 		ret = backend_format_raw_create(&state->format, node,
-						state_name, dev);
+						state_name, &state->dev);
 	} else if (!strcmp(backend_format, "dtb")) {
-		ret = backend_format_dtb_create(&state->format, dev);
+		ret = backend_format_dtb_create(&state->format, &state->dev);
 	} else {
-		dev_err(dev, "Invalid backend format %s\n",
+		dev_err(&state->dev, "Invalid backend format %s\n",
 			backend_format);
 		return -EINVAL;
 	}
 
 	if (ret && ret != -EPROBE_DEFER)
-		dev_err(dev, "Failed to initialize format %s, %d\n",
+		dev_err(&state->dev, "Failed to initialize format %s, %d\n",
 			backend_format, ret);
 
 	return ret;
@@ -599,7 +598,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		dev_info(&state->dev, "No backend-storage-type found, using default.\n");
 	}
 
-	ret = state_format_init(state, &state->dev, backend_type, node, alias);
+	ret = state_format_init(state, backend_type, node, alias);
 	if (ret)
 		goto out_release_state;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
