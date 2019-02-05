Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8ft-00034X-RR
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id b7so2112636pfi.8
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:04 -0800
Message-Id: <20190205215411.589-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/15] reset: Constify "ops" in struct reset_controller_dev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/reset/reset-socfpga.c    | 2 +-
 include/linux/reset-controller.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index b6faa0217..9b499f23c 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -73,7 +73,7 @@ static int socfpga_reset_deassert(struct reset_controller_dev *rcdev,
 	return 0;
 }
 
-static struct reset_control_ops socfpga_reset_ops = {
+static const struct reset_control_ops socfpga_reset_ops = {
 	.assert		= socfpga_reset_assert,
 	.deassert	= socfpga_reset_deassert,
 };
diff --git a/include/linux/reset-controller.h b/include/linux/reset-controller.h
index d8265486a..aff03a9c6 100644
--- a/include/linux/reset-controller.h
+++ b/include/linux/reset-controller.h
@@ -35,7 +35,7 @@ struct of_phandle_args;
  * @nr_resets: number of reset controls in this reset controller device
  */
 struct reset_controller_dev {
-	struct reset_control_ops *ops;
+	const struct reset_control_ops *ops;
 	struct list_head list;
 	struct device_node *of_node;
 	int of_reset_n_cells;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
