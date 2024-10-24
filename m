Delivery-date: Thu, 24 Oct 2024 15:14:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xfX-000DMS-2o
	for lore@lore.pengutronix.de;
	Thu, 24 Oct 2024 15:14:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xfY-0004lD-9i
	for lore@pengutronix.de; Thu, 24 Oct 2024 15:14:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bVQaepTI9rDwx6Sxkt9UwYXi77uMMGDaIznDAokIjRk=; b=Tb2RNbhVCKBtle4rtK/SaT5mYx
	+7k09HfRwn0bPsscHc5YQq81SNyKwQSOlO5OXIgaQ/hlowGo6uGCSV+O6NrSFeU1oQC2KXNiesMsr
	2E9Hq8u6Lj+0dUnwVK8+qEf30JEASzxuLvCH0HjzoycgQQsrep1P21Wzq3lKIsg3sNlB4jtAzbiKm
	ZBiVyfClzYS0NiqMzy8qcgvsnfrZpdWyFRQMXb16lYMVHMZR/DU4QlUowQ01nsSk+YMr08ZZPKI+H
	te25Ji9s6fjOXm8POMA2VAXyMKGSNSxes7IGOwdphlzuytTiLIjygpo/+yvdTgABuhEgdE7g3CnKw
	ywSZDX+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xf0-00000000SPP-1LJr;
	Thu, 24 Oct 2024 13:13:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xZh-00000000RTV-2rXE
	for barebox@bombadil.infradead.org;
	Thu, 24 Oct 2024 13:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:
	Content-Transfer-Encoding:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=bVQaepTI9rDwx6Sxkt9UwYXi77uMMGDaIznDAokIjRk=; b=Hfu+fuvfolYiJlgfsAWp8T2q93
	2pjvs3+K9Yzbxa71TZDcTFTXlktUuOcrerT57upbU6Q1tamDq+OtOT9yocV9oPJJWDCWibBCauogO
	ypWTEaQ6lgL1UHYONi1CyE+o2/vAbQcg2E+oKIIKKWq6KvC/6REttMdJUwEeVNNliJBWVM2RZDOk2
	t+hJq3WVuJssV4QJQhRltW7nmtm/ntzy4+LJtaWeUOZh/7qDqwgl3mudMSmSEHEAltgn4xiUYwZ1q
	Kk91wX0dveet24oxqK6k5R/jSWYROMqNdCwLmRNZbDSP94SBz63piD8N6GxyIFSrC/Jt4sGubLctT
	GE9mrG3g==;
Received: from smtpout143.security-mail.net ([85.31.212.143])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xZd-00000008fJm-2aZ7
	for barebox@lists.infradead.org;
	Thu, 24 Oct 2024 13:08:24 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 453CA60B404
	for <barebox@lists.infradead.org>; Thu, 24 Oct 2024 15:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1729775298;
	bh=khx6nLL4Cc5Azign/9RHzrfekJjFvoDpFp8YIcGwnfE=;
	h=From:To:Cc:Subject:Date;
	b=I2ECxwXEb3Q8ZGNLCZTDddYKqE6l1ulOuRTPX/rTt7xNuR8oBkzTVupvlgJ0s82jz
	 aAFy4F8Mx0GV6ktRBYFLMtrhRBH7xHJPDMVb//v2bBEm47Qbi7eXoO5O6G3DJ7zpI6
	 AgLvnO9dt7VRngKK156vNXF9xbaWwxhNZbdTfGPg=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 10E6C60A1DE for <barebox@lists.infradead.org>; Thu,
 24 Oct 2024 15:08:18 +0200 (CEST)
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazlp17012049.outbound.protection.outlook.com
 [40.93.76.49]) by fx403.security-mail.net (Postfix) with ESMTPS id
 49DE860AC6E for <barebox@lists.infradead.org>; Thu, 24 Oct 2024 15:08:17
 +0200 (CEST)
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:118::6)
 by MR0P264MB5178.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:4a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 13:08:15 +0000
Received: from PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626]) by PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6fc2:2c8c:edc1:f626%3]) with mapi id 15.20.8093.014; Thu, 24 Oct
 2024 13:08:14 +0000
