Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qz-0008Gr-8Y
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:44 +0000
Received: by mail-pa0-x244.google.com with SMTP id hh10so1403964pac.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:56 -0700
Message-Id: <1475505657-898-20-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/20] i.MX: ocotp: Add Vybrid support
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
