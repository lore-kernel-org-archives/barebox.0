Delivery-date: Thu, 12 Jan 2023 09:17:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFsmE-009ebw-4Y
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 09:17:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFsmB-0002sz-Lb
	for lore@pengutronix.de; Thu, 12 Jan 2023 09:17:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n4n68YZJX5USfKmeTzLKuq+XU0U3EQJ87NBGqRwg89A=; b=GOFX5KbNX+UQE68NwK88GxqU0l
	TEiBKVBRMwsW07K7uVamTHl8vUY1+UgDbm71kxuLNJe9OEX9/Ywn8Zbd2FaJczAZPMIi24S9f3fHz
	FISq33rtIopS5GjpvLfPfTtcrns5SPQ9FRRLEJXUYdwYXtq5qroGRqydSQsOXqB2s+bfvTh/P0WK/
	5UQNmmdlp8DYzLuD9hcfFY0Oo65vIK/C8BWFzT50DWcOdNdibRfTq+4XX/Jn6vq0Qe6OR9nk7Im0b
	7DFZ0ZQnxy+9r4Cy2n+EIyN02FY3uvMrVYCFIzo742xa/hhpluWmTpV2u5SnGJt51NfyX9bkcTDhJ
	XD7v0juw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFskd-00E4t1-1g; Thu, 12 Jan 2023 08:15:55 +0000