X-Secumail-id: <5b21.671a46c1.47eac.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HARZVpUH1XfE0ZI7cXqbJrk2/lgopJTeDvdoC+UO/oFJquVNUQowEe1/IcVgbhvrOBQUxdMKZi78U3K3hF3h3p1GICOp0sQ9xnrnhngcdKS4qVoQYv0yLFFCpGDyaNpnMEaIWqLwKnIw6AFNIKvkZC8srSrJFMFB+euISB1EJns0+QDmAZCWSxC91lijIQm31c3Nk8oC8RvMN6tG2H6kAXb9guxbha8GMD0KhZYJOpEgszsc7OFQXQ/LY5Qn2PLZ9fb+RKjVMopjbiSRdB3wzwNY1MOuKrBvpIf0AGXqhozQHKH27l+aO5oBiKhYQs8yahuuj0RitjAZZRCwiX/0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bVQaepTI9rDwx6Sxkt9UwYXi77uMMGDaIznDAokIjRk=;
 b=AM8wncb9BltadV2UGTA4SBIRhoYjaGAM/va09wqOc0zNOPSqRQcnbc9NjRlvhR0KpPNfKH9BBapjeiGGqDDowj+8x7EXjQdMw1WrgRrU+/zEAhe+8BqVYUgfCEsinz/PrqNcgYCHAqHHeWjayyYnzxal9AS2wCzXM3TbX0Rw6YG6yJo5Ds1opf9HldCy28LO2vgzOnPU6+xCJOxNUW+qQzU5nu3/rCNPpYzJfWWVaTqJrzQX6posBjlCg4ITVCDh3dHp1Bu+lrQHdrTiWo34CerpM4ZYasBF0ZefJhEXxcFL2c85wcn27miIGCl6J1nvbT4zg2g4Gs3Lt6lYR/Xxfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none
 header.from=kalrayinc.com; dkim=pass header.d=kalrayinc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalrayinc.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bVQaepTI9rDwx6Sxkt9UwYXi77uMMGDaIznDAokIjRk=;
 b=AzcPokUvczg6InvKELnxD8M9F5z6Y7euVczR7eutU+yl/UNRgTqbYNqCGAUhOLAD3TQq1bC9wdWWRoOwAuBgi2sAPOSkewZgYtQ/IN0qOLhuQu8BniD5x2MH07g4XJ4VFTnvs5BHpxD4fLwMHEVrcUtypErHyJxRl+daxq4pNeyVqsdFHB8HhznNpmzSbEfReMCdyXcjZpYg38lJOVRyztSkFLtv+g85FuPu7Ay7n54HvSGlExj2lDFABpccHyBtRUp+IaU1KLwd51hCxAtwTfsU4luUqG+USH94XUz7Eih7tMHzrOQi/dzo1aI5Tr2QGoUDoW44gtbBKiJeCX2ooA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalrayinc.com;
From: Julian Vetter <jvetter@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, Jules Maselbas
 <jmaselbas@kalray.eu>, Julian Vetter <jvetter@kalrayinc.com>
