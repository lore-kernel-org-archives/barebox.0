Delivery-date: Mon, 20 Feb 2023 10:08:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU29m-00CYni-20
	for lore@lore.pengutronix.de; Mon, 20 Feb 2023 10:08:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pU29k-0000Vd-CU
	for lore@pengutronix.de; Mon, 20 Feb 2023 10:08:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=idKuNDFsMesI5716RZWU07/SU5CWrbU5t1IkCOjrtVE=; b=gmnteUwLssc8oK9J4zANdvty5s
	PazUGQnz/FjbMrnsudBxdCfchdxU+68PmCf2lDIho5JrOD0G1r635x7HRpyVEfhK8U3Alty7FvPlD
	mj4FIQPfNmR0Dn68kh361/9d4gxkNne0Lg4oETlpvcQb1fMtvPiDPGDnDu/ODgrHojWrsG3EK4fxA
	c9Jl3FDmW5DYX3k5T5ATACv9TrcEYGT8utscMAKw9Oj0miteUBkiUTm+xhNElDhv+7tLj6dtdCTIr
	c7ihZOW2NkaBYPFVIe90t9QhPPK2WUIx2xZlKR4ZuGtOs0R239lVMqqvdz0vpy5Z6kwOHgbCAtnm7
	ezIhhS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU28R-003S96-UA; Mon, 20 Feb 2023 09:07:00 +0000
Received: from mail-am6eur05on20708.outbound.protection.outlook.com ([2a01:111:f400:7e1b::708] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU28G-003S0I-SN
	for barebox@lists.infradead.org; Mon, 20 Feb 2023 09:06:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KzwdT/bgNLcPOurj7lRFBzwGPQntIH7ejXCugV2+kCQNCnLHvddXr439+u1uW8b0dmRkZwzCZrIMM6QTgbHB4yu3BTgeZaBd0IYZ7rHiDMTAJLH+2AWJtDQEKOTky/f9YbqJSaK00ju739hrN9Bqw5fdhfzFLAOikhjZrQp2IQzZhMLneKfGPCvIuMui3oOvF4/nrZyFsl6qVbiBOOx6uAS236plUrseoH9cB9h+ur+75fHmm5QdEMpqZpolnhutkEErdml2+kK1CJNlDpH0AnGSQwA9EE685iRF4qbiBfy60P01D8B8mddTlZZAhfiVmE9Kn9ltScHT/OD9MmFHBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=idKuNDFsMesI5716RZWU07/SU5CWrbU5t1IkCOjrtVE=;
 b=NFfiSwrURPGshfzgh8kJg0t0J2FwIMxQ+LJ10JwsiMl5+fmuIRV3ybkB1Yw73Cfimuk9oLEkVj/tvgjxUyVlG05/goq82K1SXKweSnoXlaRWERs9tfRIbHSA3Swpa/EiamLxfbOFsC6iBhZJN4DvJy8JDpvXah9iCTM1TU9+jh3sVMj99ms+hav82Qp0RE8zsfs3rQ1AIH5grmaVN3mb1JVABzHNHTIufNCbnARqBG29Rf84PV56OJ4T23eK6Vk1734zprsM5yOpXguDnmqrx7QcQw5JqXt8Nj87dw0KuRT9RRtWY1jEmrubSHCVwdyhjnZGNCMIxXhzW8+M33lczw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idKuNDFsMesI5716RZWU07/SU5CWrbU5t1IkCOjrtVE=;
 b=DQ8naFPpy8masggE3hWQDWdqj+y6/WatwPRxiyKh1ILbn2rDzcvfsGUrcjvdPL4DxXmNmLVmkDJXOj8QDcwcChZsEH2KshW2iqVOkLLhX0mH/7u5zdXWF7TVzuNi6KaVqFE8CpqPBK7ANWfDCfyZW6kS/wEx4d/ij+ywPqIIPvE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by DU2PR04MB8791.eurprd04.prod.outlook.com (2603:10a6:10:2e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 09:06:35 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::18c1:671b:6784:55ee]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::18c1:671b:6784:55ee%4]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 09:06:35 +0000
