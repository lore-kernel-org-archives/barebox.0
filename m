Delivery-date: Sun, 22 Jan 2023 18:53:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXL-002Gjv-NB
	for lore@lore.pengutronix.de; Sun, 22 Jan 2023 18:53:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJeXJ-00042p-Oc
	for lore@pengutronix.de; Sun, 22 Jan 2023 18:53:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+GMJQTqWfJRX6x6DF4W3Er+RDlybvrPUTssAfS/uu2c=; b=bYXONsrD/6TDsSvvLVOFBQ7IQf
	+/VYe8ytFkphI5wrC/jvBoSTYvdUxFah+wiKwSjInymk6YXlwMtjc+Z0x+MOfAfD0wNT/ZLJB+44M
	rDq9Z+o3RVDWxDWCYePP0AtuKsBFt/8XbjxKtUUJkdUvOsTG/mkg0ihirkiz6CKtN4YMIYbz24DX6
	xfpJoCfnXsF3KQm5Zgb8lM4m5y8/LynvcvTL5TmV0EhBUAbFWnzDex6Ysw50QoKl9lWSqOI7L2qj6
	tcarH7zie04IV6Dov6oqYg+pfYlX8x1KwYRz0bG5iUdhP2goxQ1E5XiBMHsOyYpY0cN0q/D4MTgYB
	sKpmb9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeW6-00FcBw-PT; Sun, 22 Jan 2023 17:52:30 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJeW2-00FcAR-50
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 17:52:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674409944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+GMJQTqWfJRX6x6DF4W3Er+RDlybvrPUTssAfS/uu2c=;
	b=lIdocdDScZXkvfNZrcUZrFr/IRgHC8u+OsUucQiukjZbR7g/z9R0jaE4n40tdy1jqvI1yu
	75STgsV3wEyT/lkY6s38yQoAQy2Maq1CFNZvcajQcPUNJAYROvIUSI9sq0mZCQMDjp2ynL
	5upbz8FrFPJkcdq9A8MBzyzGzpE8omOM8K/8kE2mVB49N92YMuf7gnYELyNOc+4RJMSpYR
	jJLKIlVnlTl3divp/Hvr0GTBDJ7ph5wGLjGbJCt5vQA/6LwaAk6EJaoeRox1/W8seBJbGj
	lzJ11HcdH21T7yn5zKK3ruKGWvFJjNLZ4FiO2YBqS0WYVAnT/XU4D4vUNoI18A==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Mon, 23 Jan 2023 04:51:39 +1100
Message-Id: <20230122175141.119834-4-contact@jookia.org>
In-Reply-To: <20230122175141.119834-1-contact@jookia.org>
References: <20230122175141.119834-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_095226_409301_B8993E5E 
X-CRM114-Status: UNSURE (   6.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] ARM: novena: Require the PFUZE regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena board uses a PF0100 for its power regulation, so select it when
building with support for the board.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a644cbb4df..5f2d4f4123 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -437,6 +437,7 @@ config MACH_NOVENA
 	bool "Kosagi Novena board"
 	select ARCH_IMX6
 	select MCI_IMX_ESDHC_PBL
+	select REGULATOR_PFUZE
 	select USB_GADGET_DRIVER_ARC_PBL
 
 config MACH_SOLIDRUN_MICROSOM
-- 
2.39.0