Date: Thu, 24 Oct 2024 15:08:03 +0200
Message-ID: <20241024130803.2208041-1-jvetter@kalrayinc.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PAZP264CA0228.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:238::6) To PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:118::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAYP264MB3766:EE_|MR0P264MB5178:EE_
X-MS-Office365-Filtering-Correlation-Id: ec1f2e8b-0f84-4100-7174-08dcf42ceb5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: A9j4fycaq5hkmXeElGqS6Y5Y80qFMiaXbgAL0sK1rdqW64SoX2dloDPKdX96Y5VSKLta5WDmBCw/s+W184JXdpA8kpInfBzB8us79H1UWu1K+V/HBDoCv2cH0GljedUPWMEYs5i76b2Kgb3eEiFqef/I0x/B9e5KbAOJcsiFdR5wT8y3lCPEHKXT3ddveZBMa/AXWB8epc3ZyeqWXcLxKaWdKyp9tPri7fm9C7yAhQFDA6x3/7+kytxdq4mRc4CAiYzYPmJ8cEA9haARvU7SAPEuPZx6jyKdff2ckCIZf1tNNPtiKmbgzVkiwTVvVyWV2DVW2A1/BYfQtdJvPd5qo3xuuhYZ7szweEJH5Sa7PoDakQI1jxHBen/nZaeH89SX79RXtk0h5x535HDdT2/+EJNiUVb3MBpBN0Qw5p8dFUBsc9rguh4cW/UUQc9K5oxQW2z5c2/ASp8FF/F2/EmOWt3scWMyQ2RElBcOCHwIzSr7i4iP+9kJZybAynjjfdbtI1JedEjgaNhA71GEBJOHX1cWFjFoN1s+TmLf6V8WS780og21YZ8lc3hAktENz8erO2T45eof5O6/eYSaOIyoewJre4UQWb6w9OwB6BwQrZNy8Li8B4MWvoNP8Q3424QPA+7spW9Q2knD0qyg1qqATo92hdICtHjQu2WyDSZ9a/mji0Dg3rwFZlIqhG8IGiG5ZDC0k0TxHk4Ml19IXC1MD/CnwifaYev73/vBVmePBKbF2W7eoddmIiI4t45DzJ+2WyfRc1Fy4dmlMHf35NeP5Lss3WMxNh+Vkx90XFDkefCWQOHTtyyjDHuvgEIFu2GF/ceLge5LpOs5JiXrljRYQVFL48yTDwvY4hqVkDh3PaL2xmzgK7zpYZYoCbxl6qBcRWugGIIzE51/xMowX75e4eLKce7HFOs6bDAIXE9pQsah+EPN0F6SQOBoBekEZw5MLKD
 aP11PvJFLJRVfJ+7Op39POIhNLLgDc8JKMlvI+t8HajJ0OnEWUOZ7EzbrwofsQgJIDaWEU444Xr5rX3v8OMfjv7Tje5wrlCdWlZqIh8sHjdRT7nclLjtv88UIX2g7RIPC5eFzXlz0KcABGKvdZEcAne+m6pk1rW2w8bgfUu3wL3eoRt70SysFx2Vw0hYDyIEBfHmxv419Wk90VCujWAQRoGegAIIay5RCNvYkf71qk0J6j5Q6R7+M+7ON+5T+zdsNk4aZM0KGiF2cTPfBG/YbiaZ5FyCQFvZQhhHbDqp0gvj6iMExRfvLvJrc1bepWDq/B2q0ly49RWV8bdlGguw4QZFxwQn0tnPdpHZOVLSJh8Mn09NyxpL7zkL/wU+aQYljeBXaLXrMDA+8B65XPvkdz9WIf7Va0bxL+i09Ibw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: V1u5zW82brjPopqioQd68kt14X72ujSnceTBRrszi31lN0ShGPKWzY74dLgDMlAyK93qb9IpRZHE0F6Pgnvi3dgM8yqtTfxPmHFzyrBvEcp2lD9iI27C7NPkFK4wGKNuZjtMgFwc/DkklOTqNqYlBG672yengxo+JXX39wMwQWeocLZLI6vCV6xHX3pI6Q78CakgtMrRxgSBqiCOFwubfmjsPyg7yFMVGx6dFRxRjjgpvZ9+oPSTz37fEM2dohJ/4T5zQsSSzKMxdrgbQZ4fSu4ycCcu2vg6Gbs0SKNICcx2Xc4t7u2rQn+AABW+A1KWYETZu+GJ5cJ4cx8U9WmtChK+Iffd4cmV3g0AFP0iVkG7oiRs4zqhO4XyBrEItpqG99kvJux8qpu46UV+2fYH9K1RxNEGkhqQ/nJYnStmNKIqm25wTcjSvInVHUyQR6gw142jFl7LyDS/5YxMHu+SdLht+613I1SrbzUZDUAWrYQ21AlLux+sHvzNkGpNPTnc/QFTrW2OXqkBHZ9ou774Tz3rEeW4IPemN9dyIPLEnIdLMmq1UBazSqxwAHKb22oGhC3QwoAdcqcXhO4B4qDbn24Rh9wDhErxRKLHjeYL1UochLrDloEfYV6PX9MINCdnZempUexh39dbEuTQgFAlSerdUBZr6wcQ+nB6cNC48fp00tNhemMm9GLjeRepnuvCxE2Ivra5wZbtxVzZ5EKfLy+YOnevUbYdStHyeDhAP5SkY2J9FvSbvcyIphBGqQ34KH7v7RMNqBPHaYjKoWO8Hpli28xEJb69nTJtnaNS255AqJE2c3oUWe1ghf2z2VREjiAN6XlFUOPFMep/CkF8KTc+QeeJ25ncT6nsRWHpmstN5VLsj+7y/Yvo+Q7Ei18srC1d0b5N4ZFMnp++jq7yh2e3FoAUPZ6WMRLRoE8Ns0YKCwB6zv7ha7wKZxUYK8K/
 brkEqvCa91wzE71f0+Y+0azd8ouRLnl3kOh+beBZyWZ6sNOjMjXF1k0NUBlGiYKsLLsZU0ZWCXOjDKahHGt64xVWsHNzJRMxwvefvRJEU4EZTUWOKbVO8ehZFAdUzrEhyJmrCkfP0pG5z4u9vQgNqBDwhpN0GNg5znBSzsB452kWeyTprj2IDqax72DUHo0M/nztyfZGXL2XuH+ojW5m+CoWK2+QI6hghgwiniu/n1jxso7dzI0tMtOHeW1ehT/g4+0TBP5lqHBIrOp0OG4ZQYMwPyvOGDcHy0Kd96i9tV8EB4QaVWiuMpVRldkFSBAES771rDkVcu5emF2INj8WbiBr9OctH3R8weUunuSJWg+H2GQL/JuKbCiIeQsEhPEFAVEEoh5leJOkUo3PL1AfZuDER/umPE0Ll/2h4l/gBNqwh151GXDgfufBKIDgTSXLhp58MAKQyUd6V/qwVZZcoMjnuSTRunQ1UIJrmeNZ1B35LrK/cma5f3uwLzKCPW3/eQ2mj7jy0c8m7lw4+3szsNdbsGR8GhQQ3SDrXMBbpJUCtlXA3GvQLDlwW8Hk+VmQrsfee0mnJ5w6tuqOzJOFm0m0dK1HPb5sM5W7CA94e1tZaM5Hbv51rkaCnNkQtRtVEmHNRhEOs/PXyF/iLlUWbg==
