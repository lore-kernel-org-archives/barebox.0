Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b7nBe-000524-Ge
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:39 +0000
Received: by mail-pa0-x242.google.com with SMTP id f8so25680548pag.0
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:39 -0700
Message-Id: <1464714580-31488-21-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/21] e1000: Add a "poll register" function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h |  4 ++++
 drivers/net/e1000/regio.c | 16 ++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index b47d538..73f2b98 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2139,5 +2139,9 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
 int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask);
 
+int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
+		   uint32_t mask, uint32_t value,
+		   uint64_t timeout);
+
 
 #endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
index 33012be..11b7d4b 100644
--- a/drivers/net/e1000/regio.c
+++ b/drivers/net/e1000/regio.c
@@ -53,3 +53,19 @@ void e1000_write_flush(struct e1000_hw *hw)
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
