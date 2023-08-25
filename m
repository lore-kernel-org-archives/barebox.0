Delivery-date: Fri, 25 Aug 2023 11:46:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTOK-008Jbq-JU
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 11:46:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTOI-0000Y9-9G
	for lore@pengutronix.de; Fri, 25 Aug 2023 11:46:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O6LG1C7spW8YM1zphXBVNNAtSWLrwwvR4aDcaixPJSI=; b=JjTKHSt+E30dfEYBpFSF5RabML
	dakJSV8O6sIfllmwylB2coWRlnuHBfoCJeJlwY2Z76YuQdIi2DucJUeSibXgPNXGg9PqwvqnXvJK5
	l3CfFx2xlLrjdi+Jpe5gtnuyngFuIcZTmKrEaJeWfQzA/WurIJC2Hv/vdC3WRSkgwNpU1mmolw09u
	R4MC8GDtad/0UqTO8ZCWIaycU03birrqbcS6jUay0sR096tLqhYkvGPfC4Hy5GE3capNOoPznab7E
	57p6Wl9H8JYMpckSZpc2RcaUW73EBSsvu3JImYh+J8b5i6jQQENDTeLySRimWabUNVDONrwyGPx9j
	HhtAIc0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTMj-004lTM-0E;
	Fri, 25 Aug 2023 09:44:29 +0000
