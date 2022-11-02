Delivery-date: Wed, 02 Nov 2022 14:55:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqEDD-00CR8A-B8
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 14:55:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqEDA-0000Mn-W8
	for lore@pengutronix.de; Wed, 02 Nov 2022 14:55:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q3KqVCgey0OSiOtso2UVajQlylGo43BFWVQ4goOZlP0=; b=RLR4jgwq37SsES
	YpHRRVoz9yNM9v5IwcrE8M01P7n3iOBu7EZjPFdURnGA6kRs6ZmqETzn7O6H+efeoOULbG/XxVysK
	OXjw1NJEBZDB6+AVAAsLr5e8DaKX5pc3p8+zbiMFAxFkJ22w/M1alnrk7NP5xdzDlgodrcG9J/V3r
	tew97aiYEkhmbWbB+/RiAqcax+RWkY+jvgrz4jkEbje24YrTcYPqbcUJC8YlqBdy/B4BX5zt3yq2G
	LhleT/DOBxYTJOwemUuJoTSKD3yW07ReUYbP+/YDeQmlokPV2XLpWJugRvcZTNSbbQ1Xhqn0+nuMo
	P9ZsafsgwiOm8WUMxQpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqEB5-00BMpQ-WE; Wed, 02 Nov 2022 13:53:12 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqEAy-00BMk3-Ep
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 13:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=Q3KqVCgey0OSiOtso2UVajQlylGo43BFWVQ4goOZlP0=;
	b=Z5RP8erxAHvg3Qwr8nioxj9BnWt/HXKoZR41P0ZUopXE2A369WAyJtV8y8pzec/sq+SiYn+gN/u3o
	 u3a4HyQMgdiWQyDLDuYS/2sFuozESOcP/4eCxv+LKVSgDpgvLtp+5myZqreVnXK9EIkOEJ2/lNYcTE
	 q0XGa2u89UwlqFShlHOj+WYRFVLaSgyZKsJSQqvUn0DlPnvxlzzN8kHW8MNwEYlBdJjMPgidUqVIuM
	 V9xm74NfHkenJsZRFqKNVkwXjeXcCoL9OphoxIi4XOjHEKnPftOPB3Le4VojEuWsxTk1S+Ot242Zh0
	 2vxIPLd6jtMN3NPTEGp+mj4RBbbmZ0Q==
X-MSG-ID: a0fc8074-5ab5-11ed-b61c-0050569d3a82
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  2 Nov 2022 14:53:14 +0100
Message-Id: <20221102135314.123789-1-robin@protonic.nl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_065304_957136_6534B48E 
X-CRM114-Status: UNSURE (   6.53  )
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
Cc: Robin van der Gracht <robin@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: mach-imx: Add missing ocotp dependency to protonic-imx6 platform
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The protonic-imx6 board code calls imx_ocotp_read/write_field functions.
Compiling without IMX_OCOTP results in a build failure.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dcb70c8c1a..b95c6e456e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -350,6 +350,7 @@ config MACH_PROTONIC_IMX6
 	select ARCH_IMX6
 	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
+	select IMX_OCOTP
 
 config MACH_PROTONIC_IMX8M
 	bool "Protonic-Holland i.MX8Mx based boards"
-- 
2.37.2



