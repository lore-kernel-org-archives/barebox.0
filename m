Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvm-0005BY-CI
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:22 +0100
Message-Id: <20190304113823.21535-6-s.hauer@pengutronix.de>
In-Reply-To: <20190304113823.21535-1-s.hauer@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ddr_spd: provide common SPD type
To: Barebox List <barebox@lists.infradead.org>

Provide a common struct type for the different SPD EEPROM types. Can be
used to pass around SPD data without specifying the DDR type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/ddr_spd.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index 95d0eb04b6..6e63d90e5e 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -499,6 +499,16 @@ struct ddr4_spd_eeprom {
 	uint8_t user[512-384];		/* 384~511 End User Programmable */
 };
 
+struct spd_eeprom {
+	union {
+		struct ddr1_spd_eeprom ddr1;
+		struct ddr2_spd_eeprom ddr2;
+		struct ddr3_spd_eeprom ddr3;
+		struct ddr4_spd_eeprom ddr4;
+		uint8_t data[512];
+	};
+};
+
 /*
  * Byte 2 Fundamental Memory Types.
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
