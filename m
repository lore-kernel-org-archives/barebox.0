Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haabJ-0002Ip-2s
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 06:49:46 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 11 Jun 2019 08:49:05 +0200
Message-Id: <20190611064906.8938-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/3] nvmem: ocotp: Elongate OCOTP_CTRL_ADDR field
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Port of patch from linux-arm-kernel:
| From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
|
| nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to eight bits
|
| i.MX6 defines OCOTP_CTRLn:ADDR as seven bit address-field with a one bit
| RSVD0 field, i.MX7 defines OCOTP_CTRLn:ADDR as a four bit address-field
| with a four bit RSVD0 field.
|
| i.MX8 defines the OCOTP_CTRLn:ADDR bit-field as a full range eight bits.
|
| i.MX6 and i.MX7 should return zero for their respective RSVD0 bits and
| ignore a write-back of zero where i.MX8 will make use of the full range.
|
| This patch expands the bit-field definition for all users to eight bits,
| which is safe due to RSVD0 being a no-op for the i.MX6 and i.MX7.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 5b8b925cb4..ab543b475f 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -51,7 +51,7 @@
 #define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
 #define OCOTP_CTRL_WR_UNLOCK_MASK	0xFFFF0000
 #define OCOTP_CTRL_ADDR			0
-#define OCOTP_CTRL_ADDR_MASK		0x0000007F
+#define OCOTP_CTRL_ADDR_MASK		0x000000FF
 #define OCOTP_CTRL_BUSY			(1 << 8)
 #define OCOTP_CTRL_ERROR		(1 << 9)
 #define OCOTP_CTRL_RELOAD_SHADOWS	(1 << 10)
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
