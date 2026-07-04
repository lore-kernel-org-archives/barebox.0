Delivery-date: Sat, 04 Jul 2026 14:31:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfzX5-000C6G-2D
	for lore@lore.pengutronix.de;
	Sat, 04 Jul 2026 14:31:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A2332026DB
	for <lore@pengutronix.de>; Sat, 04 Jul 2026 14:31:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DpPGMfSU;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=BfKvLmvF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=leica-geosystems.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=43KiURPQ5ThGUO+X+kgQUu/X25Tf3vPkCxYVghxqvyA=; b=DpPGMfSUrkfSkw7aLtEenxdMBq
	t499AnJ4Qe9s1klByeVlr9CKL/YRM43cow0+ux2VWwc2/eY3przLyW7JJMvOqpeiD5dqnFB32J0jg
	NDT/SGHlZJLI4H1YPjFt2Sy6sCcmVZB4X4XW6SD5y8l3bIqOgQz5MwDOD7GCRFzNWwlCDMXTakrIj
	2z30R+Dw5TDy/K+K1eVzi+NxwIgRcm3etgM4WVpJNo8KuyKgIidkQI2x2Mu4EVvXOWMe0JaOMbOaC
	4oXWOF8syaj4wz6MDocIYU830t9SK5pyg+iBbuBX3skEGARiBu4AlI47X80m/rktC27/knhAssxwZ
	KuUDDrJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSF-00000008Q0I-3WcN;
	Sat, 04 Jul 2026 12:26:43 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfzSC-00000008PwE-2Kxf
	for barebox@lists.infradead.org;
	Sat, 04 Jul 2026 12:26:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NpHBWCYKh+QQDzMW971ycVddpuaGUrhmi7guOK/JLyDpUjz/LiqCRXsrhZuDogH0Yc02lsXmq2tS8QO5FTu42Z8HrH0u1XwxksjuV6RE4GaLriAhRGHKZZLwjjCbchSJhDgkaQ3/CWZ4GjRlHO0Lg31nlhOzgi+Smz2LCBmkaS+JavSYfbgziH1r7dHe99pSHhpoKULvSETwxkXdeHOFdmJNPvlv7CAMvrxiONu+t+4XOp5R4FBNK8oyzc2qIVGZbKdszjvJhHAuyZmgOJRebKOmftQP0vYxjXRqPlJRuJSmLG2E69jr+Zkab1Wq8WeB0RQx6+9Gt9WFhFYAyAHTpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43KiURPQ5ThGUO+X+kgQUu/X25Tf3vPkCxYVghxqvyA=;
 b=Z4t+tHwGmVe5u8XppdFsxkd1S7/ayx4k4EvEKrMuKqtN1KiuuVR7utcwnv++xSLa/R8lPlBBAuzY3I+O5OQLvqBMu1UB7XHcD13Y6ZSw1WFs2igRTduP/1f1L2opA118MFR270j4OzgWd5i99r/LUTiEqpEB9pfMuQTOct2SXvArju+KQSMtu6eUakqvoKNH6DIveXr9v8v+LUvtcZpV4kGL3HqQr24CffuxXQQKXLL6fxEEC+rLWJbazCin5KC1HZpO+zTNfF6Az3g/OUBgJjiIHObGoRjOV9BqBhtUbwG0pbiPyWHyb/lNOWYvi09sx1lg8ft/W4l4f8GRweNo4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=43KiURPQ5ThGUO+X+kgQUu/X25Tf3vPkCxYVghxqvyA=;
 b=BfKvLmvFqpzLEutZ+wdxjx/LR0cIr7RgM2QgYnan+FNrQdwGIyoyZ3u2M551G8m+vwJYiDRo3R3bWtbPIgxsd199fcjfuwDTKvwSRLd6hPDSPpy0qEBme2C7Luuns0H90o4q4apXqmbexnW4e1W/qjMUrMcondmomt27PzVGgus=
