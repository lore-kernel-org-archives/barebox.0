Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9Pi-0000Ic-RW
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:01:15 +0000
From: Robin van der Gracht <robin@protonic.nl>
Date: Thu, 12 Nov 2020 11:00:42 +0100
Message-Id: <20201112100042.1853449-1-robin@protonic.nl>
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
Subject: [PATCH] nvmem: ocotp: fix fusing on fsl, imx6q-ocotp compatible boards
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>

The imx6q_ocotp_data struct is incomplete resulting in a crash when trying
to read/blow fuses.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/nvmem/ocotp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 356e9bf11..cee50955e 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -833,6 +833,8 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0 },
 	.format_mac = imx_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
