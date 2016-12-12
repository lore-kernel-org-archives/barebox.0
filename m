Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUx7-0005Fu-Sn
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:03:55 +0000
Received: by mail-pg0-x242.google.com with SMTP id p66so1666344pga.2
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:02:54 -0800
Message-Id: <1481565788-9115-8-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/21] i.MX: ocotp: Add imx_ocotp_sense_enable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add imx_ocotp_sense_enable() function to allow changing that aspect of
OCOTP driver behaviour before calling imx_ocotp_read_field()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/ocotp.h | 1 +
 arch/arm/mach-imx/ocotp.c              | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index 430bc75..5474c27 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -16,5 +16,6 @@
 int imx_ocotp_read_field(uint32_t field, unsigned *value);
 int imx_ocotp_write_field(uint32_t field, unsigned value);
 int imx_ocotp_permanent_write(int enable);
+bool imx_ocotp_sense_enable(bool enable);
 
 #endif /* __MACH_IMX_OCOTP_H */
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 2c89f5e..fe12363 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -359,6 +359,13 @@ int imx_ocotp_permanent_write(int enable)
 	return 0;
 }
 
+bool imx_ocotp_sense_enable(bool enable)
+{
+	const bool old_value = imx_ocotp->sense_enable;
+	imx_ocotp->sense_enable = enable;
+	return old_value;
+}
+
 static uint32_t inc_offset(uint32_t offset)
 {
 	if ((offset & 0x3) == 0x3)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