X-OriginatorOrg: kalrayinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1f2e8b-0f84-4100-7174-08dcf42ceb5d
X-MS-Exchange-CrossTenant-AuthSource: PAYP264MB3766.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 13:08:14.5263
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CHI1dv2E3ly9/VeXid26qbWCvbMoFrnsX+m+noyogOrPOZckXlTy7AbHSAsJiXlaFshe4M+a+AYuRVTrlk7vjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR0P264MB5178
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_140821_887218_4C9B8CB9 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Add support for a watchdog that starts as early as possible in barebox.
So, if there is an issue the board is reset properly.

Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
---
 drivers/watchdog/Kconfig   | 11 +++++++++++
 drivers/watchdog/kvx_wdt.c | 16 ++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 762e37c9c2..71bc7bf0ac 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -89,6 +89,17 @@ config WATCHDOG_KVX
 	help
 	  Add support for the KVX core watchdog.
 
+config WATCHDOG_KVX_EARLY_INIT
+	bool "KVX Core watchdog early init"
+	depends on WATCHDOG_KVX
+	help
+	  Activate the watchdog with early initcall
+
+config WATCHDOG_KVX_EARLY_TIMEOUT
+	int "KVX Core watchdog early timeout in cycles"
+	depends on WATCHDOG_KVX_EARLY_INIT
+	default 100000000
+
 config WATCHDOG_BCM2835
 	bool "Watchdog for BCM283x SoCs"
 	depends on ARCH_BCM283X || COMPILE_TEST
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index be6b08b71c..3e66aa38ba 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -91,3 +91,19 @@ static struct driver kvx_wdt_driver = {
 	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
 };
 device_platform_driver(kvx_wdt_driver);
+
+#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
+static int kvx_wdt_early_init(void)
+{
+	/* Set Start watchdog counting */
+	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
+	kvx_sfr_set(WDR, 0);
+
+	/* Start watchdog counting */
+	kvx_sfr_set_field(TCR, WUI, 1);
+	kvx_sfr_set_field(TCR, WCE, 1);
+
+	return 0;
+}
+core_initcall(kvx_wdt_early_init);
+#endif
-- 
2.34.1







