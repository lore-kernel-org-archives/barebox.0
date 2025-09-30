Delivery-date: Tue, 30 Sep 2025 13:22:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YRN-002lDW-0W
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 13:22:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YRM-0005LL-Gs
	for lore@pengutronix.de; Tue, 30 Sep 2025 13:22:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OdAp3RBfyLQivUTcZSFZ24IvhgYzH+nB+lcuHZ6kn1U=; b=mWLWaMK09UZi/PwRPj2l0PL2TI
	AfrOKtOnDEAtW4EyuP9zzOAKnvftc+CgbWWlJGm6xXpkuhNkeQE37oKuk98fKRsoeoVwwK1m69lA/
	MBVoJwxUitOCCuAs8nq4C+BcXapAuNdwfZJ9rP1SnLuEDmyulv6pOYcJB/ujQGwwqNm+Di1yIOCkV
	qasE7E+8M7JIVwNdESgb+HxysVTQ/37ZbN7Y+nPvI+phnKovFI/ZLQa2BSFR5G5CVtSV5GMzOPdtS
	5VfsOlEtgVSwq4yZT5ioPFjVUuEwFUFiiWwjAL236HzUtOB17W7sUHDmtPbSeIf3KCRjoJBLmGQfd
	6tc+r+Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3YQl-0000000584I-3h9h;
	Tue, 30 Sep 2025 11:22:03 +0000
Received: from mail-germanywestcentralazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c20c::1] helo=FR6P281CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3YQi-0000000583s-3Lhx
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 11:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HCYA/02Js7Qlex0ty+jEv4+b0T6rk7nbaEQbn3Ajy4xR1g+oybWZer0SHaAm6U9/PxwVlfrS+jyLefqZWMgHSmHRtpgjCuQ75lf7cYN8AAyAY3EZlMf1HHW8X1jLCRQcFd2PQCKiLIKDVQ9qU+fGk3+rdKpbmJMzKerUGXhxUXOGWZqKEpkZnnM6OvZ1ULR18GVOQVcqsK6/N/26OFZlThxaMqZ8+1lTlbi7TUubMuF1WpBgDiTVaDKWbBP4kl0dWb2u+inVisJZ6JwyiVG1dWEgX3/e68X/16yBuOl9v3cjLbz/ENNd13crQKlmqJI1kD+vH9MGmDlhf8SGvFSNTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OdAp3RBfyLQivUTcZSFZ24IvhgYzH+nB+lcuHZ6kn1U=;
 b=IQd2wx8Iv1I1pLW5eAQbx7+lRq2wzjjpP/fWEQsnfReV3BZbWJ88mLt+FUhs1b2eKzilxRoQ9b1hSPAy+j4uWXgZdsBnQkGZPlo+8TV3qaUOByjlDVb7A7LnzvY7B/CoBeQl8JXm1Q5ofi733hQhMymDcTOUnt1bbzHI4GNqEQrRNxCZaxP7V/aLSc7kmO1YBD956agV4Z/sMtfnlGR92vLPk197pLdirpzhculI2VAHHo0fuiprWfPYZbS7VpiMKMvKZWf+7pepgr9/PnqcZpTixNkYOMDXvlbXBKG1SwZQ17h54xXad6KQzI4wXKCtd5Iglv/50IAzE4THP+ODXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eckelmann.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OdAp3RBfyLQivUTcZSFZ24IvhgYzH+nB+lcuHZ6kn1U=;
 b=JeWA7dLUJGSvosmj8cGrtQ5gafFefljsUYRb+yMANJWu15qawJfSzISnOj0oijWSmig0ZQ6OdYbHsRs+IRWpjJPSdXaypiUjgHPsyCP1NbnfDDUz4eFXSn1LMA69rjh9f86c7BW9SYGWPh6gCWx4mYWJTBq/a4Zu9F+r4DeKxBM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:da::13)
 by BE1P281MB2177.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Tue, 30 Sep
 2025 11:21:50 +0000
