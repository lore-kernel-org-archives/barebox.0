Delivery-date: Tue, 11 Jul 2023 11:12:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QR-006za8-6J
	for lore@lore.pengutronix.de; Tue, 11 Jul 2023 11:12:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qJ9QO-0006yh-P5
	for lore@pengutronix.de; Tue, 11 Jul 2023 11:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E3AED6N1srjwFu+4aPfaUqyfcfCuAGaDFgZj6/B2fOU=; b=ntvzW/IDIPJJcXLMnR8ys9eKQC
	4583nI5vhKvkj7eWdDPoatjykSMD05fEw5SA+s3x+g3BqSPlqB11u+jwXLi+Ql9873+i+Vmoyk1yh
	9x3HJpsEriZIClNVlkb7EhkNm9OqOUYLvCvB+tWZ7QbEW+xHCexqRVmSJnvsZnrEdPKE7+Uxv6btf
	b9LXy/QOIGbFz3Q94HKErGZgVQX+Dz2I7F+20i2oa/ps0A4gP9PJQ6hTq1jPkD1geB5xJQK8VJyFT
	OKBV0DdXv31MWfPFiu/oKuHrh9K3Tk+LywQhDsUguXBYJdIfQ+RwcNY4C/FVVOdHp7CBnRqwdTre5
	ragGQmrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PK-00EFBz-10;
	Tue, 11 Jul 2023 09:11:42 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9PF-00EFAE-0p
	for barebox@lists.infradead.org;
	Tue, 11 Jul 2023 09:11:38 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 1488D972C42
	for <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689066696;
	bh=8BbbPAg0V/PdIEQMUM8DFj4TxfBEBJ7tHLLS0G6aKsQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hOFkzmSZv0usTvIWx9lAeU3Mzr+D+2F3Q26nnBA2z9SHp4C9hdLRfinRWE05mNRaX
	 3AUQmEtDiZCy2WuY83MkvI7DlAEh74gguejOmY0cJhMt4cl3SaItCBtan/lS/rwOKt
	 47TBaH7j5ApdUFTcpYR+HVfssFkIMFSDEweKgNXk=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id C6A95972BC9 for <barebox@lists.infradead.org>; Tue,
 11 Jul 2023 11:11:35 +0200 (CEST)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com
 (mail-pr2fra01on0102.outbound.protection.outlook.com [104.47.24.102]) by
 fx403.security-mail.net (Postfix) with ESMTPS id CADA8973404 for
 <barebox@lists.infradead.org>; Tue, 11 Jul 2023 11:11:33 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by PR1P264MB1696.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1b3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 09:11:33 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::657e:fc00:2c5f:a398%4]) with mapi id 15.20.6565.028; Tue, 11 Jul
 2023 09:11:32 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <1760a.64ad1cc5.ca1af.1>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dhr1QYycYoYdJDJwEkOrirfE4QXDAA58ZuWBt3iS0Evc+hEqib1kQAr7111QZadAB2MHL4153p1GOtOnTss2CQ0s8n/P0sqJ4NJMiYg4oXC/BjxEcjHsYXUYdwYwxnNbzufXbq4CfkVwjsdJF7UFFTrb+M5GBst2qeWjqwWYZqMQEaAi7hMx/vOkmbRRVc/wCF2KM7ZnoQ/gjmTfoUJeVc9fv1K12bavBLI1oI7oqqaV5lYd16/L8iwJWTeYpgrIsPIBQjxc96CId7d34jEzQZJhNf6pisrzwL9WNeXy6jP/LFP3jZz7UBpVDlTHB9sIy1oWxb4b5HHmED3RtHFIFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E3AED6N1srjwFu+4aPfaUqyfcfCuAGaDFgZj6/B2fOU=;
 b=fTYoWcN98GKhB+Dq5RP+dEOUbyqRjXEIT4q1NAaiKE5llEfWiho5GrB7rN/MCd5pPMiHr8e7Boie18SO11V2APocYMJNFd2HbjvmJsiLzu7ZgAuU6zxu9mdPJ2ITLUIDckMO4KcZQAwWwuKpS6EDXGnhS4NqPBhCs848U5eklYaLty8wSA11Z0REaqwcSxY/PieED/HhKIha8g71FoT8zKJZqYbJtfY+mLUkpvxENtQd7aYSRocqh/ztzQCsY53UM8IDrM6dG07wbJWHpUYFI/DJnFvS6bNT4EOco/GBtrxO2ljdUGtWFTHYPTjx0OaoT8U65fmCMTSsO0VVZfFmuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3AED6N1srjwFu+4aPfaUqyfcfCuAGaDFgZj6/B2fOU=;
 b=pJeIdja+CNrnPVkWP8kD7Ergns85ibRu6oGghdYI89dmcgzVv6r7pXtSJTgywvrw023X8BEOP6z52nUKSjvDMIZ2uB17t4YUurbN7stIBfkZJjM/gnr5Vg5PZm7wphogfXOOoVkR0N5yIq4M0U31Y953993RgQ5Xr0qauiKCMHjWxiyI9VCDsjEXu+keRaIzMJ6+QzAl+eq42aFUUyhO+21J57tgvWGKEgHCXk2TGMVdtRpmVBeJ2q4CGiUW1AtdxeybAC+pxHz/wV6C6SF0Pu7BtBVqhNT3U5VE9aTb1kBGGeR9aFely9hjjeX+iPBLwSmh/QmVCsRluxDiw7QJAg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Jul 2023 11:11:23 +0200
