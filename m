Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x243.google.com ([2607:f8b0:400e:c03::243])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b8KjR-00014N-GJ
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:46 +0000
Received: by mail-pa0-x243.google.com with SMTP id x1so2243723pav.1
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:49 -0700
Message-Id: <1464843531-1824-21-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 20/22] e1000: Add a "poll register" function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h |  4 ++++
 drivers/net/e1000/regio.c | 16 ++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index c6d26d5..cb3e5ef 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2144,5 +2144,9 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
 int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask);
 
+int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
+		   uint32_t mask, uint32_t value,
+		   uint64_t timeout);
+
 
 #endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
index 4970084..b2e9d7b 100644
--- a/drivers/net/e1000/regio.c
+++ b/drivers/net/e1000/regio.c
@@ -52,3 +52,19 @@ void e1000_write_flush(struct e1000_hw *hw)
 {
 	e1000_read_reg(hw, E1000_STATUS);
 }
+
+int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg, uint32_t mask,
+		   uint32_t value, uint64_t timeout)
+{
+	const uint64_t start = get_time_ns();
+
+	do {
+		const uint32_t v = e1000_read_reg(hw, reg);
+
+		if ((v & mask) == value)
+			return 0;
+
+	} while (!is_timeout(start, timeout));
+
+	return -ETIMEDOUT;
+}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
