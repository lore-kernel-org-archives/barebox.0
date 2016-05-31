Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBJ-0003gp-AN
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:18 +0000
Received: by mail-pa0-x244.google.com with SMTP id fg1so25458941pad.3
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:09:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:23 -0700
Message-Id: <1464714580-31488-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/21] e1000: Fix a bug in e1000_detect_gig_phy
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It seems there's stray exclamation mark character in
e1000_detect_gig_phy which renders the whole if statement useless
since it converts 'phy_type' into a boolean and comparing that to 0xFF
would always result in false (which GCC 5.1 is now able to detect and
warn about). This commit fixes that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index f3c0ed8..978e525 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3096,7 +3096,7 @@ static int32_t e1000_detect_gig_phy(struct e1000_hw *hw)
 		return -E1000_ERR_CONFIG;
 	}
 
-	if (!phy_type == e1000_phy_undefined) {
+	if (phy_type == e1000_phy_undefined) {
 		dev_dbg(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
 		return -EINVAL;
 	}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
