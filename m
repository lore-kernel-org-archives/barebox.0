Delivery-date: Thu, 23 Feb 2023 16:38:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDg6-00H2Ya-Ar
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 16:38:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDg4-00065q-I8
	for lore@pengutronix.de; Thu, 23 Feb 2023 16:38:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERG5k2eYE0B+lHSyW/wmKxrVrDfA6baZXYfa9tVDiK8=; b=J6rPif+lMZESRDbxCumYL3WCif
	hxlrd1Ywi5s/x4kD20KkDYSsZqwWV/E80jRZmNHz0aN4wc6XEFvnwYIezYIV8Miik6s2mUSmDSwSh
	XvZpNqsmEZq+K6TGMN1sFNq7n9vepbaMmwQ4TJ6lDcypNZ+9NJNC7tGNtIhebkGGE2J2WSncPGPGY
	1CXYo9vZ7fgMbOf0KQllGWfnsKQWUFOjdeUWALO6p3T3Im6NZT3GFhpgFtdS1Dm6BqbzqQK5mEaJS
	Ex/3XswP0+MXUPOC8/mD2rVMjr+ccx7zQbEWfipCDbtEf6gWLebaJocE9wKoRhxtA8IxUVPcY8+mD
	4lSNFrqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDeY-00H4uo-Ub; Thu, 23 Feb 2023 15:37:03 +0000
Received: from mail-he1eur01on0722.outbound.protection.outlook.com ([2a01:111:f400:fe1e::722] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDeF-00H4kf-CM
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 15:36:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqmjlbP8IEzwOW4LH8gDmqRq2yixiP83Z+dwPcVfCAqztE+bEqx/dEVeEXLbIW4VHWpNB459Ui1yRHrj1dLgqYIqykDoHLlNKkszsSnX7Q6OHiz7vJiKVtC57iRP8bUJbz/1gb4onEHjluPY1RjAg5CnLrJKCq1FoNnzjNWhveAXit6qntI1ZPIJK3W/sJX7lLhkeE+eVWgOl/ANAnipiW76tVzKkoKGQAoe8EREuqmoUvFIOqfpDgHIqiU5uhNuz0WGFqLMUP8PpxEyV2yWG+XGQknsIo7iB9tTo/o2dnHCCtnaCmumto+8E5dKPImeEYj20t5p8MvJ8sCxfI6Jpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERG5k2eYE0B+lHSyW/wmKxrVrDfA6baZXYfa9tVDiK8=;
 b=EYK7TVh4RNYySC1ZS273V9Yg/aXylUjO7L1pHMuFf6Fpi6beBToP6F+SSIqSAtQZmzUXxp12LPYAbhBVqazhpWOtZT0f+T+iqvB9aZdZes7q1CZSrjLgWQ6a14eGhDkcf1RA/mQyci1KyZODQ5Mldx5BY1l6pJaH9XCoYH3sunkIkluCXSVcItmN5RrvQpF8xpYGIjVHRk6YhEHxlM1lxhC3cCmRZxNTrd9O2WyzJd4nddUt/6/TUZvW4pXa1gAi0KNdir/bEViay/C0TH+lUkELFPT9ogtLYchN0jAs3nOnRP1WknJVPDfF8R49MqikNFwsbEwfF+j/edu0sGMXJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERG5k2eYE0B+lHSyW/wmKxrVrDfA6baZXYfa9tVDiK8=;
 b=bk3zTZT514woCKDrxdRWZf/KcePRpve3/dY4Z8jjhJgwQT+IfEysylLdJjVbYLHPyZr7NF//FOiKwJBhrcwT1Fu4KEfDxa0VngwmnXAMgLe55O94mWE9bBarCXdtxgYZH3uNNQp9qwoQ7yFmmyL4hb4SgbKMoylgT2IFG9hmUhA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by AS8PR04MB8625.eurprd04.prod.outlook.com (2603:10a6:20b:428::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 23 Feb
 2023 15:36:30 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6%6]) with mapi id 15.20.6134.018; Thu, 23 Feb 2023
 15:36:30 +0000
