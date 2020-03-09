Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNW3-0001vc-5W
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 18:52:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id v4so12595352wrs.8
 for <barebox@lists.infradead.org>; Mon, 09 Mar 2020 11:52:38 -0700 (PDT)
Received: from ?IPv6:2a02:8070:bb9:bc00::fc? ([2a02:8070:bb9:bc00::fc])
 by smtp.gmail.com with ESMTPSA id n24sm22801933wra.61.2020.03.09.11.52.32
 for <barebox@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 11:52:32 -0700 (PDT)
Message-ID: <724e1315ccc2cf7cfe0bf90c893b65b24f5310fc.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Mon, 09 Mar 2020 19:52:31 +0100
In-Reply-To: <b2db7e05d21f4e164862a52e2bee358ebf8a618b.camel@googlemail.com>
References: <b2db7e05d21f4e164862a52e2bee358ebf8a618b.camel@googlemail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: advantech-rom-7421: Add ocotp node to provide
 mac address
To: barebox@lists.infradead.org

This patch adds an ocotp node to provide barebox with a mac address
for Advantech ROM-7421.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/dts/imx6dl-advantech-rom-7421.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
index 22ce744307..f0e3f4aa1f 100755
--- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
+++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
@@ -86,6 +86,10 @@
 	status = "okay";
 };
 
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
