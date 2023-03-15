Delivery-date: Wed, 15 Mar 2023 08:14:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcLLY-001E8u-Js
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 08:14:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcLLY-00035j-5u
	for lore@pengutronix.de; Wed, 15 Mar 2023 08:14:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yOltV5WPRNYV31DDuq8FHLExzy8f0yk1X9qZomkS+ao=; b=gMe1BydskDxnRDeq/uwI2srh5a
	LBotq9Ip5UeEeaNc9HbKyRa9YadB17gb0FO9apHfYQGU71EXA24ZEm/np4BRXd/Nul3H+imvq7+4x
	9UhmiLfptMJrSfnRwC9IQMQzpkBkZlJbVQM6Np5NsTQr9RaxZFZRfsJbAntKAUqjyBNNDfmh6Wyne
	pUPseY2fhz+rOXzUC7woz7aWF9t04Bko0YxW2xuuDRvKc+MDoD8PWM1KtIWcWDdPOmMTcu3sFFqyN
	zFX4KZi5dlHqEvSKsSuIpnIqkcC9DiI3hnC/eV3ldIYhGIUeENCxsU0GbIS4r3yM9juPU4s4nF012
	DDRL64Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLK0-00CciB-1f;
	Wed, 15 Mar 2023 07:13:16 +0000
Received: from esa2.hc776-43.c3s2.iphmx.com ([216.71.158.83])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcLJw-00CchX-1A
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 07:13:14 +0000
X-IronPort-RemoteIP: 104.47.14.57
X-IronPort-MID: 2642270
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-vi1eur04lp2057.outbound.protection.outlook.com (HELO EUR04-VI1-obe.outbound.protection.outlook.com) ([104.47.14.57])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Mar 2023 08:05:37 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLg9fFx1/SwR1ma0QsOZerUYTjgE8U0aUyEdYpnhC+uJH33baosh4GxpTlTHJ8ALFzCGIUZC0M3pfssxvwXesaoU+3hHRik7Yu26SKpkztQqcKpZCQpLdNdT0dx6oDuEwh9/mWb4CH6sjQbXv/82qzG411BaPrlnr/8WrOQHxv14GvtLFjloGuhqYrZSgS5OVqFUAZD9i9Fn4G0Fjc37EWjUfOM+zPnTM4gXJfBneDSxgpub4eAZm8xRyoZ5XEIG6Chv9hx0GW2vVTtZo9SV/F9MXCGw+ZGrQUkznJc6kZE+fUsdPVjZUizaFJVY5Ga6A+IUiJ090T5bbYngjtlOxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOltV5WPRNYV31DDuq8FHLExzy8f0yk1X9qZomkS+ao=;
 b=VTfivIMf8AaK7N7KWH049K3BM/DP30LGNkmG+wqVcmblRfAMJ/vpzg/qHMb0ANNbJp3YWQfkg9rSlI/rsxDPk0Vq3+aXD8PpyRM7OFFGp5Dif/NvKTnv7RRnpo1aEveM1LuPeDBW7PQ/jetJKTr3BDPjj21ruShdaOUT4ctxrvgDYDorD9cdKMGaLZMESbzmY0CoARezYVByvd4AQH1l2GL2ajE8QgbKzOvwQjXwTJz5yXg3nfCaG40HhWDzK34WNkfedqtPfb13VEkfJBN/UIGC4BbhDWp6Vk3bn5mfmkKy4KP2ZcE0OItZdCilvpIalLcB85s1gIRTWWYnq8NYmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 95.130.216.34) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=datarespons.com; dmarc=none action=none
 header.from=datarespons.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOltV5WPRNYV31DDuq8FHLExzy8f0yk1X9qZomkS+ao=;
 b=GOVg+NMrKHEbuJwhZBN70wR54mwjKEjOkBBAcyW2253L+QFB+rA9oD27eKAKG3qP2zjbAtP8DFXiHnZXWor6VnNNToFIdPG9GCxmOkN1vjXfGh7YfJNb+WoDgZMfNzJKbjVhRicHO7uONYCG72mNphh3sc2r+KeDlPr1lRxBusI=
Received: from DB8PR03CA0010.eurprd03.prod.outlook.com (2603:10a6:10:be::23)
 by AM9PR03MB6994.eurprd03.prod.outlook.com (2603:10a6:20b:2d6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Wed, 15 Mar
 2023 07:05:35 +0000
Received: from DB3EUR04FT009.eop-eur04.prod.protection.outlook.com
 (2603:10a6:10:be:cafe::e0) by DB8PR03CA0010.outlook.office365.com
 (2603:10a6:10:be::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29 via Frontend
 Transport; Wed, 15 Mar 2023 07:05:34 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 95.130.216.34) smtp.mailfrom=datarespons.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 datarespons.com discourages use of 95.130.216.34 as permitted sender)