Received: from DU2P250CA0029.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:231::34)
 by VI0PR06MB9144.eurprd06.prod.outlook.com (2603:10a6:800:246::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Sat, 4 Jul
 2026 12:26:34 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:231:cafe::73) by DU2P250CA0029.outlook.office365.com
 (2603:10a6:10:231::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.12 via Frontend Transport; Sat, 4
 Jul 2026 12:26:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Sat, 4 Jul 2026 12:26:33 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Sat, 4 Jul 2026 14:26:30 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v2 06/11] mci: imx-esdhc: support HS400 and HS400ES on i.MX8M
Date: Sat,  4 Jul 2026 12:26:23 +0000
Message-ID: <20260704122628.3326142-7-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
References: <20260704122628.3326142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jul 2026 12:26:30.0291 (UTC) FILETIME=[579B0630:01DD0BB0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509EA:EE_|VI0PR06MB9144:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1c754e4f-89fa-43a7-f0d9-08ded9c77c24
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|36860700016|1800799024|23010399003|82310400026|11063799006|56012099006|6133799003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: 4myDtsaj10P+IiyMSVrTiC/2xCHkuNi3uax1XWg1m82ukU84RqBg12sgq0d8Jr+m2ZvO/GQnwPh/Nv+TFDc6liZpMIu6g11Tc5oSf+yryqzwcDpsuHHhnZaVgx81qzfSId9U1MZ8H/I12zSwPYKkWRCxN3D5NiAheucxAjPhOogQs5ZgoNW8zOmiDvjheFNxYqehy0nTsm8ayAH/CqO9/W8PVf2D/I5MYSRS73Ur978kcq18q2QStJFcx0jcE8ua0TigqmxATyvYG5Jhnz2OeRG+wxK7QJupZmlo0sySOiicYGnwVn7b6wbFZUp5i8AoDjnOsCEQLVhN2Ms22KkCUWHpJ8ZH1iGSO58iPYtMauURVSOnOIRwlZ2o6HbUJw6qCSdIKfBFEGhN7Fc/l2X2Sn+b5BpEZrBqRo0PdtKuyl187npTr6LKiE4T9ZlQsSsCb8NlNZ8/7HfWC7/qtNWzDoZzYv/ntvzk+R2qeajeFYwXi0W7irS70lLUJrCgI7jkhmZXQsO6MN6dT/669jYbRHVotapz3HuYz4HljLF+zpVg5BLpt0U5UoHYBUnJSfR2f0dS3dcnV1RT8bAS/2l+7yNcFoSlS6iqyciBfzwVTY+cJ5X5v+VAxVd6szIjnBNavEAjd282erkn+p5EjmT260QsfW9bXpKCSKxIcWvDDS+E2rQntCzmx0RdsdTVTxpyyTNXrJys1TD4Cdmjc2osBw==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(376014)(36860700016)(1800799024)(23010399003)(82310400026)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: MG+HhczsTVXswzp0xc28zLGsSY8RdGk/e1OnUtfOjg6EQVR3hI0oc9yFE8KTPf8vr2NTiPRuugWtv9RoKVSDJ+vyBb5ZXI8m+v7Af9YfzarQlWqm1pRcSU7JSUiVQeXSIuhIj+u15mJgLGPiyufRCu+3uQ30T8Ws4ESivtI9f0sFsHOAl7VqVzQSeBnfhnwtXg/N6rIP29a1VSV1WKViv67S7IM03KPbX/aNlP5/0xHxNPUGj7X3jB/EBrEI9N7ISaIk3qJfKqwv3I+sCiR2DDLpdHbkPBw1jqmhGthMGiLNw0yy1LbJq8e49qH7L6kmCh7tuuQuvgG5974njUQ39YHe0W13fFQbgv2mBLAYuhA4CNqCJIVpLHvtFjtvJkbQ0I6txxrEP4sGU74NMIv7J32eAYD6eRzDZCB52v+i43p1ewCjmnFVT+HYo8MnY8dQ
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2026 12:26:33.7076
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c754e4f-89fa-43a7-f0d9-08ded9c77c24
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB9144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_052640_792880_7E9A7245 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The i.MX8M uSDHC can run HS400/HS400ES, but the barebox driver
    topped out at HS200: fsl,imx8mm-usdhc was routed to usdhc_imx6sx_data (HS200
    only) and the HS400 timing/strobe-DLL path was absent. Add a usdhc_imx8mm_data
    with ESDHC_FLAG_HS200 | HS400 | HS400_ES and point the imx8mm/imx8mn/imx8mp
    compatibles at it. Add the strobe-DLL register block and esdhc_set_strobe_dll()
    (gate the card clock [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c20f:0:0:0:7 listed in]
                             [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0A2332026DB
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20f::7:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: w8hx9zbxzc1mnzx8hzuppajryoqn44q5

The i.MX8M uSDHC can run HS400/HS400ES, but the barebox driver topped out at
HS200: fsl,imx8mm-usdhc was routed to usdhc_imx6sx_data (HS200 only) and the
HS400 timing/strobe-DLL path was absent.

Add a usdhc_imx8mm_data with ESDHC_FLAG_HS200 | HS400 | HS400_ES and point the
imx8mm/imx8mn/imx8mp compatibles at it. Add the strobe-DLL register block and
esdhc_set_strobe_dll() (gate the card clock, pulse reset, program the read
delay target, poll for REF/SLV lock), an HS400 case in usdhc_set_timing()
(set MIX_CTRL DDREN|HS400_EN, re-apply the clock, run the strobe DLL),
HS400ES handling, and MMC_CAP2_HS400[_ES] advertisement gated on the flags.
The MIXCTRL preserve-mask in __esdhc_send_cmd() is widened from bits 22-25 to
22-27 so the HS400 mode bits survive command writes. Strobe read delay is
configurable via the existing fsl,strobe-dll-delay-target DT binding
(default 0x7).

usdhc_imx8mm_data keeps ESDHC_FLAG_STD_TUNING: barebox already drove these
parts (fsl,imx8mm-usdhc) at HS200 with standard tuning, and U-Boot uses it for
the i.MX8M family too. (Linux uses manual tuning for imx8mm; moving barebox to
manual tuning would be a separate, separately-tested change.)

Register sequence mirrors Linux sdhci-esdhc-imx.c; the barebox idiom follows
the Rockchip dwcmshc HS400 support.

Assisted-by: Claude Opus 4.8 (1M context)
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---

Notes:
    v2:
    - No functional change; rebased on next.

 drivers/mci/imx-esdhc-common.c |  4 +-
 drivers/mci/imx-esdhc.c        | 91 ++++++++++++++++++++++++++++++++--
 drivers/mci/imx-esdhc.h        | 14 ++++++
 3 files changed, 103 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index d31a2ad779..a0c2dee32d 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -360,8 +360,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp;
-		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		/* keep tuning bits (22-25) and HS400 mode bits (26-27) as is */
+		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0x3F << 22));
 		mixctrl |= mci_timing_is_ddr(host->sdhci.timing) ? MIX_CTRL_DDREN : 0;
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ba33daffc4..e123bd3ede 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -274,12 +274,51 @@ static int esdhc_change_pinstate(struct fsl_esdhc_host *host,
 }
 
 
+/* Ported from Linux esdhc_set_strobe_dll() in drivers/mmc/host/sdhci-esdhc-imx.c */
+static void esdhc_set_strobe_dll(struct fsl_esdhc_host *host)
+{
+	u32 strobe_delay, v;
+	int ret;
+
+	/* disable the card clock before (re)programming the strobe DLL */
+	sdhci_write32(&host->sdhci, ESDHC_VENDOR_SPEC,
+		      sdhci_read32(&host->sdhci, ESDHC_VENDOR_SPEC) &
+		      ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON);
+	ret = esdhc_poll(host, ESDHC_PRSSTAT, v, (v & ESDHC_CLOCK_GATE_OFF),
+			 100 * USECOND);
+	if (ret)
+		dev_warn(host->dev, "card clock not gated off before strobe DLL\n");
+
+	/* force a reset on the strobe DLL, then clear it before any setting */
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL,
+		      ESDHC_STROBE_DLL_CTRL_RESET);
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL, 0);
+
+	if (host->boarddata.strobe_dll_delay_target)
+		strobe_delay = host->boarddata.strobe_dll_delay_target;
+	else
+		strobe_delay = ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_DEFAULT;
+
+	v = ESDHC_STROBE_DLL_CTRL_ENABLE |
+	    ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT |
+	    (strobe_delay << ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT);
+	sdhci_write32(&host->sdhci, ESDHC_STROBE_DLL_CTRL, v);
+
+	ret = esdhc_poll(host, ESDHC_STROBE_DLL_STATUS, v,
+			 (v & ESDHC_STROBE_DLL_STS_REF_LOCK) &&
+			 (v & ESDHC_STROBE_DLL_STS_SLV_LOCK),
+			 50 * USECOND);
+	if (ret)
+		dev_warn(host->dev,
+			 "HS400 strobe DLL not locked in 50us, status 0x%08x\n", v);
+}
+
 static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
 {
 	u32 mixctrl;
 
 	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
-	mixctrl &= ~MIX_CTRL_DDREN;
+	mixctrl &= ~(MIX_CTRL_DDREN | MIX_CTRL_HS400_EN);
 
 	switch (timing) {
 	case MMC_TIMING_UHS_DDR50:
@@ -296,6 +335,14 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 			sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, v);
 		}
 		break;
