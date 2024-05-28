Delivery-date: Tue, 28 May 2024 17:40:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywB-000x8e-1f
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 17:40:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBywA-00028l-BD
	for lore@pengutronix.de; Tue, 28 May 2024 17:40:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUiMvGx0sKQ217w5BQ/hqmjjc+Lg3ennZIw97QQpMpg=; b=eKo/MeUbeWEcmu
	wVc01Qtd9R9hM/XoAkotOBWcqfGrjjQPR6Ri4xXVO3MgMG+qrWF3d55Wnfjy9i31J7NaPY/uj1RDE
	OE8x1uFCDUDOOi0wtFFPvhgyILrY/qGHyZs1Ji+QvSB0s9iFwT4Xla+iLz5EA+sUQnS5gg7JrFFy1
	K8VeT2TepfI+Idoq0M00l+HmSCJFXV1N1VWl0I3iq8k4P1NwmFwDuzVVSp8JNG5W33pDwFJfngFCl
	I5r9A6AkcMRZBVRdbaqNSGa+J3Sjyf0fjHjnXUYImYlS9z7tXwBujovlN1u/CHZAvVAssSKQAheWO
	gFr5/cU5cjoEWqiXtGYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvh-00000001H4D-3z1g;
	Tue, 28 May 2024 15:40:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sByvX-00000001GyP-1uX9
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 15:39:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvT-0001ft-AK; Tue, 28 May 2024 17:39:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-003LXa-KC; Tue, 28 May 2024 17:39:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sByvS-00BFIe-1f;
	Tue, 28 May 2024 17:39:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 28 May 2024 17:39:19 +0200
Message-Id: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKf6VWYC/x3MQQrCMBAF0KuUWTuQBqPBq4iLIf3RWaSWmVqE0
 rsbXL7N28lhCqfbsJNhU9f33DGeBiovmZ9gnbophngOKWaukPVj4NYKF51YnBcxaVhhzpecxpR
 rLSFeqR+Loer3/98fx/ED4dcvgG8AAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_083951_665078_5E68E9C3 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/9] mci: core: add CID as parameters and fix parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the fields of the CID register found in MMC and SD
cards as parameters to the device. The intention is to use these
parameters in scripting e.g. for safety checks before applying
potentially destructive changes.

During the implementation I found several bugs in the implementation of
the CID parsing that usually stem from not discerning between MMC and
SD cards.

For a proof of work I have attached these outputs of both an internal
eMMC and SD card on an Phyboard Polis imx8mm device. The first output is
mmc-utils and the second barebox at the state of this patch series:

eMMC:

root@phyboard-polis-imx8mm-4:~ mmc cid read /sys/class/block/mmcblk2/device -v
======MMC/CID======
        MID: 0x13 (Micron)
        CBX: 0x1 (BGA)
        OID: 0x4e
        PNM: Q2J55L
        PRV: 0x10 (1.0)
        PSN: 0x13723b3f
        MDT: 0x93 2000 oct <-- This is likely a bug in mmc-utils
        CRC: 0x00

barebox@PHYTEC phyBOARD-Polis-i.MX8MM RDK: devinfo mmc2
Card information:
<snip>
  Manufacturer ID: 0x13
  OEM/Application ID: 0x4E
  CBX: 1
  Product name: 'Q2J55L'
  Product revision: 1.0
  Serial no: 326253375
  Manufacturing date: 2022.3
</snip>
Parameters:
<snip>
  cid_cbx: 1 (type: uint32)
  cid_mdt: 2022.3 (type: string)
  cid_mid: 0x13 (type: uint32)
  cid_oid: 0x4E (type: string)
  cid_pnm: Q2J55L (type: string)
  cid_prv: 1.0 (type: string)
  cid_psn: 326253375 (type: uint32)
</snip>

SD card:

root@phyboard-polis-imx8mm-4:~ mmc cid read /sys/class/block/mmcblk1/device -v
======SD/CID======
        MID: 0x63 (Unlisted)
        OID: C`
        PNM: CACTU
        PRV: 0x02 (0.2)
        PSN: 0x583010d2
        MDT: 0x158 2021 sep
        CRC: 0x00

barebox@PHYTEC phyBOARD-Polis-i.MX8MM RDK:/ devinfo mmc1
Card information:
<snip>
  Manufacturer ID: 0x63
  OEM/Application ID: C`
  Product name: 'CACTU'
  Product revision: 0.2
  Serial no: 2139062282
  Manufacturing date: 2021.8
</snip>
Parameters:
<snip>
  cid_mdt: 2021.8 (type: string)
  cid_mid: 0x63 (type: uint32)
  cid_oid: C` (type: string)
  cid_pnm: CACTU (type: string)
  cid_prv: 0.2 (type: string)
  cid_psn: 2139062282 (type: uint32)
</snip>

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (9):
      mci: core: rename mtd to mdt
      mci: core: add cbx extraction function
      mci: core: add product name extraction function
      mci: core: add manufacturing date extraction function
      mci: core: parse cid into parameters
      mci: core: fix extract_prv and write to string buffer
      mci: core: add CBX field as parameter and print it
      mci: core: fix extract_oid and write to string buffer
      mci: core: add missing slice range for extract_psn function

 drivers/mci/mci-core.c | 119 ++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 98 insertions(+), 21 deletions(-)
---
base-commit: 80d7c9d3d80e75e2335a123d414fd7fe83508291
change-id: 20240528-feature-mmc-cid-as-parameters-685158ffc027

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