Received: from hcl-m1-vm.data-respons.com (95.130.216.34) by
 DB3EUR04FT009.mail.protection.outlook.com (10.152.24.230) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.22 via Frontend Transport; Wed, 15 Mar 2023 07:05:34 +0000
From: Hans Christian Lonstad <hcl@datarespons.com>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Hans Christian Lonstad <hcl@Datarespons.com>
Date: Wed, 15 Mar 2023 08:05:31 +0100
Message-Id: <20230315070531.9697-1-hcl@datarespons.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3EUR04FT009:EE_|AM9PR03MB6994:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 9df3f674-9eff-4420-7130-08db2523ac2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	nBfOYyNAYfzY8jCNlNu4EFt8kA9BC+Td6COK+SzR+O6RQ881uq0lqGb5tT8OlKx248ofBlBHiCTZC019DsAZ9Pgemfnv9n1ANY0ANymt4yK32B28MfLrNtIL7fW2kM2ixbwlt7ErIV17O1jlJFA0UNd8YNViI5MZ16XnW5Iq0anYL9Lg5w3FmlajESb61gvGQ83NIu+6ZzK+tkXJUjLm9Ye7bRSJ9t/EMrf9U4DAo/mrPY0RSYeWxUW/sO3uRdcoLBa83JUaqlzp9ED3OZNfKRTIFQDz0CI9elZqBlHdd4EopmJ5DcLeCa7TVh01JbmoK3BozjMy0bTy6HOFuMc7GCvdPEgH3TcuJaomvyd8iSAT61O0nrcz1Lfs7qce88zra14AigW1k/4aPCHCAdA7xoNAWO3w7o3yCxA+zmNw4vPDMvgO6yuXpdJXjsPdtDTectPTO+H5u6Rnhf+ua7LvihVQzSUlD0/RL1Y1s3VpbJHr2URIOoiETb6nUPSztZwC91zakThtB6M6j3BhwB/06Zir5mdXptKFbTJ9YlEZSijUaN9zaa36G+ZaEgm7sqNtNxdlPM6R3jCCDhTevKIR1grKsktG2oeG8JAPsCAGKyD8B/Al+O3YRRdse4d5viR9N7iXzxYJceqEuAACV13rhO7OulPVycjb3emi5Z4Tpl3bTXQEQSpRisxVsstJXIF+VAMIJ2ZXyJvfN4brxLbxYw==
X-Forefront-Antispam-Report: 	CIP:95.130.216.34;CTRY:NO;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hcl-m1-vm.data-respons.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(396003)(346002)(136003)(39850400004)(376002)(451199018)(36840700001)(46966006)(82740400003)(36756003)(81166007)(83170400001)(6486002)(356005)(2616005)(5660300002)(82310400005)(9316004)(316002)(54906003)(118246002)(36736006)(70206006)(478600001)(4326008)(8936002)(8676002)(47076005)(36860700001)(40480700001)(6916009)(83380400001)(186003)(26005)(956004)(107886003)(6506007)(1076003)(70586007)(6666004)(42882007)(41300700001)(336012)(2906002)(6512007)(36900700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	7sj/V1Hm+ZkpB7ONvAz8fLluqk9rab4VzdBhREpGWWWSyTXvKchnOfOh6rygVCXqYqXGf5nJUVgTmI8liEqJmknCe1oiHPrLmo/9QswVHIQ6pWaQ/XQYzggO0JrZbEwIQ3OqFkUPk5KOfLyOYBu1+1o9aWsjPlp7KdISH0gYANRpE0DcCUUD/oHtlFLwP1XKnWBJLbm/5r//Utuarewm1+ZHokyY4XVmys6n7Y6icobJsZX34Yrmh9lcAv2Ty27qG90tfNYkORJnsKZjlGPF3HvYYlOVaKW7mfCK+XOSBqNV38u9t3sxqFPmrOlNC0816GhXeqPF2HZqvvIENawgxyL00R/EXZDnJFJbM0hmsfD0AdeT5nZD3jm80FGfi3vDFbN9qNDsvpd3BjKFyferijTyXbFI6HOr8RWMk/Uku3ss0Pcv6Z7ZC5QBaidqsHtv7I4QfNRdFGmmJFDkvgkR3pGHLrwGQ1E1eOuh9+4nVtF2aIbYIzDVLsar8Th6B3kv7K6vvTyqdpGMCqqnXIipg6APb0LV9xet4iPxhx3OzyaODbiOwysyfrZnjDT8cLRTTyIKZoyKWU8cnafcXyyHvM0sycl1VqEBgJCN97/8e1YjFd/560GPr6HPX1P1KIw01TXoUD1Jl0zabDkpqxPDl08YKhR97CZNFkHwFEud4VvIJNd8jFkgxR16EC2Ea+CSLCDxzwmLmdWwEgX/OFeine7uGo6xMICXoVGSl/gGRr+NLJalP7Zspd5k4U4sUg9K/wBq7fokDYAtVW/cyOETA8xX+lTmV1z+qio0lRJ3B6a0e2bxrLjIrqbcyXXMkUyDzdAhFX+/Di/m1SVIS9Ibaw==
X-OriginatorOrg: datarespons.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 07:05:34.3899
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df3f674-9eff-4420-7130-08db2523ac2f
X-MS-Exchange-CrossTenant-Id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a;Ip=[95.130.216.34];Helo=[hcl-m1-vm.data-respons.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB3EUR04FT009.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB6994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_001312_668538_E1B6F720 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: imx8 - gpc: Support IMX8 Lite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IMX8 Lite lacks some functionality and hence the corresponding
power domains (8, 11, 12, 13).
This results in Barebox error messages and unfortunately a failed
Linux kernel boot.
Add a "Lite" specific table selected using device tree compatible
clause.

Note that this should probably be related to the feature controller.

Signed-off-by: Hans Christian Lonstad <hcl@Datarespons.com>

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b662363f79..40998c42c5 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1053,6 +1053,192 @@ static const struct imx_pgc_domain imx8mp_pgc_domains[] = {
 	},
 };
 
+static const struct imx_pgc_domain imx8mpl_pgc_domains[] = {
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] = {
+		.genpd = {
+			.name = "mipi-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY1_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_PCIE_PHY] = {
+		.genpd = {
+			.name = "pcie-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_PCIE_PHY_SW_Pxx_REQ,
+			.map = IMX8MP_PCIE_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_PCIE),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB1_PHY] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB1_PHY_Pxx_REQ,
+			.map = IMX8MP_USB1_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB2_PHY] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB2_PHY_Pxx_REQ,
+			.map = IMX8MP_USB2_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MLMIX] = {
+		.genpd = {
+			.name = "mlmix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MLMIX_Pxx_REQ,
+			.map = IMX8MP_MLMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MLMIX_PWRDNREQN,
+			.hskack = IMX8MP_MLMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MLMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_AUDIOMIX] = {
+		.genpd = {
+			.name = "audiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_AUDIOMIX_Pxx_REQ,
+			.map = IMX8MP_AUDIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_AUDIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_AUDIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_AUDIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU2D] = {
+		.genpd = {
+			.name = "gpu2d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_2D_Pxx_REQ,
+			.map = IMX8MP_GPU2D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU2D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPUMIX] = {
+		.genpd = {
+			.name = "gpumix",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
+			.map = IMX8MP_GPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_GPUMIX_PWRDNREQN,
+			.hskack = IMX8MP_GPUMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU3D] = {
+		.genpd = {
+			.name = "gpu3d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_3D_Pxx_REQ,
+			.map = IMX8MP_GPU3D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU3D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX] = {
+		.genpd = {
+			.name = "mediamix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIMIX_Pxx_REQ,
+			.map = IMX8MP_MEDIAMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MEDIAMIX_PWRDNREQN,
+			.hskack = IMX8MP_MEDIAMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIAMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMIMIX] = {
+		.genpd = {
+			.name = "hdmimix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMIMIX_Pxx_REQ,
+			.map = IMX8MP_HDMIMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HDMIMIX_PWRDNREQN,
+			.hskack = IMX8MP_HDMIMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMIMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMI_PHY] = {
+		.genpd = {
+			.name = "hdmi-phy",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMI_PHY_Pxx_REQ,
+			.map = IMX8MP_HDMI_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMI),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] = {
+		.genpd = {
+			.name = "mipi-phy2",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY2_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY2_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_HSIOMIX] = {
+		.genpd = {
+			.name = "hsiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HSIOMIX_Pxx_REQ,
+			.map = IMX8MP_HSIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HSIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_HSIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HSIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] = {
+		.genpd = {
+			.name = "mediamix-isp-dwp",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
+			.map = IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
+	},
+};
+
+
 static const struct imx_pgc_regs imx8mp_pgc_regs = {
 	.map = IMX8MP_GPC_PGC_CPU_MAPPING,
 	.pup = IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
@@ -1065,6 +1251,12 @@ static const struct imx_pgc_domain_data imx8mp_pgc_domain_data = {
 	.pgc_regs = &imx8mp_pgc_regs,
 };
 
+static const struct imx_pgc_domain_data imx8mpl_pgc_domain_data = {
+	.domains = imx8mpl_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mpl_pgc_domains),
+	.pgc_regs = &imx8mp_pgc_regs,
+};
+
 static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 	[IMX8MN_POWER_DOMAIN_HSIOMIX] = {
 		.genpd = {
@@ -1302,6 +1494,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mn-gpc", .data = &imx8mn_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mp-gpc", .data = &imx8mp_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mpl-gpc", .data = &imx8mpl_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };


