Delivery-date: Fri, 13 Dec 2024 15:06:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6Jh-007bzI-2J
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 15:06:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM6Jh-0007MX-Lc
	for lore@pengutronix.de; Fri, 13 Dec 2024 15:06:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nxgYPA4DdiokxYYgP+HKFKArV9zggYvGZ4WDAjZZd5A=; b=wR3XvWLIRbMqciVrQgohQyTnp9
	4qGU3VGbgtQV+jpnAGwTkunPf2gm1n+SMuf4BIuo8Yhl64o1pAUuRHlOz5KrJramiPzrH+f5P52/k
	puIplglYJCfM5l+t0pvaFJnYgmihLDE0M3Nbb1FU0HD54k0qHwRb5LGWKiXq7AY1XX8zp9AbQbDx+
	o723NeFJp8YscW01Gi0gImqc9bYCRunmLozhQuSth2aMrDgFQlZzl1NZ4/1F0SMrlCogSh1SLLAze
	9k5o/76IAfI7Jszh8EjNIX8TYoYgHJtZ0ioQsYmMKmAq1zQkpqt9YMOt2qZDjcSfYnuWWjeacx1vz
	QPv9LEYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6J9-00000003wrr-2ofX;
	Fri, 13 Dec 2024 14:06:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM6J6-00000003wqE-0yZh
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 14:06:17 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tM6J2-0007Ce-Ej; Fri, 13 Dec 2024 15:06:12 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 13 Dec 2024 15:06:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-mx6q-pad-rts-v1-1-517bbb1b9aaf@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAEk/XGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Nj3dwKs0LdgsQU3aKSYl1LszRLixSjtJQ00zQloJaCotS0zAqwcdG
 xtbUAbqgbNl4AAAA=
X-Change-ID: 20241213-mx6q-pad-rts-96f98d2fdf5f
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2383; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=rk9VK3u+7eYw1rf7E7kDH3b749e4czAGW+WinUKTCzY=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiPsfcvvSX8dlfx1Pzja84KarWy2sY4uvdOd9um9o3ha
 W6OR9+LjlIWBjEOBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwETWZjAy7Old/u/Q+zMeDHbc
 yUkPNIrVs6tfPdwv7XXK6UipgGTfA0aGTQaLpDtXX2U81Zt1vHLhO+br6zvlA92jtcSuHpJurij
 lBwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_060616_271445_A2F6832B 
X-CRM114-Status: UNSURE (   7.40  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX6: correct UART IOMUX_PADs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For SD3_DAT0, add the definition for UART1_RTS and correct UART1_CTS to
longer use the actual address of RTS Select Input Register.

As confirmed by the i.MX manual and dts/src/arm/nxp/imx/imx6q-pinfunc.h:

 #define MX6QDL_PAD_EIM_D19__UART1_CTS_B      0x09c 0x3b0 0x000 0x4 0x0
 #define MX6QDL_PAD_EIM_D19__UART1_RTS_B      0x09c 0x3b0 0x91c 0x4 0x0

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 include/mach/imx/iomux-mx6.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/mach/imx/iomux-mx6.h b/include/mach/imx/iomux-mx6.h
index 991300060096a2a0e64dad7fc7d0ebe000331590..d2eacc9a33b65e7d8253fec065f70795a9ec731c 100644
--- a/include/mach/imx/iomux-mx6.h
+++ b/include/mach/imx/iomux-mx6.h
@@ -332,6 +332,8 @@
 #define _MX6Q_PAD_EIM_D19__IPU2_CSI1_D_16                                      \
 		IOMUX_PAD(0x03B0, 0x009C, 3, 0x08C8, 0, 0)
 #define _MX6Q_PAD_EIM_D19__UART1_CTS                                           \
+		IOMUX_PAD(0x03B0, 0x009C, 4, 0x0000, 0, 0)
+#define _MX6Q_PAD_EIM_D19__UART1_RTS                                           \
 		IOMUX_PAD(0x03B0, 0x009C, 4, 0x091C, 0, 0)
 #define _MX6Q_PAD_EIM_D19__GPIO_3_19                                           \
 		IOMUX_PAD(0x03B0, 0x009C, 5, 0x0000, 0, 0)
@@ -3796,6 +3798,7 @@
 #define  MX6Q_PAD_EIM_D19__IPU1_DI0_PIN8                         (_MX6Q_PAD_EIM_D19__IPU1_DI0_PIN8 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_EIM_D19__IPU2_CSI1_D_16                        (_MX6Q_PAD_EIM_D19__IPU2_CSI1_D_16 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_EIM_D19__UART1_CTS                             (_MX6Q_PAD_EIM_D19__UART1_CTS | MUX_PAD_CTRL(MX6Q_UART_PAD_CTRL))
+#define  MX6Q_PAD_EIM_D19__UART1_RTS                             (_MX6Q_PAD_EIM_D19__UART1_RTS | MUX_PAD_CTRL(MX6Q_UART_PAD_CTRL))
 #define  MX6Q_PAD_EIM_D19__GPIO_3_19                             (_MX6Q_PAD_EIM_D19__GPIO_3_19 | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_EIM_D19__EPIT1_EPITO                           (_MX6Q_PAD_EIM_D19__EPIT1_EPITO | MUX_PAD_CTRL(NO_PAD_CTRL))
 #define  MX6Q_PAD_EIM_D19__PL301_MX6QPER1_HRESP                  (_MX6Q_PAD_EIM_D19__PL301_MX6QPER1_HRESP | MUX_PAD_CTRL(NO_PAD_CTRL))

---
base-commit: a7ae043343c89e8b75904a41174b9b4cf2df35a0
change-id: 20241213-mx6q-pad-rts-96f98d2fdf5f

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