Received: from mail-db8eur05on20710.outbound.protection.outlook.com ([2a01:111:f400:7e1a::710] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTMd-004lSE-08
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 09:44:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ms0xIn2hisyty112mcWvnJpIfZoV5O2h7efWGFB06IY0pwuHtseKWxVhuWxck5YnpMS6uzjMWQLRqpzUzAsCAu5equM+0Pqx5c1uBXIBgmDBZUBIcZOIzMtiQgxbdwFIJsxn9Bok7HCJoCxfQUI3q3w5ee2iNjhuC2azW9udkGrhcNWQJJY+OKWUpXbNzWlfc5HsWk/p/nlHGf+ZvosvMGPFLxal2W2N36URPpemFTofqAnr8ZkGC4ncHxdUwaEMcO2uyb/smhA9JpBpb1RJPYz+hRQEKSVRCP4fyHkTqCs+RzdDlhtmloCftmpk8JNfLK0GSHrsONeAbOy2SYj3WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O6LG1C7spW8YM1zphXBVNNAtSWLrwwvR4aDcaixPJSI=;
 b=dlWSYUjkamsZ+AOeTA5c5prO/CxjNC4C3HdbFBk/uGmtKHCqmlKNSDnhZCzZ31o7FRlvjeOjEFbjyFvzrMS+9TDouUojcdrZTRwM/3IzPnAZvJZFhc/8FXwL+CLhFPaA+GXnaI5KvgSiml/t67GqijLygV6ILEyk7TPJtZ1CX4nQDCubLPoL8Qac/ouxTx7exnf7OA28N3a0rqs4izxsCRjyqTLaT3m7e9cQK7TJSVknAFwuQLMt0G7xV2/W2Ge6AeMGUeVOJpWxo/MgfrXZsseVSl2YF3/nEKqmJxNrXeOjW/B9M+92hQWB9WaXG5nAHH+z5ytsiXhBnvOF2wnTsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6LG1C7spW8YM1zphXBVNNAtSWLrwwvR4aDcaixPJSI=;
 b=mBMNbRIIDTfcBsVRY3nen+G0YpcKvudJ1Z5LMqurgTT9Qb1I6f5Rnc7IP8//LKv1BsVjX3cVHUBYLA1AD8PwyJvta+5Nb895LaRTRcP6ixe2QC0B/AxTgBOloUqInIjleVOUhaR+eCMqrftSt5DFVFzf4KlyeN9RqVG/NdDbwRs=
Received: from AS8P251CA0010.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:2f2::8)
 by AM0PR07MB6468.eurprd07.prod.outlook.com (2603:10a6:20b:158::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Fri, 25 Aug
 2023 09:44:05 +0000
Received: from AM3PEPF0000A78D.eurprd04.prod.outlook.com
 (2603:10a6:20b:2f2:cafe::af) by AS8P251CA0010.outlook.office365.com
 (2603:10a6:20b:2f2::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30 via Frontend
 Transport; Fri, 25 Aug 2023 09:44:05 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 AM3PEPF0000A78D.mail.protection.outlook.com (10.167.16.116) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6699.15 via Frontend Transport; Fri, 25 Aug 2023 09:44:04 +0000
Received: from n95hx1g2.localnet (10.30.5.31) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Fri, 25 Aug
 2023 11:44:04 +0200
From: Christian Eggers <ceggers@arri.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: <barebox@lists.infradead.org>
Date: Fri, 25 Aug 2023 11:44:04 +0200
Message-ID: <13356260.uLZWGnKmhe@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.30.5.31]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM3PEPF0000A78D:EE_|AM0PR07MB6468:EE_
X-MS-Office365-Filtering-Correlation-Id: e9c2f070-da6a-436c-2031-08dba54fd210
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cUrFDXeYNQFmiSeRCOqhqWJv3j9CwaWEGDU8dCeSPp0yGqec1lQEzatBm3mNQR67XLfpbP60RtgiW+5HSecLqlRH7vOiiPalhHtf/Eyq73+SaGi+TLGvfiErTbvhMHK5/7EPDaPzWchRR5qlZPZgAP/unntvq6XJlncS4jE9jHJ4w/Glw2h6usZ5WjQNxLbOQDvcrgFftpbVBtE2FkBHAtjds3sA/7qCPbkiyIJblfZP0m6kR0bA9vVJ64Kw+MrnUd5EcqOqc/oBxiSS5AVx3tvY1Pe26bDiQjUYxX5km8bROpsJFMgz9MMpnDJZnz0YOFDTh0rO0eaOfU/kvvxxWV07Yqgj2d3JFqBxsOyoDGdPGvor887JTu9nbpIv/Glaa29oTcZe9mhZYguOHH2vL8Du7Pb6srSWLoH3QldsyxEoSsB+wvnr1+s3g0ADmJYMW1SA6FT0/kxj2Tu7VXT+dWw322DuqA+0e1HjRXuI25rt7G0w0bA8Df2GjrSZn9IroBKJrhNvMYnlM2kVxV0gVimQ3+W/iGk1zaAGepqenSURnOKc/IWa+kllGaEgLQvNTvg5yz3dSUqs3aE4CiYuvHF454bHMKY+JCRcuLxIkmAsL5TDUcxXDu41aOjfR/wmfLu1K0P0ONnoEuiUdGGP4YSZtAHAMZ26kHL5QwCAXZVXgK7Bvdg8qlK8g4CZWSm4BMuC1qzICO9hrOm13qSxi7M6WJT0GiRp3O8LJG5tvVYCaz9t6gw5kNHruW1wMkbbqsWHU6xQG5pEgrttDu6I7KMcOyvEOGRQjlifiwuD1lLga6SKPIz4ftPGipmo3VNk
X-Forefront-Antispam-Report: CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(376002)(39860400002)(346002)(136003)(82310400011)(1800799009)(186009)(451199024)(46966006)(36840700001)(9576002)(356005)(82740400003)(81166007)(47076005)(36916002)(316002)(5660300002)(86362001)(41300700001)(9686003)(36860700001)(33716001)(70586007)(70206006)(16526019)(40480700001)(26005)(83380400001)(478600001)(336012)(12101799020)(426003)(966005)(8676002)(4326008)(6862004)(2906002)(8936002)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 09:44:04.8016
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c2f070-da6a-436c-2031-08dba54fd210
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: AM3PEPF0000A78D.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB6468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_024423_150230_AA8F99B5 
X-CRM114-Status: UNSURE (   5.47  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: FIT: support for compressed images breaks existing images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wednesday, 23 August 2023, 18:32:06 CEST, Ahmad Fatoum wrote:
> I need not tell you though that latest is greatest and all that ;)

after rebasing my internal branch to v2023.8.0, my system doesn't
boot anymore:

Booting entry '/dev/nand0.root.ubi.kernel0'
FIT: Opened FIT image: Barebox fitImage for Poky (Yocto Project Reference Distro)/1.0/orbiter
FIT: matching unit 'conf-imx6ull-arri-orbiter-revB.dtb' found
FIT: configuration 'conf-imx6ull-arri-orbiter-revB.dtb': 7 Linux kernel, FDT blob, ramdisk
FIT: image 'kernel-1': 'Linux kernel'
FIT: /images/kernel-1/hash-1: hash OK

Loading open firmware Device Tree flattened Binary '/dev/nand0.root.ubi.kernel0'
FIT: image 'ramdisk-1': 'lios-initramfs-ubifs-orbiter.cpio.lz4'
FIT: /images/ramdisk-1/hash-1: hash OK
cannot handle filetype LZ4 compressed
ERROR: FIT: data couldn't be decompressed
ERROR: Cannot open ramdisk image in FIT image: Function not implemented
ERROR: Booting entry '/dev/nand0.root.ubi.kernel0' failed


Since commit

2ab6780b80e3 ("FIT: add first support for compressed images")

Barebox uses the "compression" key from the FIT image which breaks loading my
ramdisk (LZ4 compressed, should be decompressed by the kernel).  Although the
compression parameter should be "none" in that case, it actually isn't.  Older
Yocto releases used to set the actual compression type here:

https://git.yoctoproject.org/poky/commit/?h=kirkstone&id=2c58079222310443f08df51e9fd6ce234e7e0019

In U-Boot, the "compression" parameter is ignored for ramdisks due to this
problem. Only a warning is printed:

https://source.denx.de/u-boot/u-boot/-/commit/bddd98573465
https://source.denx.de/u-boot/u-boot/-/blob/master/boot/image-fit.c#L2289

Could you also apply this workaround to Barebox?

regards,
Christian