+	case MMC_TIMING_MMC_HS400:
+		/*
+		 * HS400 is a DDR mode; the strobe DLL is set up later from
+		 * esdhc_set_ios() once the HS400 clock is running.
+		 */
+		mixctrl |= MIX_CTRL_DDREN | MIX_CTRL_HS400_EN;
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+		break;
 	case MMC_TIMING_UHS_SDR12:
 	case MMC_TIMING_UHS_SDR25:
 	case MMC_TIMING_UHS_SDR50:
@@ -339,6 +386,19 @@ static void layerscape_set_timing(struct fsl_esdhc_host *host, enum mci_timing t
 	host->sdhci.timing = timing;
 }
 
+static void esdhc_hs400_enhanced_strobe(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	u32 m;
+
+	m = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+	if (ios->enhanced_strobe)
+		m |= MIX_CTRL_HS400_ES;
+	else
+		m &= ~MIX_CTRL_HS400_ES;
+	sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, m);
+}
+
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
@@ -386,6 +446,13 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		return;
 	}
 
+	/*
+	 * (Re)program the strobe DLL on every HS400 set_ios(): mci-core selects
+	 * HS400 timing while still at the old clock and only raises the clock on
+	 * a later set_ios(), so the DLL must lock against the final read clock.
+	 */
+	if (ios->timing == MMC_TIMING_MMC_HS400 && ios->clock)
+		esdhc_set_strobe_dll(host);
 }
 
 static int esdhc_card_present(struct mci_host *mci)