Message-ID: <20230711091123.19111-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230711091123.19111-1-jmaselbas@kalray.eu>
References: <20230711091123.19111-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0406.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::34) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|PR1P264MB1696:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e16922c-4e9c-445b-e40c-08db81eed1eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wsnqEtIma2Fu2g2+hGxqC34UfslGNE4Y5nC1EEJDEp62ERccp5BHwBsvvQ6ZbXV737um9jd+aPipmW33vS0cow2RCfeMxQaMaRm7lXtwHeuNTYWmezlLwB4FxXgB/kb2kbhP46fD5vENsroeZtnVXuWoLqIhzOYCqQjBzPU4dfc+W5z+w0x1EtGF2jV/3Qc90wGedD2aQapuJwIFlm9b85yrJG+3kUf8+PWY4xt2INhIzS3P3iLpDqZHVPqOick4yqcSpvjyCN4QDMvju2tZTbxfTK7fW2lSvsh9KMLCU2JbV7SnyFTn791r8/EbbGaBzbpf9cs5LuTvMSn4BWmkfEB62jJAzTvR5qZ+0hD5LnmdLy8/Md5cMkmkFPuROZcz6gjB9JEhs2ROjUDeAavFBscPHR9VgwKYxGh0WyJmXRBiNi2DM3+YouvxLPQr9BBoJGSdwn7VMntTwfJHd3ji/6OrQpMBKB2wwBIFFCuYXjwDl9FfdBqBRTOTbeq6BGB3K5p/Fb6QYvLnZX5bXPSNHxa8NdAVO1OCRQHFJRtyEeB5UmiZaHgwS+y0m6pqoYrixtQaqAR6HLCXahj2ObzNYwiUVkrYBqLSXD+N19YHKpSvyCeWiEsk+gQcyeJcEaG8
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39850400004)(136003)(376002)(366004)(396003)(451199021)(6506007)(41300700001)(38350700002)(1076003)(26005)(107886003)(6512007)(83380400001)(186003)(2616005)(42882007)(478600001)(6486002)(6666004)(83170400001)(52116002)(4326008)(6916009)(38100700002)(66476007)(66556008)(66946007)(316002)(8936002)(5660300002)(8676002)(2906002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: CpodNeRyyHFFq4fWuln+FEU6Ghd6Uw2ZFy31amdgH7ULOlT5L62E3wijPdoE5Kdyr35rGsd+ScbuYfHX0nN+Duee/7y7ECVzJNYuQQfGJAEjiJ7prFGLZYyDrqmct/LOFnshG+jLRebFuYYqBnCVp7yBiPG/xuYM5ChlBwdlUBb0QmImfKh8J1BmAx07YfInYjvbzGsAFSVJGittL5rRi00C/QhTXD/Ohoj57d6jUgtv6j51Us0vf18duTAsThzWYULrXz3Q2xmsf4uJ+GjDTpbjUQ7hsUBq6tYUX34TmU8Nf4IK+TroWb1MSh+0R5CL1XqNPqeU40XrsXKsyT6HZPRwY7mR/pYZIYM2+PayZfsO4T7WtNoJssavCPq3DTNQwQrIsRJbmBs5fcqkbOFAWc8CDzHg/lCWxAC1FDioAGFE6H7fY7c6vuuedjRH/zntKtP60llnNYJ2E5vGTknvrOuloEgv2d2hLzc8woOeaU11zglr75ZlospRKFD7OKAmrQILyUg8vwfcoe4GjUNiKIRlOZrUEQzetim3WBIKGKAUncrewrYckY/KX2eTvG8rWzB+6vWBHnetjrd3U8qUT7ggohwqEYejavl4C+PlXl23bNRpZ1DWWFHXSpo4yKg1M19u3YlJdSJQZ2rnKC6c6er30hOc9PU741Ynx34dErf/RFReWPu3NPJILVPhNZWD872dP8YlRGglYypBLwCl6ZtqBUpW/Z+RsA3Q41rdq0/g/39Rtnb/+Y7sZeSugS7i7ubRdf4wUpaxtpTrxC8dPPtaKwr52vJw/UYAAy5uJ4+Pp6+nGEsBELGneZgMCRxtQtcZ4ObMcyNc5U8AqtR70eAWZRXyazvAYjTG374PQgNKlwFVltinMP/FruTUfou+MCagZyAZgFgzqblWbqFvvVu0cGhWjzz+10akGnBOxUSM5WwITiT+sYJfj36o9tjd
 swnG62a2U1gWDWYg1BfURErgtsmwMtNpcf0PjecoojRjVhk3R7PvDxvC21ZVXjX84XdcLEh65DkiuWjDBS2kIOGRXLEJqJGUJBKw/Hv7NvSWQFaHuEXq9pe+3RBHOTskokGtyi07MypuDlVKKE4W68Up7NmQGgK4mHTkV3gXwXc0bteQmL7Im2nOHmQfaXSGENaAaaBrBpcx8CwvxDT0FmszSBJU357tEiyAetufdbHo+UFLSmHPwQ/YJgrOaldLY2t3GsuP2Qcw9IxrQc5sT6aPyYGTFIqE5v+271jjddBSm6bbzbBVhRl0t/RH1R+nxZ8bd/yDFNWqpY2515lnrF06R8VpxhBQX5rfJJTBlrea5Kv6be8ncikvDU+iI72cf3JoVGr206vxKfAlWL4ZJ0niTK14t3M/+hUmBew2j5K8YqwidoMVTAFFDQt9K0x1QWn0BYBteb5g1q5wuq0LSMqmt257gGICsXkmiQ1yMTGE+N1vKczChikV5NhwOOhvkOBAXSfNcvAIfFIOVHVNi2mHxitDv9IqyAwox+BNbMWaAJ6jr6GqCzaJ2DXcBv30CTd2CYWUrdlwcPabglkkfc/sHPvLd3Y4P4p1QeJ3VBNVtXHPKR3+xgbl8voKcrHe
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e16922c-4e9c-445b-e40c-08db81eed1eb
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:11:32.9491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: apr7pOFgrYO336zvPzn0Ne1YlJ0PQtUludm4NtWWw991JkCjTHNyIvt/HQJFOBH1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB1696
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_021137_442591_3B32AD71 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] soc: kvx: Add board_sn global var from OTP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the magic variable "kvx.board_sn" that will reflect the board serial
number stored in OTP.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/soc/kvx/kvx_socinfo.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 496e817755..87c20c327b 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -33,9 +33,11 @@
 
 static char *kvx_mppa_id;
 static char *kvx_arch_rev;
