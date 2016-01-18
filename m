Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sl-0004wt-IP
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:32 +0000
Received: by mail-pf0-x244.google.com with SMTP id 65so11175642pfd.1
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:23 -0800
Message-Id: <1453089161-6697-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/20] e1000: Fix a bug in e1000_detect_gig_phy
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
index 552b0dc..05c3a78 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3097,7 +3097,7 @@ static int32_t e1000_detect_gig_phy(struct e1000_hw *hw)
 		return -E1000_ERR_CONFIG;
 	}

-	if (!phy_type == e1000_phy_undefined) {
+	if (phy_type == e1000_phy_undefined) {
 		dev_dbg(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
 		return -EINVAL;
 	}
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