Received: from FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7]) by FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 ([fe80::3927:fe99:bb4:1aa7%3]) with mapi id 15.20.9160.015; Tue, 30 Sep 2025
 11:21:50 +0000
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <t.scherer@eckelmann.de>
Date: Tue, 30 Sep 2025 13:21:17 +0200
Message-ID: <20250930112140.45620-1-t.scherer@eckelmann.de>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR4P281CA0120.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::8) To FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:da::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: FR4P281MB3510:EE_|BE1P281MB2177:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b1b1b7a-668f-41f7-af38-08de00138cdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rMgxBIC3tisgJjsQ2McpdM9NYht5i5jFBaqsbI2EfHESopNf4kK7OPNc+G9Q?=
 =?us-ascii?Q?o0dFCQLmcA3XFHnCXuWQLYzQ3GqCiI1NcKxlJ7nhnr31EIqME2Zs0c+t38WB?=
 =?us-ascii?Q?F8K7vJGHyAN00oaAwKcLoX8TFIhjONU8FjLHUUQzdIWxxuj7cxQDfrEkjocI?=
 =?us-ascii?Q?KBpaprJNL3G1Ygx2QZKcqoLtOPnrm/gFITuIBW8d2RBDBKP7jk/oUHZETQXY?=
 =?us-ascii?Q?yaqRN5f40tFioowbxhf6YHzTBPMRMbeD8ntlKfQG1hjRIgZ21ZRifz2jjGwH?=
 =?us-ascii?Q?L2lXAqR5resDrkF9bwa80CoHz6l3m9aGIFJbpl1XWKVTy9gWDR1PaJps0/qq?=
 =?us-ascii?Q?v/vcENRXzWwFxAD5IRQIDwni5SLgDIpXoDR9p3FcvmrW6g5Np2lxhJCSBgTp?=
 =?us-ascii?Q?nK7oDx3IpjzWVZHNoc5+EyiRFHiwkEaeasJvE9qXahumtlWCCuqWqrI1J03f?=
 =?us-ascii?Q?V6eYnEYYGS+D78b6kfyRMPjD8bkOn4Es4nttgQRkCUIF8FDsVDymko5BlBOF?=
 =?us-ascii?Q?xvrny47nKRPjtE5rPIkxfhAl4iyftTiMxU/UbKZ1W2D5sr3IsqsMQmFUyHYe?=
 =?us-ascii?Q?tPClRfSVy44uTFRXQjjbcJrXcJg/d4vVBUeJah5jAhLvvQDj3wF1Efit+NNE?=
 =?us-ascii?Q?PgqA2INoWXbCqkyJ61Ttf+yyMffwI7Bud2+xA8J3PU/+w9Q7HsHvifb44TUK?=
 =?us-ascii?Q?AUeAI/D9WWqG82LyjEDyzSN28CXmIp/17beLpswmhZxjtuYSdlreryd5sp/Y?=
 =?us-ascii?Q?PSve+WrpcQN0NswKYmhvLVU+S0Bv5D4ArXP5ydQSnWcHu0MJpqHbs3DCyb2l?=
 =?us-ascii?Q?IztM34umnJ3s2UJSiFMEIXDAu/h4nQ2wN07MMjcX0MpTStWTKir/wYisnR08?=
 =?us-ascii?Q?RX11JR8qAe7UmBUUzCILZeUGw9nWqpKtvcj8VtY5KIarlIMLiymj/yUBRGau?=
 =?us-ascii?Q?bgjcFjOvO31tj3/aHGDnIXOQcfGXik71py1cA8AaCSIjI9fQuisSoqJ8kyIg?=
 =?us-ascii?Q?ygclyV1Jq3xkXojkTmn+Z2UbOGRcNXCuL/d7/CBdJgyMLZGz2lIc6Rqj/VY9?=
 =?us-ascii?Q?U9LfCk54sFJSPyOaUJR7nQCRopmhaSCx9uyyWTl9yYdJHHMI2UqSm/XjtDQQ?=
 =?us-ascii?Q?FV+wtMQJukGxCNDHBrykq3Udql3VyDpw8MlIGX+zcO0Ghg3Tw/qTLjzi7vgW?=
 =?us-ascii?Q?frvdKatK4XcJACkZHMgLhX8s2bpf9SBlA/I6bj54+tU8EEO+MeVp/mq9MrwT?=
 =?us-ascii?Q?t9ess+fUl8e/uF3wE8jytHdanF4S9olQ+fkthYXgx7B67CsCqGgatj3kfvDx?=
 =?us-ascii?Q?1JDMfYVLfb6ogGJnPfmGCIqLxhFvU3H5ZMSCGAztMbTEL1mTHDb8hQXhd53x?=
 =?us-ascii?Q?YZBGbO8b0mjSUvpcaQL2VZL2X91ILHavwvURRlOOnyH1GSfEiOhywks/pv5i?=
 =?us-ascii?Q?fDo0JCj0DkIKMOZgOqdbcugY3hEYDQsq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6OFW5pohDiaQhVFkdhgaCG7HR3dpufPJMZzcy5SaMTrB/rDVuVsiIIf8huvS?=
 =?us-ascii?Q?QwN+29q2T8XExKIA3gxR2uhHk2r2QrSK3JDMs6QPUHocqfOhflXMZOXtuPpa?=
 =?us-ascii?Q?wCX40wOPmE+lljoZ4On/PybidXYJ5xK14EAEPKXSUTxSBiFCnU1YyWOpHbco?=
 =?us-ascii?Q?wfVGh+2d2OL4yzdGgCiWiYujZL85oru2fogL3FbHkRqUQ2C5x4/oGQWUUb2T?=
 =?us-ascii?Q?1h2SW4FGuXeJIxHMBDSvBH1ao8y5QzF8B5PBxOt+yZok8ISYS7e6Dj/ey71f?=
 =?us-ascii?Q?vbBKYdeVs0H0nM/0KtXWaTp6mEh53/fURgzXk6p43yC+NJXakurc3uoqnOry?=
 =?us-ascii?Q?TVp1kPF9WWxAY30Bo/h/i6kkmmuWprzNcoeatjgoL2Xg77Ro0CQXctM7uKvj?=
 =?us-ascii?Q?u+sMzz1jYAdd1tlX/pZrafYvebPUbce1iPQuJVu4/nxwHHKw62rgzZtm9KEi?=
 =?us-ascii?Q?wJFm7EkmwsjTnIdiVkSUx+c2gGLCVNNQZgZKxPpBK+Xbnv7NUWL0LaISVe01?=
 =?us-ascii?Q?+AFSe4+WLZgiScrMHoXv/1TY4aYz8xODzTLZnXDCcDsyJfPztTJ60QSDOMpj?=
 =?us-ascii?Q?4woLFP4MOY66bskrycQ+4oQhOA55E4p3lF/knZslNKhNTU8/1dfBBLz6FPb6?=
 =?us-ascii?Q?GZ8BfQuszXtbxalHPYXZSeFfIyboy8UXylHDcdZjxPo53b982XXsoQayMN+/?=
 =?us-ascii?Q?FhHUTSyh37DxAyGADEVmdi4rTp5TVnr27Jws9LNywWzAAcy8St4FVEHXT5X/?=
 =?us-ascii?Q?rkTd6mEOzQtEKgYA/QqJn8+Y2xFg5ByGftkJHF4psEss3DT+nicnLOmu0DQJ?=
 =?us-ascii?Q?KY61RZJiEQ1Q93n0qS411yqXn0XVdijzmqilPwpZSstKhK2naGotJvx41XEN?=
 =?us-ascii?Q?2+uw8r6UX5fdXHvWPQ9bg7hia0N9qM2XBgT7+ZkzWZoOZy40sPjDSAvH3jZK?=
 =?us-ascii?Q?6TfcUFhsP8UaaO+enL36R9H2NSustYnqZtxu6SusrBuCehqnnoyYnDaphGt+?=
 =?us-ascii?Q?oRh6n9BvgMuJwQ37clACrl5Yrteg+MaFP4TqamuBCFeVdA35d5NCt/02JH4o?=
 =?us-ascii?Q?5Z5H1jayNPi+w/Lg8k8BFTBA5p++MZvPPyabNocqXrEcW3VtUWtxlW1gOS0C?=
 =?us-ascii?Q?2pUB+iZ8KjTEjcudmfIpRPGe9uDUzzeedvdrdozfaC6acgj4cMyW1LMwwkwj?=
 =?us-ascii?Q?fT86mQo6deM9ibrABifgZxijIBYx7++Hqvj9DyJwoKH9GWUxwb5odfxWVuB9?=
 =?us-ascii?Q?eW1h5t6ge/FT0a4IzW9wgGin8H81yKBSLnXOU2R8SFbaks3IDT3LEc2Mx43d?=
 =?us-ascii?Q?5LA5j6sWe02F5dHa7sZ316BDccLwoXrIdsW2EUBFhHFQcoHVeNkLKc5Jzw4w?=
 =?us-ascii?Q?MGi/LL9E0emPRqQMorH9SJ7YK32EjIfcJi+sLU1Qr7hGURpwDLquRNq3NtXt?=
 =?us-ascii?Q?9en13awcGdMG7+whj9xvicOh4egaBp7rChmSgN8E1KFluKKdMTc78qwPflp6?=
 =?us-ascii?Q?8+26SONMnPxl3r9bzjuQF4gWMrSdQ+jXo0nAqTGmvIVA83iImvczOHXLqXbf?=
 =?us-ascii?Q?teoDL08i62WDIEp2Utop1MVUZ3IfWysmLzIbAfEh?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1b1b7a-668f-41f7-af38-08de00138cdd
