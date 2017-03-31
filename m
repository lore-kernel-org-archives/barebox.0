Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbZ-0001ee-6H
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:40 +0200
Message-Id: <20170331070346.26878-37-s.hauer@pengutronix.de>
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
Subject: [PATCH 36/42] state: backend_circular: Set minumum writesize to 8
To: Barebox List <barebox@lists.infradead.org>

NOR flashes have a write size of 1. With this the metadata may
end up on non-4-byte-aligned offsets. Force the minimum writesize
to 8 so that the metadata is always at aligned offsets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 58fffd18e3..5a525f68e1 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -475,6 +475,9 @@ int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
 	struct state_backend_storage_bucket_circular *circ;
 	int ret;
 
+	if (writesize < 8)
+		writesize = 8;
+
 	circ = xzalloc(sizeof(*circ));
 	circ->eraseblock = eraseblock;
 	circ->writesize = writesize;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
