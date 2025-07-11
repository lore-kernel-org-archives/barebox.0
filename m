Delivery-date: Fri, 11 Jul 2025 14:31:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuL-00GOFc-3D
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuL-0000I6-F2
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:31:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aO4dx05Rhu6EO2igWUbXdMPT+/C8heCRZKztr6+ryW8=; b=qPjsMEdtEQz+4pQtaIwHlGBf4+
	vB6G/EmznvZRf3c5LW/BCp/0QAAoEUl1HTAVVgtwL5k2TGCZO3/cusCMz2G3jj9bivfYmItr2BXv3
	fR6wL7OEDV047lPXVLvSJJDGCQrH6cWjqCyY59GctE98IHcxsx/+errgPcQaQWxfnwzzku3dHsXVs
	TGupSGMNPjM4Xn0HlwMPsTrO2+sKKOU1w+d6bH6g7eH+HuGsz0BABrvNhofQsHbltzBDQmOrEK56E
	MGg4vwtisJcv+cfHwRyxxA/9SVbwPjJxpXJATbk8XRl+OJ/kAV8+LoMsJeUdfJuxTBNHKBy5yJVbp
	XP5iJHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCtf-0000000EkHZ-0rxF;
	Fri, 11 Jul 2025 12:30:35 +0000
Received: from mail-108-mta33.mxroute.com ([136.175.108.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCqt-0000000Ejph-12fE
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:27:45 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta33.mxroute.com (ZoneMTA) with ESMTPSA id 197f9749b300008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 11 Jul 2025 12:27:38 +0000
X-Zone-Loop: bc04ad82d3b75cdf5bf8a4df2f3009179d8817edeaf2
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=aO4dx05Rhu6EO2igWUbXdMPT+/C8heCRZKztr6+ryW8=; b=Lbh0Wb0Vwc7m9jk8D4ofAcLmGz
	YGMIAKGi8sH4tU1lXwLc/PcUIWjNgkzOiL3Cw7LUzjizJumh3AXEvxaSK64scD1Luae8n3nxcN20T
	jmOK6f8mVP7ywTr6R4q875OQXJjC7xpi3nSnrdofbPECqZXg/YMqVdcCSV4TOJ9sv8WLRr5CBb482
	YQ3n6ku9zzD1Gbsjbk/6wdqU0OfXD70paTq9VzfjmJe/Pa2KmQOIjRwVwECQzO6pkak7oagM5gmwf
	tFulEayI13gtrwK++dySBC5uynSCwnJS7PZlRDwA3G6N+tss8y4Fe3cuDLDvz5SWYR46/tglFXbz3
	iBlUiiSg==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jul 2025 20:27:28 +0800
Message-Id: <20250711122729.108015-2-bo@mboxify.com>
In-Reply-To: <20250711122729.108015-1-bo@mboxify.com>
References: <20250711122729.108015-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_052743_364448_8DC71B7E 
X-CRM114-Status: UNSURE (   6.13  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] miitool: clarify help text for default behavior and -s option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The -s option description was misleading about default behavior.
Clarify that miitool without options shows all PHYs, and -s requires
a device argument.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 commands/miitool.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 0121fdc542..0c70b51ad3 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -344,9 +344,11 @@ BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit as well as allowin
 BAREBOX_CMD_HELP_TEXT("register dummy PHY devices for raw MDIO access. Most fast ethernet")
 BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duplex setting.")
 BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("When run without options, shows status of all PHYs.")
+BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
-BAREBOX_CMD_HELP_OPT("-s <devpath/devname>", "show PHY status (not providing PHY prints status of all)")
+BAREBOX_CMD_HELP_OPT("-s <devpath/devname>", "show PHY status for specified device")
 BAREBOX_CMD_HELP_OPT("-r <busno>:<adr>", "register a PHY")
 BAREBOX_CMD_HELP_END
 


