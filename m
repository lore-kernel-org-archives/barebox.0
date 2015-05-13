Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Dk-HF
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:13:00 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:28 +0200
Message-Id: <1431511952-32124-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/7] state: make state_release() non static
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c  | 2 +-
 include/state.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/state.c b/common/state.c
index 5642f0d41855..66620a892074 100644
--- a/common/state.c
+++ b/common/state.c
@@ -426,7 +426,7 @@ static struct state *state_new(const char *name)
 	return state;
 }
 
-static void state_release(struct state *state)
+void state_release(struct state *state)
 {
 	list_del(&state->list);
 	unregister_device(&state->dev);
diff --git a/include/state.h b/include/state.h
index d321451e1490..116ec6301c1c 100644
--- a/include/state.h
+++ b/include/state.h
@@ -10,6 +10,7 @@ int state_backend_raw_file(struct state *state, const char *path,
 		off_t offset, size_t size);
 
 struct state *state_new_from_node(const char *name, struct device_node *node);
+void state_release(struct state *state);
 
 struct state *state_by_name(const char *name);
 struct state *state_by_node(const struct device_node *node);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
