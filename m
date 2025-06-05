Delivery-date: Thu, 05 Jun 2025 15:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARY-0041fh-0o
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARX-000317-Hz
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tx1Be3hmOJzBXGgj04XfKMNU/CdrYIGuicaFpybHig4=; b=CI8042/n2KapUMrhDnPJD1yZNQ
	NE02HBM8YHVgSw6j9Fxxs9u6mwlyBY7y4uUmNkUtMQjJAmCJihcEsYhb+pholKrUioodE6BSgBGIG
	dixfDo/yvyNaX3+tdGH6r2XTcy2FhRvcCpTz/UdhkGjCChqOHH9qwFDURZj3jFg8NEFvvrxWPpWUy
	veV0ShxHY8I5lNJ094CwAEaoZkvL94RjgMs/lfa9iR5owqzujwWqUcEXHfSINmlYFQ+SFLfWtntBy
	BDSfVe+hfLokOnfZZMIUl8JtcRizPJEtama7YZ8gnoMJ4+9NsPBenuWGBKjNotD5C9bc7lpyRSZkr
	d94AJ/RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAR8-0000000FaMK-0oAs;
	Thu, 05 Jun 2025 13:15:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFL-0000000FXwT-04w0
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Tx1Be3hmOJzBXGgj04XfKMNU/CdrYIGuicaFpybHig4=; b=JHst6wbPQsw86IJx+raCl68CE6
	FkqOKOFRsrU9M2pz9rweZKjekpHo67HOVEIXW9YOiZb+VukAeBmdeXCmbOooENJeWT+bBsoqfTqVT
	EuQZvOFk18rdz7yOPTG3nSZxKDIJ6x5kzxMNl2UCRjxQ/4icilvBbkoyJP+stsiDqmfB5D5xweV7m
	RSlG8JZICA2MhMnxvAOyil3NQwN+c/j0QpsRfQ4bQN2euxFNdApKhmAIWOv+F9tbENDxGEe4w3JyY
	is2CbLFYN9xTHyMLIsGtAOtkWqxtP627SIeBAttW1C3D8qZa+jkV2/124hnnaQXVbdChqn4y3JRw9
	dZWSVJzA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJx-0uH9
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00014i-PP; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xkG-1v;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1v;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-31-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=725;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DL1Ss1wTHlT9Di726ZdFzkQvaLWZhBXqCgHfBPBRt+A=;
 b=GA8pUkJ5rVwwfI3hqJyHB3gN+XUKpM5xGvq+uzxss8tkm/MglrQ9V94bKENManfNUK+TlnvPq
 4WdIdn2LeQxA+VxwNHfhFTOlkNWYWXZ9dN1/bGSoQ8mfVCoLW4212dk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_339716_04AE06A7 
X-CRM114-Status: UNSURE (   8.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 31/33] ARM: K3: am62l: add serial aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index fa253dd08ee9c117bedff9f981aa76e024d3cca8..b287ca5b837ea6290a0390e4f1bd880ec9c69e1e 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -16,6 +16,16 @@ &wkup_gpio0 {
 };
 
 / {
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+		serial6 = &uart6;
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;

-- 
2.39.5



