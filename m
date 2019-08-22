Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0T-0002yN-Ft
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:35 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:05 +0200
Message-Id: <20190822055114.931-3-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 02/11] ratp: fix use of %hu for printing int
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

While each of path_size and data_size is 16 bit in size, their sum may
exceed this. Also the type of the resulting expression is an int, thus
change the format specifier accordingly.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/ratp/mw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ratp/mw.c b/common/ratp/mw.c
index 55e79bbaf08b..772910b39d1b 100644
--- a/common/ratp/mw.c
+++ b/common/ratp/mw.c
@@ -125,7 +125,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 
 	/* Validate buffer size */
 	if (buffer_size < (path_size + data_size)) {
-		pr_err("ignored: size mismatch (%d < %hu): path or data not be fully given\n",
+		pr_err("ignored: size mismatch (%d < %u): path or data not be fully given\n",
 		       req_len, path_size + data_size);
 		ret = -EINVAL;
 		goto out;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
