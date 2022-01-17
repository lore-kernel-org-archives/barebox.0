Delivery-date: Mon, 17 Jan 2022 23:21:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNo-004zGW-El
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNm-0005Pr-H8
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pp0CtKP6MHKOoWY4vnAjEMUl/di4MBfAkh8N3vxs8xo=; b=rWOJZiDmFKKAqt
	mwFJWqK+hzkefUUAzESay2dpydJ7MQisY/SxLgSnZulUAVAZE013nWc7Jd7y8AfcjnG/R7sbmS1Y5
	DGejjz1Czgn+kdZSSTYIjfkX/MgbpEtK69YpoyLN9XJvqmaMjUnH90pmxM5FheTrrUkBsdnSOEyc1
	QLFCRaVIDosdqEBRkzTdOHcanx9RGyYp98MP3OiCoy1a3Aipgi9TgbhSBAVQwUve1hKVZrbzGEjXc
	Khbp8CXnSQNrCWfexfyJg7Ar4CvcjuKJ6lRJQLB40iAiplO1KziwOipS+CJ+ojIM3Esny/J+jwn7E
	I1gKuWbhmAOgjBfvwyHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aMD-00GTBM-E5; Mon, 17 Jan 2022 22:20:09 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6m-8k
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id A2FB73D3B054
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642457997;
 bh=dn8btmROBmnGCHrb5m0OU13cRrhy5twDrLaf1n0BcuY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MINSlOkRxr6YrKYc+FsYuAtU9WW4pwnyFq+OFqyUqsXb2Cu//S4LAOtLenXvAWh/A
 WwpRvjn4W4G7EVOmPl32p0ZbjDRFGIaw9r18QUrpbbU7wryd8rtuVNfv7yrMiHrPaP
 F/3NLevVM0YbYLPnAg5QQAkTLjux9s/WVk3elmh8=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 59F933D3B01B;
 Mon, 17 Jan 2022 23:19:57 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <10d6b.61e5eb8c.39782.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id 10D803D3B016;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 1F3AA27E03EB;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 070C127E03CB;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 070C127E03CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457996;
 bh=mIwlyYrZHkWl8aTmyPoNhhChPlA4uJd6n3CElfvxqac=;
 h=From:To:Date:Message-Id;
 b=pKiJmOEMiioLjQc7IRlK9lSOy69HFrnSeygapS5WymQswjXS+rT76CQvXMyN2p+Ac
 EarBdvbLkDKZPJuXGJoNcZWGULujwnmEia1Iu4LGfIelm16Es9DyndwHOS0YjEQ6vM
 wNVLW4VEUZvLG0HXX8N6U+DTshs/pZZU2CNCNB54=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id e5DPalx8MSwV; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id DCB2827E03F9;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:16 +0100
Message-Id: <20220117221917.26970-11-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_477948_A4BE459B 
X-CRM114-Status: GOOD (  10.88  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/11] drivers: add soc hierarchy properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <clement.leger@bootlin.com>

We will add kvx driver in this folder to create a proper hierarchy.

Signed-off-by: Clement Leger <clement.leger@bootlin.com>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/Kconfig     | 2 +-
 drivers/soc/Kconfig | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)
 create mode 100644 drivers/soc/Kconfig

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 01b659b02c..2636eed1a3 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -41,7 +41,7 @@ source "drivers/fpga/Kconfig"
 source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
-source "drivers/soc/imx/Kconfig"
+source "drivers/soc/Kconfig"
 source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
new file mode 100644
index 0000000000..d78f13f3f8
--- /dev/null
+++ b/drivers/soc/Kconfig
@@ -0,0 +1,5 @@
+menu "SoC drivers"
+
+source "drivers/soc/imx/Kconfig"
+
+endmenu
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