@@ -511,6 +578,7 @@ static const struct mci_ops fsl_esdhc_ops = {
 	.set_ios = esdhc_set_ios,
 	.init = esdhc_init,
 	.card_present = esdhc_card_present,
+	.hs400_enhanced_strobe = esdhc_hs400_enhanced_strobe,
 };
 
 static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
@@ -528,6 +596,9 @@ static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
 		boarddata->tuning_start_tap = ESDHC_TUNING_START_TAP_DEFAULT;
 	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
 		boarddata->delay_line = 0;
+	if (of_property_read_u32(np, "fsl,strobe-dll-delay-target",
+			     &boarddata->strobe_dll_delay_target))
+		boarddata->strobe_dll_delay_target = 0;
 
 	if (esdhc_is_usdhc(host) && !IS_ERR(host->pinctrl)) {
 		host->pins_100mhz = pinctrl_lookup_state(host->pinctrl,
@@ -567,6 +638,11 @@ static bool usdhc_setup_tuning(struct fsl_esdhc_host *host)
 	mci->ops.execute_tuning = usdhc_execute_tuning;
 	mci->caps2 |= MMC_CAP2_HS200;
 
+	if (host->socdata->flags & ESDHC_FLAG_HS400)
+		mci->caps2 |= MMC_CAP2_HS400_1_8V;
+	if (host->socdata->flags & ESDHC_FLAG_HS400_ES)
+		mci->caps2 |= MMC_CAP2_HS400_ES;
+
 	return true;
 }
 
@@ -684,6 +760,13 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
 	.clkidx = "per",
 };
 