From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Mon, 20 Feb 2023 10:06:15 +0100
Message-Id: <20230220090615.4451-3-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
References: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::16) To AM6PR04MB6503.eurprd04.prod.outlook.com
 (2603:10a6:20b:ff::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6503:EE_|DU2PR04MB8791:EE_
X-MS-Office365-Filtering-Correlation-Id: 490dfa23-6c83-48d5-1d66-08db1321c45e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	tgXpKnN50sjaRSrrxbQFThgp2tJCoBWEsVTRsCdBPglzVJjjTApOH7oa0z8RgZnD6BZPa/i0DwPKN0bnY5mYkN1hOqsvhVYAUdC8EMRwicfCWQoMz8x72gQ0t97UklyK+d0wknXiAaZ2LU6ggvIfJV/b7u7hNfnUEDy+toTdT8/iWS9kETGX5/FbQ9Yk+84jYEq+759KS2jgVujmnPPO6yYg4anj6LmMcPZQYhdZpnTZQD3ubtQ02+WyEudD2N80uoyzJnMEFgTh8jj49lN0bC4ihLnUOamknuO+flebLe+cxiLAZTx7mD+DKTDSu1k7gAb6NMVqsGu+M/PLf5bBsSFUjNtZndRL2apx9oZwOLDlrvlraE4ryQjAqxqxvhsS1isNfocPbsUrpWHzfKOx6821/duZaRFxR8xz+kDIHhJBfwCD3NYO5/Kv6Nwn+MvK66TLdOSdytv9B1ge6OmqEGJo4XbhO+xd276/9CFXRBB/ghsxDc+z9jhmmiRfjAdnZ01U1DmD/KUBrKNUJjNFAw/ARoNpXGagqkG4XtZvHhHusP7ejwWG08klLxA2KeYr5cpQgFD1AehapfVu9r3aSdbSv+MAtQDYN1mF2lekT7+Jt+Pbvu4QXNt+CO3N80xLU9/d/8Np0+Ru+ZHZ7TobbQrXGu2DKDrj2Y8cfY06QB1bJwixJiDP6xtwMk2r6Jtv
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(366004)(376002)(396003)(346002)(39850400004)(451199018)(186003)(26005)(2906002)(6512007)(41300700001)(6506007)(44832011)(1076003)(38350700002)(38100700002)(66899018)(6666004)(107886003)(2616005)(5660300002)(8936002)(478600001)(316002)(966005)(6486002)(86362001)(66946007)(66556008)(66476007)(8676002)(6916009)(4326008)(52116002)(36756003)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?j6OQtmGlz0SBstPf6JSlySHB1e6WErr9JDecKv3JAUEQJBYrWBeKMnFdQhyv?=
 =?us-ascii?Q?CClhGIBqOvMaZ+rw7abrVKxE6Tj4lm1+5eQR0Q22U56vYgmif1E54n7NcbK+?=
 =?us-ascii?Q?YvgPQGaSogK1H4sVWMfhPA83bC92JCTjEkBIIVp6zWe5nLF4CJyNAxZhXuic?=
 =?us-ascii?Q?GjN9X4FSiVPKtnCiBqb4RRM+FbeeOcI1fJtDopS+IpTCc+wWUXMb8jmQt604?=
 =?us-ascii?Q?ew5BErEtqyz0TS5Uowzh140ai51WXBJR88O7k9zKDRvKrZNbDFuKRdxKVeuG?=
 =?us-ascii?Q?PWKjyPevDrkcfmoRb6ODlBHSL2WUTlDCAno6RbZuqSN378uJSpqioxEHuVxF?=
 =?us-ascii?Q?oXNx1ioyrAYr09fs23EPh98ylZufjAbBtFP7VITX4y1QPTqbjO9rjvDG7Iw0?=
 =?us-ascii?Q?Pu9QcF5pSFXVHiYnNCY2utAHge9sN3SrFSQoXjXJwCyl5whpVSDLobVjcR6R?=
 =?us-ascii?Q?2vhKT6kYSpTYqqyVi1OwtigWDQHsmLTJ3QV1APHDj3WG7akh6ZMWg+j9c3LF?=
 =?us-ascii?Q?RNDztOfQjqHdNcgkSZXL3fbHDA6dQSw2D/oNJtbVIzgIoTWMdQHXBCmhEkSl?=
 =?us-ascii?Q?FhGN4gTa3D3ki5jp2CMnDdIGUYa1EVC6PHnXJNjNlTghvajc7CZoNzIaAbqa?=
 =?us-ascii?Q?CzzYogijsQdUgFbuQrAFa12Uob4U2iok1i0XBQF4dsAH15lMf8Kx/x6UWcEQ?=
 =?us-ascii?Q?1z6jLSGS8RQsDnGuXqFLW3G74gkhSAux5nMAMntpzPI8HbcetVJWFgBgvsJo?=
 =?us-ascii?Q?qUV/N9Vq0uhbMkous4ylZmKrKMPsx0hcWV/NvzseFUzUX0k92vszORzCKULl?=
 =?us-ascii?Q?/aSW8xftOGYuxzxwNftaeTWf3XFFrzHnlp3sAfMVHfiiiWy9aedo/43oQnjl?=
 =?us-ascii?Q?f8bU2uK/VwFEiHUXtQ4IDf1MBZ4PuT8JESPpe/EbQvvwGr2UToqjHWJOTpUQ?=
 =?us-ascii?Q?mwDWADGYlfYgj9xtTnDLfWT0PYHV67wWStsm2HZr27uzHv8IS4utbDkHuPAG?=
 =?us-ascii?Q?zd25aEAVmdWNwsc2nfPYThxzn46hoUebE4vhBeiQUs4gugstU5FGd04KNK+F?=
 =?us-ascii?Q?ptXBwGQaLRCQvrMbi4gwt68IRDf6Urqg2BlOc7W4eGwuHW6fmV4n0mMEgGGE?=
 =?us-ascii?Q?fZk99b2UW3xAmmSN4EzLyQQlQmvH4u41w3ZNIy6mEsBtxOA6ju3Dk+N3GA/K?=
 =?us-ascii?Q?lVq6nzKY3USpYzn7ngB2kIwn8Fk/PpD0lDmfILRMjD6EWbRrQtsU/hBSn+Qv?=
 =?us-ascii?Q?2yDEXifuXWquBn6Ol/m5H0BhJDAWue1Wlryy+gUYAUIlI43FzhqoFk9Gfsbx?=
 =?us-ascii?Q?GQODespJYtphXDekBKqoj/KraYrU1VxEB3K67bQToRlQ+Iyn7Lrk2qpvUgXU?=
 =?us-ascii?Q?WJmR5q/xJp8rOXYoK+EQU07Ct2iwgZ3ZJDnQqJWx1P8c03B+gVG8c1mDZd2e?=
 =?us-ascii?Q?4vW+OKMjFnaDb67XaExBenCNaAn+1yxILj/PNian9UPA/cViZMwS0KxOB5RI?=
 =?us-ascii?Q?ZGqq5wveb6lR8yMVIbOfacptB6Fj5xL2yqC69dDb/m8yUxMjigwXINWe7h+D?=
 =?us-ascii?Q?nEqMCztqNatH0C7o8w8pN09fFbWoZX7ZS2vgls5WRmA30e38ywX4MY73LZ2f?=
 =?us-ascii?Q?/JV5wxpGIAVf3ouaTYFRkxo=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 490dfa23-6c83-48d5-1d66-08db1321c45e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 09:06:35.3657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iy6qD917iYIepB9qJZA02ulUeUKU14NFtpGcGi96yf2c+BOpjuwl0IuBKxXEs26H2Ctr0PtOZrfOzfAaFqkLvhmRayLcCM7QlQ4NV9PNzEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_010649_067527_88F01163 
X-CRM114-Status: GOOD (  22.88  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] Documentation: IMX: add doc for the Variscite DT8MCustomBoard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit adds a page for the newly added Variscite board.

The information about downloading the NXP firmware blobs was obtained
from NXP's public U-Boot sources for the i.MX processors [1].

[1] https://github.com/nxp-imx/uboot-imx

Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
---
 .../imx/variscite-dt8mcustomboard-imx8mp.rst  | 138 ++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst

diff --git a/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst b/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst
new file mode 100644
index 0000000000..82e640746c
--- /dev/null
+++ b/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst
@@ -0,0 +1,138 @@
+Variscite DT8MCustomBoard with DART-MX8M-PLUS SOM
+=================================================
+
+This board is an eval-kit for the Variscite DART-MX8M-PLUS SOM. The latter is a
+SOM based on the i.MX8M Plus processor. As seen in official Variscite documents there exist
+several hardware revisions for this board. Currently only revision 3.0 could was tested
+with Barebox.
+
+The Variscite DART-MX8M-PLUS SOM is available in different configurations. For a rough overview,
+these are some of the possible options:
+
+* Processor: NXP i.MX8M Plus, either @1.6GHz or @1.8GHz
+* 1 to 8 GB LPDDR4 RAM
+* 8 to 128 GB eMMC
+* (optional) GigE PHY on module
+* (optional) Wifi + Bluetooth Chip on module
+
+Besides that the SOM offers a lot of interfaces. Among some of the interfaces that are
+made available by the eval-board are:
+
+* USB3
+* GigE Ethernet
+* PCIe
+* SD-card slot
+* HDMI
+
+More Information about the eval-board can be found at
+https://www.variscite.com/product/single-board-computers/var-dt8mcustomboard/
+
+More Information about the targeted SOM can be found at
+https://www.variscite.com/product/system-on-module-som/cortex-a53-krait/dart-mx8m-plus-nxp-i-mx-8m-plus
+
+Providing necessary binary files
+--------------------------------
+
+Barebox requires some blobs to successfully bringup the system. These blobs
+serve different use cases. Barebox's build system will look for these files
+in the configured firmware directory (``firmware`` by default). The build
+systems expects these files to have certain names.
+
+Hence the very first thing before building Barebox is to obtain these files and
+placing them in the firmware folder.
+
+The DDR4 training files are part of a set of files that is provided by NXP.
+They are provided under the terms of a proprietary EULA one has to agree to,
+before getting access to the blobs. They are provided as self-extracting
+archive. To get a hand on them, perform the following::
+
+   $ wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-8.10.bin
+   $ chmod u+x firmware-imx-8.10.bin
+   $ ./firmware-imx-8.10.bin
+
+Assuming that the downloaded executable was run from inside the toplevel directory of the Barebox repo,
+the necessary DDR4 training files can simply be hardlinked (or copied)::
+
+   $ ln firmware-imx-8.10/firmware/ddr/synopsys/lpddr4_pmu_train_1d_dmem_202006.bin firmware/lpddr4_pmu_train_1d_dmem.bin
+   $ ln firmware-imx-8.10/firmware/ddr/synopsys/lpddr4_pmu_train_1d_imem_202006.bin firmware/lpddr4_pmu_train_1d_imem.bin
+   $ ln firmware-imx-8.10/firmware/ddr/synopsys/lpddr4_pmu_train_2d_dmem_202006.bin firmware/lpddr4_pmu_train_2d_dmem.bin
+   $ ln firmware-imx-8.10/firmware/ddr/synopsys/lpddr4_pmu_train_2d_imem_202006.bin firmware/lpddr4_pmu_train_2d_imem.bin
+
+Another required binary is the Secure Monitor Firmware (BL31). This is build by some ARM Trusted Firmware project (ATF).
+One fork is provided by NXP and can be downloaded from https://github.com/nxp-imx/imx-atf. Variscite does maintain it's
+own fork of NXP's ATF project. This can be found at https://github.com/varigit/imx-atf/.
+
+Once the ATF has been built successfully, the resulting BL31 binary needs to be placed in the ``firmware`` directory
+under the filename ``imx8mp-bl31.bin``.
+
+After those files are in place, one can proceed with the usual Barebox build routine.
+
+Compiling Barebox
+-----------------
+
+A quick way to configure and compile Barebox is by using the provided defconfig
+for the DT8MCustomBoard::
+
+   export ARCH=arm
+   export CROSS_COMPILE=/path/to/your/toolchain/bin/aarch64-v8a-linux-gnu-
+   make variscite_imx8mp_dart_cb_defconfig
+   make
+
+When the build succeeds, the Barebox image `barebox-variscite-imx8mp-dart-cb.img`
+can be found in the `images`  subdirectory.
+
+Boot Configuration
+------------------
+
+The DT8MCustomBoard allows the user to choose whether to proceed with the *internal*
+or *external boot mode*. *Internal boot mode* refers to booting from the eMMC memory,
+while *external boot mode* refers to booting from an SD-card.
+
+The mode is selected with switch SW7, located below the buttons on the board.
+
+Set the switch to **ON** for the BootROM to perform an *internal boot*. Otherwise
+set the switch to **OFF** to follow the *external boot* procedure.
+
+If in doubt, refer to the silk screen on the board, to select the correct switch
+position.
+
+If the BootROM cannot find a valid bootloader image in any of the checked sources,
+it'll try several fallbacks until it finally ends in USB download mode or finds
+a valid bootloader image to load.
+
+Starting Barebox
+----------------
+
+An easy solution to start Barebox bare metal is to use the *external boot* mode and
+copy Barebox onto a SD-card.
+
+To copy the Barebox binary onto a SD-card, use the `dd` tool on linux::
+
+   dd if=images/barebox-variscite-imx8mp-dart-cb.img of=/dev/mmcblk0 bs=512 seek=1 skip=1
+
+For more details and an explanation on how to start Barebox from an existing
+U-Boot look here:
+
+Currently Supported Features
+----------------------------
+
+The Barebox binary configured by the `variscite_imx8mp_dart_cb_defconfig` does currently
+not support all possible features of the DT8MCustomBoard. Yet the binary does contain
+everything necessary to boot an operating system on the i.MX8MP.
+
+Some of the currently supported features:
+* general i.MX8MP bringup, including DRAM initialisation
+* working eMMC and SD-card support
+* serial console on UART 1 - available through the micro-USB connector on the board
+* working gigabit ethernet on the first port (labeled ETH, named `eth0` in Barebox and linux)
+* working LED and GPIO support
+
+Some functionality that is currently missing or untested:
+* secondary ethernet interface (labeled ETH2) will currently not work
+* secure boot (not tested)
+* loading of the HDMI firmware
+* OP-TEE integration (not tested - early loading currently not supported by the startup code)
+* running on other hardware revisions of the DT8MCustomBoard than v3.0 (not tested)
+
+A lot of the missing features are already solved within other i.MX8M boards, hence it might be
+fairly simple to adapt those solutions to this board as well.
\ No newline at end of file
-- 
2.30.2



