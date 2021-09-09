Delivery-date: Thu, 09 Sep 2021 11:15:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9z-0004CL-Ta
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 11:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9z-00051e-0x
	for lore@pengutronix.de; Thu, 09 Sep 2021 11:15:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddN9LI6hX9+vPu2X3HVhaPid3NmNShE7UQIhIfaR/Gs=; b=qGvrRkz7HOh652
	zjGLD9cZP17XQZvC5iWcHiQ2ECByckrd/w1m0dfR8AevQtfADNhNRbXQmwHlu458+hG7U+uOpWAvD
	BYpl3II0Hc/BRjAmf+O8bI3E+mkk+/LD7lpeY/hdkhTkUkTEQ50JyBZiF7fh0tHMPb+aKiHdcofBg
	wVce3bSMv+WLqBUVLTzBXKYD2/Tw3nEkSCKtj/aLyIpDANffNfGr0yzxGLfVukv+yYaNPkj6VVcXu
	f66QrciWsxwRBs7Z8O/5YcRNybkzNYhVHnXnzmAmCgBbNlz7Nx9IXNHOm0c6l9zj2kMrhj66xX+kU
	l3pv8alQmMJgWTY901qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOG8M-008jwa-US; Thu, 09 Sep 2021 09:14:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOG8A-008jsy-MA
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 09:14:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0004Lg-Qt; Thu, 09 Sep 2021 11:13:58 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0002TM-CY; Thu, 09 Sep 2021 11:13:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 11:13:42 +0200
Message-Id: <20210909091349.9446-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_021402_849138_572FB6FC 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/8] ARM: dts: skov-imx6: add USB nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need USB working to make use of USB ethernet adapters.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6qdl-skov-imx6.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index 03f3cb02fc..371a931e53 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -273,6 +273,26 @@
 	remote-endpoint = <&display0_in>;
 };
 
+&usbh1 {
+	disable-over-current;
+	status = "okay";
+};
+
+/* no usbh2 */
+&usbphynop1 {
+	status = "disabled";
+};
+
+/* no usbh3 */
+&usbphynop2 {
+	status = "disabled";
+};
+
+&usbotg {
+	disable-over-current;
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