X-MS-Exchange-CrossTenant-AuthSource: FR4P281MB3510.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2025 11:21:50.3869
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 59znKRFAh3DXWkZCldPRX9mz7CX44pPk0Cpqn/QdzRt0Dkw7hM1a4/vx1w1VxZcAJVMaPCwwYTDt1ew3eu1Y+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_042200_870011_C19DF9D7 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: am62: Fix name of driver struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fixes: a3cff6704f83 ("usb: dwc3: add am62 support")
Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
---
 drivers/usb/dwc3/dwc3-am62.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-am62.c b/drivers/usb/dwc3/dwc3-am62.c
index 27324276f9c5..1266522bd58f 100644
--- a/drivers/usb/dwc3/dwc3-am62.c
+++ b/drivers/usb/dwc3/dwc3-am62.c
@@ -266,12 +266,12 @@ static const struct of_device_id dwc3_ti_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, dwc3_ti_of_match);
 
-static struct driver dwc3_of_simple_driver = {
+static struct driver dwc3_ti_driver = {
 	.probe = dwc3_ti_probe,
 	.name = "dwc3-of-simple",
 	.of_compatible = DRV_OF_COMPAT(dwc3_ti_of_match),
 };
-device_platform_driver(dwc3_of_simple_driver);
+device_platform_driver(dwc3_ti_driver);
 
 MODULE_ALIAS("platform:dwc3-am62");
 MODULE_AUTHOR("Aswath Govindraju <a-govindraju@ti.com>");
-- 
2.51.0