Received: from mail-vi1eur04on2134.outbound.protection.outlook.com ([40.107.8.134] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFskW-00E4sK-V2
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 08:15:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6IF61aNHbmw1k6Fk2Q0vRyQlslEEnXTYp16+XOi09mMgYQ/TBzBsNjT6eJOpyCkq9X9XXCFXrR+pDFO7967OJtJHWULzJ1wv9VMD0E1OTX+mtWF6uj1NwfqmWz622O27Phw/DHA1yAi6m82Cfl8Qwnu4pBLxuFCTjsdFK2qbjJJMjJ6N81cuIqPPx0VlKYqXu6KeZM20oGIhslqp2E3dMjI6cdongetw6kQmqrq5QLyKnOVK0Yfdy0wevFIvgLuzfECOVgU4iC+6yBlvds4gf6H5pI+kV177Cd+HqIt0gZbextxsWl65uoKAxxCOMLyiTUfoRVyiqwg897d+pgQ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4n68YZJX5USfKmeTzLKuq+XU0U3EQJ87NBGqRwg89A=;
 b=P5dnHgz7wXw6mFjpY2sNYKIUDLeS7wu3t53tWzWD5QoxT8oZXaeVDTb10xxvbnCo9BG8CNs1uFkC0yTvQ+pfckU1I9k2c7nYac0Q8AqD7mxHkRBgRasxKLk+JYWXXeVd2X6XjZ578xw5NVzpnbNS6Xun4l72M/6z3vwA/WbQb96EzzldhTpMUedfePslHsZWjC1lxY6itbw7TpX/p/gVi1hvabNLu50IDdpSllpoGX28mX0pDF5jsthI9fR23OG6/pXlCggRU5BScZNubLBPx3heTkeBiI9wjLO0BcqdwORt7R0w8SyAoAAxOcxCKYNTcqWMJyJg+K99cP2rJCoWNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4n68YZJX5USfKmeTzLKuq+XU0U3EQJ87NBGqRwg89A=;
 b=rHPQduTMM5fFAuC/8/uhzj2RgPObQKIFosX7zAthJq7d3c4U1Cbp0Ro0wz2QfGzPblS46XKY+t8Oa7W0JkqVieE7WViW0XMtbtCG0BUS5Vwl46wCqxdeQGo2wHAj94hopsjB55LaACWQtdLDMcuI7BWFLIYRXruqSqXb1aFO+lY=
Received: from AM5PR0201CA0006.eurprd02.prod.outlook.com
 (2603:10a6:203:3d::16) by VI1PR0601MB2207.eurprd06.prod.outlook.com
 (2603:10a6:800:2a::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 08:15:44 +0000
Received: from AM0EUR02FT012.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:203:3d:cafe::85) by AM5PR0201CA0006.outlook.office365.com
 (2603:10a6:203:3d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13 via Frontend
 Transport; Thu, 12 Jan 2023 08:15:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT012.mail.protection.outlook.com (10.13.54.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Thu, 12 Jan 2023 08:15:44 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu, 12 Jan 2023 09:15:30 +0100
Message-Id: <20230112081530.2684687-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT012:EE_|VI1PR0601MB2207:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2d79e064-fdf4-4cfe-2a07-08daf47533a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	nzbKp+lINKyBWHldn98jwv9Sve723XLxMNfkOLezpQ3IQnm0f8buQCR/a6w2zvr8dSN6AFtXuj7k7UMy4xeMMGOBwnPEVhqJgA4AIJdI3L0xzwG0ZlZjX9MUDtxp/Dc+B9vJ2O/k5TNB9MDar6pp0uVcAoKSt7/sIdUbti51bBr9qtswlRYqBjEtSpNPvhnkfeow2Dj8vkloaSqIKjjSHxR3GrYOPwd5nDKXsJUabQWdYis2CXbVgIHzFKSvJKFD0lQaCVawBnl6kyNG3u665+E27+hEmz0U3Dz4viN/f9QleA39RoYZ1IV0ahEOtzxhSEfaVplqHSu1BLSvK5AMdKkKFGAVe/uZSq14SZHDxRoCDHL6slKXvPTIHNhsP5Tneq6D0fQe26mFOXfBh9yRH9W8C/SJg35bCFjYw8sunNP26uwASdK4K1RrlN0hqhFDBpynqx/ddL53m7vhsQI9fWh9XdO7U+ALDneAtvaN754GybG+rxWPjeWdlPnZtZe0vNKWDfVoQJKI+7NctIun4tay+wJnejMXho215qOuXsDY6jny7zsf1aDhDE6fJaZHc+SGhudl9me97iTvFAGPeKvzEw95G0yt/TQCxXvgkIIsj1NkFDhdt8Tnf09PX4nB7KWeAXbBuppqpUCgMVEliKTkVYDweMHoXWn7U6JG4JV9iTN7gbTCiMrCZgocifObbr4VBdbmh8VqdftjDISMzFvP0zFGzxYVAI+7W368i60=
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39860400002)(396003)(451199015)(36840700001)(40470700004)(46966006)(82310400005)(118246002)(9316004)(47076005)(8936002)(26005)(2906002)(5660300002)(81166007)(41300700001)(44832011)(4326008)(316002)(70586007)(8676002)(6916009)(36736006)(356005)(70206006)(82740400003)(6512007)(1076003)(40480700001)(2616005)(336012)(86362001)(956004)(40460700003)(186003)(107886003)(83380400001)(36860700001)(36756003)(6506007)(478600001)(6666004)(6486002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 08:15:44.0287
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d79e064-fdf4-4cfe-2a07-08daf47533a6
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT012.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0601MB2207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_001549_304293_5307634B 
X-CRM114-Status: UNSURE (   8.77  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By adding a common config switch, the imx8m_init code becomes generic
for all board variants (and slightly less confusing).

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

---
v4: add missing common switch

v3: redid patch with suggested common config switch

v2: was:
[PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check

v1: or'ed all IS_ENABLED(FIRMWARE_IMX8M[mnpq]_ATF
---
 arch/arm/mach-imx/imx8m.c | 2 +-
 firmware/Kconfig          | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..4399dc7dd5 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+	    IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
 		arm_smccc_smc(IMX_SIP_BUILDINFO,
 			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
 			      0, 0, 0, 0, 0, 0, &res);
diff --git a/firmware/Kconfig b/firmware/Kconfig
index b4a6fd9137..09ad85c539 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -12,17 +12,24 @@ config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 config FIRMWARE_IMX_DDR4_PMU_TRAIN
        	bool
 
+config FIRMWARE_IMX8M_ATF
+	bool
+
 config FIRMWARE_IMX8MM_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MN_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MP_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MQ_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_CCBV2_OPTEE
 	bool
-- 
2.25.1



