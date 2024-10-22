Delivery-date: Tue, 22 Oct 2024 10:06:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39uU-007NvM-0T
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:06:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39uT-0008Vb-Im
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:06:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8xd7lWww4C1hJXFDybuztFg4bYltDBYuSvxUPynCYI=; b=tBrdPp+87laeP4oyTxEFsvL5n+
	JYsvMu7j1isbkXUhanATdJtXbog2ct8KNbQpbiJ2/rBJQut9Rd7H52mzJNkPvZNYVwQApPqUdAQS0
	2xdxtadH7/T9IbDJCaAvZxduOjhyGSfPOY7oPQi7ar9JERwfG1r4G+k+hNe58PnX2LUt6HEf4aRAr
	E1qk+QSwrfyiWme0U+JLwIC9I3ooTHcrXzx2T2Gwbhf+nlf6E01oaycqRgnotu044pq+FiARxnvRD
	mIVU9yjuNX8rZgjoTXrsMVJEMwt57ABjHFD/zLordwjiW0feqgBOZd+/JBWcAbyms8MBXO06LbutV
	8byJ/hjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39tx-0000000A6M7-2r2e;
	Tue, 22 Oct 2024 08:06:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39sS-0000000A64M-1LoO
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:05:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39sQ-0008Hq-J3; Tue, 22 Oct 2024 10:04:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39sQ-000pR6-1F;
	Tue, 22 Oct 2024 10:04:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t39az-00BzDi-2z;
	Tue, 22 Oct 2024 09:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Oct 2024 09:46:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-arm-layerscape-tfa-v2-12-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729583185; l=1325;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=seBS1Si2hIgVHVaiOMoRV9Fi72SSB6LiQk6INjroBH8=;
 b=3qgM86rodG7oD9iQtIcMIvFaW7il5g7EOr1s6jJC0LWWQ8dlYDiWb9dceazVeHa4ZDKQPllaq
 G3I1EduAuJUBhQqfAtS0YlAp+rIBUw+FeXkk+issIWnJRYifvL0CR7J
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_010428_396755_AAB8D441 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/12] ARM: Layerscape: Update Documentation for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/layerscape.rst | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/layerscape.rst b/Documentation/boards/layerscape.rst
index ae089539e5..5791b86326 100644
--- a/Documentation/boards/layerscape.rst
+++ b/Documentation/boards/layerscape.rst
@@ -37,13 +37,22 @@ Flashing to the eMMC is possible likewise::
   In such a case, using eMMC and SD-Card at the same time is not possible.
   Boot from QSPI to flash the eMMC.
 
+Get and Build the Trusted Firmware A
+------------------------------------
+
+Get TF-A from https://github.com/ARM-software/arm-trusted-firmware.git and build with::
+
+  make PLAT=ls1046ardb
+  cp build/ls1046ardb/release/bl31.bin ${barebox_srctree}/firmware/ls1046a-bl31.bin
+
+Although the binary is for a specific board (LS1046A-RDB) it should work on any other
+board as well.
+
 Firmware Blobs
 --------------
 
 Network: `fsl_fman_ucode_ls1046_r1.0_106_4_18.bin <https://github.com/NXP/qoriq-fm-ucode/raw/integration/fsl_fman_ucode_ls1046_r1.0_106_4_18.bin>`_.
 
-PSCI Firmware: `ppa-ls1046a.bin <https://github.com/NXP/qoriq-ppa-binary/raw/integration/soc-ls1046/ppa.itb>`_.
-
 Layerscape boards
 -----------------
 

-- 
2.39.5



