Delivery-date: Fri, 22 Mar 2024 15:25:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnfpo-00HaoJ-1A
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 15:25:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnfpn-0003rf-Mo
	for lore@pengutronix.de; Fri, 22 Mar 2024 15:25:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ett4oyza8ynjo0B+uVgWu4+y0Ed9CvBdcR1nhlGafbA=; b=bnWzgW0hU7oZp7
	RvUb4yKpTdSUq8KJZ27nhDiTh7dd7YJztOCMcjFRnSvFgkD0Fe6lO9V42ZjuJmR5zLetIlzDL5Zc7
	6T+4hn/KHYCkfEpJFWYeB6FhCbdGkEikVCXVQyO8puUBJFQ73+Qw6/sr4zUvyiYf2eoxHcw17TBy9
	H/IRBqex3lldmosGtMCE5jL+4qTn8LnUqnGAF17LQixRxiwRB+H79BeaOl5f2k7q5+1Q74uqX/o2j
	vAEg035YbH8KGf3c1lD8E51bvV/ErBN7eykh0OgDlMx2tcONv2IrTtmG1x1st9axebXTGNZK7MnW8
	eXjHiHx+6/dSwaJQFI+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfpL-00000007WgM-0Lq9;
	Fri, 22 Mar 2024 14:24:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfp6-00000007Wfc-2S5u
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 14:24:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfp5-0003eb-8Y; Fri, 22 Mar 2024 15:24:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfp4-007rTX-SQ; Fri, 22 Mar 2024 15:24:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfp4-0047UP-2Z;
	Fri, 22 Mar 2024 15:24:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 15:24:41 +0100
Message-Id: <20240322142441.982089-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_072444_660830_CD80A24B 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: riscv: bring BeagleV Starlight docs up-to-date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The BeagleV Starlight hasn't exited the Beta phase and the BeagleV name
is now associated with the BeagleV-Ahead, which used a different SoC.

Note this in the section title and also adjust the build instruction to
make them reproducible in 2024:

  - Given that the board is discontinued, it's not worthwhile to move
    away from the vendor's OpenSBI fork, so pin the revision that was
    used for initial bring-up

  - fence.i is no longer part of the default -march=rv64imafdc in
    recent toolchains, therefore add it explicitly into the ISA string.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/riscv.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 92f663cfb9e6..ade1443c9704 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -60,8 +60,8 @@ into the config file.
 
 See https://barebox.org/jsbarebox/?graphic=1 for a live example.
 
-BeagleV
--------
+BeagleV Starlight
+-----------------
 
 barebox has second-stage support for the BeagleV Starlight::
 
@@ -73,11 +73,12 @@ to opensbi::
 
   git clone https://github.com/starfive-tech/opensbi
   cd opensbi
+  git checkout 2524b0ecd8684b42bc7a4c69794f40f11cbbe2a5
   export ARCH=riscv
   export PLATFORM=starfive/vic7100
   export FW_PAYLOAD_PATH=$BAREBOX/build/images/barebox-beaglev-starlight.img
 
-  make ARCH=riscv
+  make PLATFORM_RISCV_ISA=rv64imafdc_zifencei
   ./fsz.sh ./build/platform/starfive/vic7100/firmware/fw_payload.bin fw_payload.bin.out
   ls -l $OPENSBI/build/platform/starfive/vic7100/firmware/fw_payload.bin.out
 
-- 
2.39.2



