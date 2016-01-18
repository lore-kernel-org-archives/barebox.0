Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sy-00028l-Ik
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:45 +0000
Received: by mail-pa0-x241.google.com with SMTP id gi1so39409628pac.2
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:37 -0800
Message-Id: <1453089161-6697-16-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/20] e1000: Add functions for register polling
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 291e64d..5e24758 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2176,5 +2176,24 @@ static inline uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
 }


+static inline int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
+				 uint32_t mask, uint32_t value,
+				 uint64_t timeout)
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
+
+#define E1000_POLL_REG(a, reg, mask, value, timeout)	\
+	e1000_poll_reg((a), E1000_##reg, (mask), (value), (timeout))

 #endif	/* _E1000_HW_H_ */
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
