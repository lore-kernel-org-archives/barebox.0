Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffvm-0006ZH-RF
 for barebox@lists.infradead.org; Tue, 25 Jun 2019 07:31:56 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 25 Jun 2019 09:31:45 +0200
Message-Id: <20190625073146.26639-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/2] i.MX: HABv4: use min_t instead of min
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This fixes a compiler warning because len is size_t and
RNG_FAIL_EVENT_SIZE was cast to uint32_t.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 496fbe3ccd..2e3e349b0b 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -419,7 +419,7 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
 	int i;
 	for (i = 0; i < ARRAY_SIZE(habv4_known_rng_fail_events); i++) {
 		if (memcmp(data, habv4_known_rng_fail_events[i],
-			   min(len, (uint32_t)RNG_FAIL_EVENT_SIZE)) == 0) {
+			   min_t(size_t, len, RNG_FAIL_EVENT_SIZE)) == 0) {
 			return true;
 		}
 	}
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
