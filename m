Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-f195.google.com ([209.85.192.195])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VX2-0005Mq-2B
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:29 +0000
Received: by mail-pf0-f195.google.com with SMTP id 144so793527pfv.0
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:15:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:13 -0800
Message-Id: <1478708056-7875-26-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 25/28] i.MX: ocotp: Add Vybrid support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index b978508..989a3cc 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -451,6 +451,14 @@ static u32 imx6q_addr_to_offset(u32 addr)
 	return imx6sl_addr_to_offset(addr) + addendum;
 }
 
+static u32 vf610_addr_to_offset(u32 addr)
+{
+	if (addr == 0x04)
+		return 0x450;
+	else
+		return imx6q_addr_to_offset(addr);
+}
+
 static struct imx_ocotp_data imx6q_ocotp_data = {
 	.num_regs = 512,
 	.addr_to_offset = imx6q_addr_to_offset,
@@ -461,6 +469,11 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.addr_to_offset = imx6sl_addr_to_offset,
 };
 
+static struct imx_ocotp_data vf610_ocotp_data = {
+	.num_regs = 512,
+	.addr_to_offset = vf610_addr_to_offset,
+};
+
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-ocotp",
@@ -472,6 +485,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 		.compatible = "fsl,imx6sl-ocotp",
 		.data = &imx6sl_ocotp_data,
 	}, {
+		.compatible = "fsl,vf610-ocotp",
+		.data = &vf610_ocotp_data,
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
