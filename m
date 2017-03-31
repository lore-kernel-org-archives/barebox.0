Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fg-Co
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:07 +0200
Message-Id: <20170331070346.26878-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/42] state: backend: remove .get_packed_len
To: Barebox List <barebox@lists.infradead.org>

.get_packed_len isn't implemented by any backend, so remove the
hook and its potential caller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend.c | 3 ---
 common/state/state.h   | 2 --
 2 files changed, 5 deletions(-)

diff --git a/common/state/backend.c b/common/state/backend.c
index 5235bb0283..6b06c845f0 100644
--- a/common/state/backend.c
+++ b/common/state/backend.c
@@ -74,9 +74,6 @@ int state_load(struct state *state)
 	int ret;
 	struct state_backend *backend = &state->backend;
 
-	if (backend->format->get_packed_len)
-		len_hint = backend->format->get_packed_len(backend->format,
-							   state);
 	ret = state_storage_read(&backend->storage, backend->format,
 				 state->magic, &buf, &len, len_hint);
 	if (ret) {
diff --git a/common/state/state.h b/common/state/state.h
index bc6917de61..0197cb839a 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -53,8 +53,6 @@ struct state_backend_format {
 		     uint8_t ** buf, ssize_t * len);
 	int (*unpack) (struct state_backend_format * format,
 		       struct state * state, const uint8_t * buf, ssize_t len);
-	ssize_t(*get_packed_len) (struct state_backend_format * format,
-				   struct state * state);
 	void (*free) (struct state_backend_format * format);
 	const char *name;
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
