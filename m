Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjE-00022z-Q9
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:33 +0000
Received: by mail-pf0-x241.google.com with SMTP id c84so6516127pfc.1
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:33 -0700
Message-Id: <1464843531-1824-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/22] e1000: Fix a bug in e1000_detect_gig_phy
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