+static struct esdhc_soc_data usdhc_imx8mm_data = {
+	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
+	       | ESDHC_FLAG_HAVE_CAP1 | ESDHC_FLAG_HS200
+	       | ESDHC_FLAG_HS400 | ESDHC_FLAG_HS400_ES,
+	.clkidx = "per",
+};
+
 static struct esdhc_soc_data esdhc_ls_be_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN |
 		 ESDHC_FLAG_LAYERSCAPE,
@@ -702,9 +785,9 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,imx6sl-usdhc", .data = &usdhc_imx6sl_data },
 	{ .compatible = "fsl,imx6sx-usdhc", .data = &usdhc_imx6sx_data },
 	{ .compatible = "fsl,imx8mq-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx6sx_data },
-	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx6sx_data },
+	{ .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx8mm_data },
+	{ .compatible = "fsl,imx8mn-usdhc", .data = &usdhc_imx8mm_data },
+	{ .compatible = "fsl,imx8mp-usdhc", .data = &usdhc_imx8mm_data },
 	{ .compatible = "fsl,ls1028a-esdhc",.data = &esdhc_ls_le_data  },
 	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_be_data  },
 	{ /* sentinel */ }
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index df8aca18ad..5562371652 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -66,6 +66,17 @@
 #define  IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT	8
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
+/* HS400 data strobe line delay-locked loop (read clock) */
+#define ESDHC_STROBE_DLL_CTRL				0x70
+#define  ESDHC_STROBE_DLL_CTRL_ENABLE			BIT(0)
+#define  ESDHC_STROBE_DLL_CTRL_RESET			BIT(1)
+#define  ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT	3
+#define  ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_DEFAULT	0x7
+#define  ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT	(4 << 20)
+#define ESDHC_STROBE_DLL_STATUS				0x74
+#define  ESDHC_STROBE_DLL_STS_REF_LOCK			BIT(1)
+#define  ESDHC_STROBE_DLL_STS_SLV_LOCK			BIT(0)
+
 /* pltfm-specific */
 #define ESDHC_HOST_CONTROL_LE	0x20
 
@@ -163,6 +174,8 @@
 #define ESDHC_FLAG_BIGENDIAN		BIT(10)
 /* Layerscape variant ls1046a, ls1028a, ls1088a, revisit for ls1012a */
 #define ESDHC_FLAG_LAYERSCAPE		BIT(11)
+/* The IP supports HS400ES mode */
+#define ESDHC_FLAG_HS400_ES		BIT(12)
 
 struct esdhc_soc_data {
 	u32 flags;
@@ -177,6 +190,7 @@ struct esdhc_platform_data {
 	unsigned int delay_line;
 	unsigned int tuning_step;       /* The delay cell steps in tuning procedure */
 	unsigned int tuning_start_tap;	/* The start delay cell point in tuning procedure */
+	unsigned int strobe_dll_delay_target;	/* HS400 strobe read-clock delay cell */
 };
 
 struct fsl_esdhc_host {
-- 
2.43.0