+static char *kvx_board_sn;
 
 BAREBOX_MAGICVAR(kvx.arch_rev, "KVX architecture revision");
 BAREBOX_MAGICVAR(kvx.mppa_id, "KVX MPPA chip id");
+BAREBOX_MAGICVAR(kvx.board_sn, "KVX board sn");
 
 static void kvx_soc_info_read_revision(void)
 {
@@ -123,11 +125,40 @@ static int kvx_read_mppa_id(struct device_node *socinfo)
 	return 0;
 }
 
+static int kvx_read_board_sn(struct device_node *socinfo)
+{
+	struct nvmem_cell *cell;
+	size_t len;
+	char *sn;
+
+	cell = of_nvmem_cell_get(socinfo, "board_sn");
+	if (IS_ERR(cell)) {
+		pr_debug("Fail to get board_sn cell\n");
+		return PTR_ERR(cell);
+	}
+
+	sn = (char *)nvmem_cell_read(cell, &len);
+	nvmem_cell_put(cell);
+	if (IS_ERR(sn)) {
+		pr_debug("Fail to read board_sn\n");
+		return PTR_ERR(sn);
+	}
+
+	kvx_board_sn = xzalloc(len + 1);
+	memcpy(kvx_board_sn, sn, len);
+	globalvar_add_simple_string("kvx.board_sn", &kvx_board_sn);
+	free(sn);
+
+	return 0;
+}
+
 static int kvx_socinfo_probe(struct device *dev)
 {
 	kvx_soc_info_read_revision();
 
-	return kvx_read_serial(dev->of_node);
+	kvx_read_board_sn(dev->device_node);
+
+	return kvx_read_mppa_id(dev->device_node);
 }
 
 static const struct of_device_id kvx_socinfo_dt_ids[] = {
-- 
2.17.1







