Delivery-date: Mon, 13 Sep 2021 17:27:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPnrx-0000bD-UV
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 17:27:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPnrw-0001rL-LH
	for lore@pengutronix.de; Mon, 13 Sep 2021 17:27:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtjGy/L0liHt2zcTQgGbIGobMM0sLplfDS1qkwHHfQU=; b=x1wdYf0kM9uQAV
	2UCifYf8wHem2fIXQJ/lKUMzr9KsHRKIkzxoQ8GguVto2rHP1+8M5Nh1TwIVAfkvXo+YugLK4x205
	XXdi5rLzGKg+N/7WF0QgSZY7TBNhq2RYD1ca+QmxMCiFZ3nNB/ukDvTLlssNGt+3wsXYJoDt8Dlzf
	+++d6cea4GvtfYj6tVJTVRE/C4jgX5r21pdbLp9rDomb+/1+6jOMp5lioWnCvOA+ctcnYOGpbr+BD
	bVmsDqJcor+5AwkvAnv7PbZLta10/CDTp1Scw20Tv89oTkP8VZC1tZJosawvG0fNA86A4ksxFwwI3
	EFBxphjzfqQ0XyzKGRXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPnqO-002A0A-41; Mon, 13 Sep 2021 15:26:04 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPnqG-0029x1-Ow
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 15:25:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCZp7ENhCt/e2ZMLXAOEQ7bPGGwsmX8CLqqlrBau2KDuEsg19wA19iWaQUacWM1VaTBpmqXjLKixXxvd3HPyLGt2sPQw88827daWhl7gU9NTFfwZxIWveNiVJa2iW4Yhv9spBYogEtEPd0b4j9+0TvIxR98AiIDfUURTHGlUYx7AO/fLGGtcg+r4cjwHePcBtIjI30GTm7w/3PYh8XX8y9qYt+aUiOK71Sy8GpIwIjGRUNO60yAqEljir3BEG5tNbbpFiWBjI3J/pmLMWmdJQmDWBH8lQtgounJBSw19TFkzluSQnCjhoV8APFpFtYb/fAAwdyBkch6HslISzGOTHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=OHrfdSjKop4/lxr2s9UEEjYiiTJX7t2+RKVgTu4/v6w=;
 b=W8RUyShePR8uEoZv3BrmfuVBTeM3WHI0q7MSgvk4e9QZpECSKYJdalhL8D6l2M/eGr4Rs660JpgI6vMehbMbvMsvK3XuiZvDaATHDD9yvF+13SPMqTZ4ooRTj0ZfDX47mWqJK8+996yfVX7pH1ui4wJKY4uojcPUu305IsU2oS6tRHSoilSWauS7NSvhQSp6PmqY3Nj4FZCfeqRR+u/mozoQgQQhNevTx7yJ8HvvLmz5Oo7DH6ru5IclMT4SSLAdEIQ2KbdjtMiG46HrDRWGlCgL+G437Khkrd18Jn8eDiDKtDUiSQY9t2THme33IRzAnun0/5OawFyTqIq+BRvZDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OHrfdSjKop4/lxr2s9UEEjYiiTJX7t2+RKVgTu4/v6w=;
 b=vCXD0OEEsw3JCmfn/r42X248pkUu+2X0YDvB0yYc3ELwPANw3G8T6oImk6XspdUCRGX/mIfBQb0rIqBZ9/HCsb5FNl9baQqcso0s7MEQ/sY/ANV2F/cZDMPXUkvlaUrphkZoOhDey51q7jzj+Vqk/Elx5eTb3BeSWwVybYg9bMw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5420.eurprd08.prod.outlook.com (2603:10a6:10:11a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 15:25:50 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 15:25:50 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 17:25:36 +0200
Message-Id: <20210913152536.27073-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210913152536.27073-1-michael.riesch@wolfvision.net>
References: <20210913152536.27073-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR0602CA0010.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::20) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0602CA0010.eurprd06.prod.outlook.com (2603:10a6:800:bc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Mon, 13 Sep 2021 15:25:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc9775dd-37bc-4a65-a7be-08d976cac43c
X-MS-TrafficTypeDiagnostic: DB8PR08MB5420:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB5420F146C05635BDEAFB0B21F2D99@DB8PR08MB5420.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:989;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /tVPacRseJeSmI6U4klZT/r3SHWIpXQXs1KBpAqOYD7F1Jj+6g0Mg5cYn4YbrnmXzdhds3umw2suRJkPYrezs7QmVWKMbOeBjnVGeiLSbWWtimHoCEl5cBvfNTVRNOV7PYqlNZ3Je2O3SPRCDyUF3F+o0tih9rQsTthRjT/YWu1tmFG4NBuRA1p4UWKHl24m6Cj/G1JjT/Ecq08/96ebWQlf4NIsKrqn/YgfArgWHMHpOCdjCS94UddXUXlWzsvnqEZ6r/94R5INAyoFDD6edU0oOtIa2qCLPMYAN7+5MmCTKnDfjAgq9JzhpXj/fgu+1gGEFzD27wys3B4pCa0F7eBFxv1ojJLUg2wU9D+csRhBWlq+KXhWEhSzQfyHCfxEoA6Ukz0TO8m5gflfUmts5VDd7nywy9XK62ifwbw/dQ7li3xLjbU5jNE2v0oyNw3R+OUZV7eCI1hwhIEXWBIxQ/L7/t2QvuIr1HauiNvuORak/JmfMEAATzK6l+fsO/ByUghSavNycL2nweX65E2gaINzHhQh3mHxk495wR8q+TVw6B89sSRbmy61DqCVlwMa/J1nVFwzplyR7oLKC6brxzJ/DK/XU+doT7lsi1P6TQ+lz/P+baPVDtGOMXiyUkH200EF425cjaXAAcLReNlQA1IXcCR9y55/Hz453S2RtifRm5BDGBx7qcVpuAu1Pd8+LfZE6Opnw6xAwrbI5badWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39850400004)(376002)(396003)(366004)(136003)(186003)(6666004)(4326008)(54906003)(66946007)(956004)(5660300002)(44832011)(6916009)(26005)(8676002)(2616005)(1076003)(36756003)(38100700002)(38350700002)(66476007)(52116002)(2906002)(66556008)(6506007)(6512007)(8936002)(316002)(6486002)(107886003)(478600001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qD8srn2ghgc8suEilXb33zBkbvNqJPCfqxUJ53D+KPsg1XZgU62NY+z6RsbB?=
 =?us-ascii?Q?KipW+wlV6mSltJpmIAgwVtXmB+ar5bqacK+a5Zyrofi/wbmJjviuP/7tAtav?=
 =?us-ascii?Q?7qEI1DpUfKcMbZnQI0XIeVxVSY0ruvtEREQBKvnWeNinGUV74fnTVRiJqq80?=
 =?us-ascii?Q?veVDeaxyCcZxdRMrLh1W5Zk0Ciax+Usz+W2cUrFnq2qIEi4aHJTpKR6XFfBq?=
 =?us-ascii?Q?DMhYX+VwbrQJ+OBIXWYIfyfqe4g4oUkzHazrGM7kVhKaIoJqNIIZSGraHXEA?=
 =?us-ascii?Q?VihkeSE0yzpkodlyHN6IrZNiU92Cqt8A1enOpzK03s7igUX3aJRu4ADp1gsn?=
 =?us-ascii?Q?+tZzliGdMNjPLqMQVPZiRfXodLxNPJ6CcPUyDskPENEHecI9kQc93J2N0he6?=
 =?us-ascii?Q?9CotHi/heXm6hjdEkDuQRkpM+8eOIG1jf1t6aHd0X6SclLGgnKEmTEOjU9Mk?=
 =?us-ascii?Q?7hKEeREJoGENIQtB/EZBXdxjqS9itofG9pNB/qY3CzqVJZzgxfS60otrly4m?=
 =?us-ascii?Q?A1YBBUDdCuArw4E5ldDzL07k8r4cym4podz/A61dpW+SdVuYHkBJTc0Xk+oq?=
 =?us-ascii?Q?PQOlEwQnGMR3ApfHQqAOD+FtIIac6M25ByeomUDasrKJhtcQhKgsIMMWsQPk?=
 =?us-ascii?Q?61/anZcg8CbTQb38gF8d0HUwCqUVib3M7sjPYUd3XpV8I/Lfazi+MHazY3hx?=
 =?us-ascii?Q?B00TPGmR07zIQFqAlma5VnMApqqzVadoVJZbi1Nlna5ksTfbraw3AcyS4yQS?=
 =?us-ascii?Q?6wKc6AhahgO2mmG/nxToiKqV1SrG+JxlqnPpi6U/LdMdCFEr8xf99SjiUU3G?=
 =?us-ascii?Q?SIrJAbZzDjP/+E4C6ifC2t8BAlaO6Xy5CYQAHAnhgSSqLNAfEoWQaL/xuLdC?=
 =?us-ascii?Q?Fpxl9TtM9uPLZurBXr3MSMEg2fdfMZeIDC6I/NoxFIdIf1bQeNDy7G6e8MuS?=
 =?us-ascii?Q?QEXVL9PifzKjFhbJK0ECZ6gJu9pVZ4UyjdpPH7mVeo1v1ZUipw+wJi1fH9L4?=
 =?us-ascii?Q?X4mIMqL4aU7+Tn4ylIhr2UcSi7gxEctMl05va2b5ebJ++fbpCx6oyZd1Vgf2?=
 =?us-ascii?Q?HR56YCYlF+Fdmn0M5OmmUfKdt4D0AJ3p6zwN8Wa/QSKb9Lx/haalDuKUVZBJ?=
 =?us-ascii?Q?xCqbgxSi7FoC5u7XVlVEdVKF5HxNn+d9L+XsVnugA9l7lbTFVuHNUHgPjM6C?=
 =?us-ascii?Q?hMW5kwAg2J9Z1r/4bUsVRpM0yHLOP5wMArVLUUVksJQs2ZxnjBFMXstk+Pdw?=
 =?us-ascii?Q?FsRsR1ZgdnFjsdKRNR2wJPABSc8kMjnBtU8NyHQT0qxYJKPPKY8UR2AcpsLY?=
 =?us-ascii?Q?YIPmRmjhp8TrnpuzlfmxenUG?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9775dd-37bc-4a65-a7be-08d976cac43c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 15:25:49.9455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LMOfjI373ZgxDqPwz1fwepmHt+qoeUwy4TbpG1HeJpMJCwW3nBNwJiZa5t2ZTLPnphShznCSjLmskbbgu3o0XkTlDfx7kTZElSsKajkaFiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_082556_842229_D247B426 
X-CRM114-Status: UNSURE (   7.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] arm: dts: zynqmp: add alias gpio0 to zcu104 and zcu106
 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Michael Tretter <m.tretter@pengutronix.de>

Add the alias gpio0 to all Xilinx Zynq UltraScale+ MPSoC boards.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
[add alias to zcu106]
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/dts/zynqmp-zcu104-revA.dts | 4 ++++
 arch/arm/dts/zynqmp-zcu106-revA.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index 95b60a6b1..bc28937ac 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -10,6 +10,10 @@
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
 
 / {
+	aliases {
+		gpio0 = &gpio;
+	};
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/zynqmp-zcu106-revA.dts b/arch/arm/dts/zynqmp-zcu106-revA.dts
index 7c5058826..c9c6d9d55 100644
--- a/arch/arm/dts/zynqmp-zcu106-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu106-revA.dts
@@ -11,6 +11,10 @@
 #include <arm64/xilinx/zynqmp-zcu106-revA.dts>
 
 / {
+	aliases {
+		gpio0 = &gpio;
+	};
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

