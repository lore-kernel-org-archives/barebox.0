Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0001eg-51
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:41 +0200
Message-Id: <20170331070346.26878-38-s.hauer@pengutronix.de>
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
Subject: [PATCH 37/42] state: backend bucket circular: Explain metadata
To: Barebox List <barebox@lists.infradead.org>

Explain why we have metadata and where it is used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 5a525f68e1..d99ba39126 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -61,6 +61,11 @@ struct state_backend_storage_bucket_circular {
 	struct device_d *dev;
 };
 
+/*
+ * The metadata will be written directly before writesize aligned offsets.
+ * When searching backwards through the pages it allows us to find the
+ * beginning of the data.
+ */
 struct __attribute__((__packed__)) state_backend_storage_bucket_circular_meta {
 	uint32_t magic;
 	uint32_t written_length;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