From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
To: barebox@lists.infradead.org
Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Date: Thu, 23 Feb 2023 16:36:01 +0100
Message-Id: <20230223153601.59357-3-michael.kopfensteiner@vahle.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
References: <20230223153601.59357-1-michael.kopfensteiner@vahle.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR2P278CA0075.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::12) To AM6PR04MB6503.eurprd04.prod.outlook.com
 (2603:10a6:20b:ff::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB6503:EE_|AS8PR04MB8625:EE_
X-MS-Office365-Filtering-Correlation-Id: cc7590b4-7ffc-4ff5-5a6a-08db15b3bc6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Mos4cCb3FETLZNeKX29jFUO/apGFqVlFx3Ph08ogLb7SLdUBuKCQLslqTL9sNKZlAPKRtUm3GeYbVcNUDVrTvC0/t6H6xPM+3ZyE5RZV+v3RFdQzrGdu0h/sTDMdL9XoJHu/MExrq3/An9QaY1mLieSrUGBRUG+YZEATVZ4zKM5STawolqFSEcn6N19f9YN0pRnE0Z1e4pSq+F+EIFMkjWodpnkPwuSQKryh8hm++8Z1THmgdVZLc7qEa2se0+4f2rUMWxwhGBU1yQZBHdC9gF/zqnVR5YGdnNtzYRTbTMyeWnqltkBbFrM7SxN5D4AJhWqanH6AUxphWR2KC+qxNCpDafTzPCRCIV+WoCY5b8Zh28MsHExPDP6vN/+g9y4Q93RYPjT+AbHw13z+ZCGCpg1urhqgbQT1K4niBB4T2B+0momwSvaxkXJdVWga6hAwzHTAeWP07gVNLySNbJpUFNYKfE79/lizOsgpdSpyfCAakHCoj0jnKmIw+g9wIv4nH8tAYuDWbuokQblF7F3DizQjQK7YdP7q5knBA6pKqg1A2aBo2qDGhlNBcHMb/TxJplnSfhMs2DqOAvNLcABSuimQdVVOB0wGHcpqq6FeIxVESnQLaZM23bike74XsoZ23a7xYTjgOwrvc6wBazwqx0rGjjArk5B4uWUoA5ghBPxddBZykgXRVkBny13Z7+wa
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(366004)(376002)(396003)(39840400004)(451199018)(36756003)(86362001)(2906002)(8936002)(41300700001)(5660300002)(44832011)(38350700002)(83380400001)(38100700002)(66476007)(4326008)(8676002)(316002)(66556008)(52116002)(6486002)(66946007)(966005)(478600001)(6916009)(66899018)(186003)(26005)(2616005)(6512007)(1076003)(6666004)(107886003)(6506007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?U6DGg4+MjIN5RsuLknt2rdcRUjQ7uzdZL/E8sc7I6ERSlfFHly/t5GcpAS0A?=
 =?us-ascii?Q?5+2G8qGEsPb7sTUkDyJx8XHPcANLOFeUBnWiqCdPvh4xZejOsdzeTKsDZAOe?=
 =?us-ascii?Q?oE91pmADiV3L/KbrnsscXtgfrSW675GoleQ+NYf+bBWfrjsQf/ny0tiul9R1?=
 =?us-ascii?Q?BhM74RwxY5moA98Q/U/1dl65CNH5V0RDiIe9LCLgSigZJH+jXesdbZRygEUf?=
 =?us-ascii?Q?doTHpMu/CjIbZgc0Em3A+e8CIk6sLVlAJFI9g/dBRqzbFT+rUHezoVHJcgCQ?=
 =?us-ascii?Q?jxe12hBJy/lrwi1YSJ+Bpjmnc6qnaHLfx6iTFiIv3fLLxvV6bc0O5vcCVM5N?=
 =?us-ascii?Q?PjtxZ4ibtL+pwwOGJ8C9Nzwduv35nrQ/xMi5yW1ZTfffaxoj3DieHxywJBZC?=
 =?us-ascii?Q?EDTknBF+6kZHcJ1p7UtUAMPmPcbMKf6BRPr3OYF3LyYjTS70Fa4f7gme5QVj?=
 =?us-ascii?Q?s33oPlU6IJ7L6FFnFXHdTK1Jf3sQ/uCKfLBj8AxUlHDFGXPUST5sYkudspJT?=
 =?us-ascii?Q?wzpQsLlASucEjS6fAzcHpjYBh3AmTObanKOAIdAGlCI6fIV8JVMMtFJ43ZKt?=
 =?us-ascii?Q?7EeBOQLXQrh0oenv5qU7XxRtC3bOrmasb//pqtjydDS6e3O+QTdEXpkUfYkC?=
 =?us-ascii?Q?pJ5N2fZFBKKQY9XYN58ne03OSC0q5NoDKHvN3/DXXbCILxXj6zuSM0tm2/7S?=
 =?us-ascii?Q?jZLXmA8AywVol8BGetIZ1S8dGCk8NHSdfVtVpFosJmjMkbG9dPSrHhiwMG0q?=
 =?us-ascii?Q?Ura9h0TUVVezWYLb4DOoV4wRXQ4RDmHqDw6ItDps2Zqhil3FYI5eDI+L0szM?=
 =?us-ascii?Q?4r+iEe3ymynSFq8VDy+m3Op+ZyfzKfwnAUN9Bl8Nrs7L8AgrFg0sSfUoDWrL?=
 =?us-ascii?Q?mgEtxTfUCDdP22dBrvL0uzTs4eZzhqk9dvXGxqZnqZZV4ESwcaqnbDSXGTC6?=
 =?us-ascii?Q?o4CQoxpAke/w1tF7OrAbyv5G8M/H+RG/lc/TgDkPlIxJ2ESNEa+Ho8M/Afcq?=
 =?us-ascii?Q?VuhGawoxw+qhXogU4ziq6YUwfZzCe/OUR+QseX+DmWTO6Lsw04s7lM2K9C7W?=
 =?us-ascii?Q?HKDGmlZ3doLkwoiFHxhfG4dgpo5q3lnjhZt0LhIgGW/xBnuM74kFKl11XnlJ?=
 =?us-ascii?Q?x4akcNXOrUOr/vJLxGWBOAujpvn9uELftm8iWvrovoFHz28DHZCSwctn7mof?=
 =?us-ascii?Q?F2aDBKoCPC8lSu6soWDNxc3W6UhcQFXtUYlsGOjy5uxiz7wIBDqhq7oJNQA8?=
 =?us-ascii?Q?m+mCF/P2xu1yYuD9UZVTcA0qsVXEH1TASmLVrlULnZWiXOR5JB4mzIJCIsnA?=
 =?us-ascii?Q?0Lg0ia4PBYfKnphs0q9KnvGwAWxosbDshRQ0uwWDXXvN/iqUGGpUYsCPi5kh?=
 =?us-ascii?Q?9+8NDTWm79UfhHZeAUwU/ayKr6VU1eVmsMvKtI2sqkNn908YTK04Nb8TyxWm?=
 =?us-ascii?Q?l2xofmTdqqTJ4gvUW/6Tg1DSedBw17hB4Fw/u5I+rUs0EK6/d90Iaq4JTzHa?=
 =?us-ascii?Q?xszj8kQeeqjUzXXxpVSXP3ivlycoAdNRBgUAKg+W/kMZssQ69EwEzLL5MxZF?=
 =?us-ascii?Q?5b8AkKvzE/hJbXlya4vd0l3pfWBDVZoQzMKoAa0bQmYWEZ8itvWfeUMCm+vQ?=
 =?us-ascii?Q?Lt51t4l4xwUBsyBr7zl9+Ok=3D?=
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc7590b4-7ffc-4ff5-5a6a-08db15b3bc6a
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2023 15:36:30.8566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sdEwXNWvmxo0KKP/Yak5f43j303vqcAgOSmo5yAzwPzXnPIMY9eTGm5B6ktC6nhYG9Hlwq9IsmnRGiPMLLlQUqDlscYRA7J6i8eK0KK3gnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8625
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_073643_484364_2C372ABE 
X-CRM114-Status: GOOD (  25.75  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] Documentation: IMX: add doc for the Variscite DT8MCustomBoard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit adds a page for the newly added Variscite board.

The information about downloading the NXP firmware blobs was obtained
from NXP's public U-Boot sources for the i.MX processors [1].

[1] https://github.com/nxp-imx/uboot-imx

Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
---
 .../imx/variscite-dt8mcustomboard-imx8mp.rst  | 149 ++++++++++++++++++
 1 file changed, 149 insertions(+)
 create mode 100644 Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst

diff --git a/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst b/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst
new file mode 100644
index 0000000000..0e986a1086
--- /dev/null
+++ b/Documentation/boards/imx/variscite-dt8mcustomboard-imx8mp.rst
@@ -0,0 +1,149 @@
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
+* 1 to 8 GiB LPDDR4 RAM
+* 8 to 128 GiB eMMC
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
+A quick way to configure and compile Barebox for this board is by starting from
+the `imx_v8_defconfig`::
+
+   export ARCH=arm
+   export CROSS_COMPILE=/path/to/your/toolchain/bin/aarch64-v8a-linux-gnu-
+   make imx_v8_defconfig
+   make
+
+With this procedure one might need some additional firmware files in place to
+successfully build the Barebox images for all selected boards. A solution to this is
+either to copy the necessary files to the `firmware` directory or simply run
+`make menuconfig` and deselect the unwanted boards under "System Type".
+
+When the build succeeds, the Barebox image `barebox-variscite-imx8mp-dart-cb.img`
+can be found in the `images` subdirectory.
+
+Boot Configuration
+------------------
+
+The DT8MCustomBoard allows the user to choose whether to proceed with the *internal*
+or *external boot mode*. With this board, *internal boot mode* refers to booting
+from the eMMC memory, while *external boot mode* refers to booting from an SD-card.
+
+The mode is selected with switch SW7, located below the buttons on the board.
+
+Set the switch to **ON** for the BootROM to perform an *internal boot*. Otherwise
+set the switch to **OFF** to follow the *external boot* procedure.
+
+If in doubt, refer to the silk screen on the board, to select the correct switch
+position.
+
+If the BootROM cannot find a valid bootloader image in the selected source,
+it'll try several fallbacks until it finally ends in USB download mode or finds
+a valid bootloader image to load.
+
+To load an image when the board is in USB download mode the imx-usb-loader tool
+is required. To build this tool alongside the Barebox image, select it in the
+config menu under "Host Tools".
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
+Next, you insert the SD-card into the eval board and select *external boot mode* on
+switch SW7.
+
+When you power up the board, you should now see Barebox's output appearing on your
+serial console.
+
+Currently Supported Features
+----------------------------
+
+The Barebox binary configured by the `variscite_imx8mp_dart_cb_defconfig` does currently
+not support all possible features of the DT8MCustomBoard. Yet the binary does contain
+everything necessary to boot an operating system on the i.MX8MP.
+
+Some of the currently supported features:
+
+* general i.MX8MP bringup, including DRAM initialisation
+* working eMMC and SD-card support
+* serial console on UART 1 - available through the micro-USB connector on the board
+* working gigabit ethernet on the first port (labeled ETH, named `eth0` in Barebox and linux)
+* working LED and GPIO support
+
+Some functionality that is currently missing or untested:
+
+* secondary ethernet interface (labeled ETH2) will currently not work
+* secure boot (not tested)
+* framebuffer support (missing driver)
+* OP-TEE integration (not tested - early loading currently not supported by the startup code)
+* running on other hardware revisions of the DT8MCustomBoard than v3.0 (not tested)
\ No newline at end of file
-- 
2.30.2



