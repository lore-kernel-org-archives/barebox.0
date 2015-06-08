Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z1vXk-0002O1-8L
 for barebox@lists.infradead.org; Mon, 08 Jun 2015 11:48:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Jun 2015 13:48:16 +0200
Message-Id: <1433764096-26938-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] crc16: Make buffer argument const
To: Barebox List <barebox@lists.infradead.org>

The buffer is not modified by crc16, so make the argument const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/crc16.c | 2 +-
 include/crc.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/crypto/crc16.c b/crypto/crc16.c
index d22b656..0b08e9c 100644
--- a/crypto/crc16.c
+++ b/crypto/crc16.c
@@ -90,7 +90,7 @@ static const uint16_t crc16_tab[] = {
 };
 
 uint16_t
-cyg_crc16(unsigned char *buf, int len)
+cyg_crc16(const unsigned char *buf, int len)
 {
     int i;
     uint16_t cksum;
diff --git a/include/crc.h b/include/crc.h
index 10560c9..4290f41 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -95,6 +95,6 @@ cyg_ether_crc32_accumulate(uint32_t crc, unsigned char *s, int len);
 
 /* 16 bit CRC with polynomial x^16+x^12+x^5+1 */
 
-extern uint16_t cyg_crc16(unsigned char *s, int len);
+extern uint16_t cyg_crc16(const unsigned char *s, int len);
 
 #endif /* _SERVICES_CRC_CRC_H_ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
