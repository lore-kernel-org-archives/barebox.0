Delivery-date: Mon, 23 Jan 2023 09:36:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsJk-002w4f-Sn
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 09:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsJi-0001MW-Pc
	for lore@pengutronix.de; Mon, 23 Jan 2023 09:36:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5T0EKErvylqFyOYoUJJuSZIVpBd6RhL7a5wLRB+Ja2k=; b=GcFg2c8VMiF/F3NGTOy3b5lg2x
	UnlxF8LUgulLuqS21QIT29ap9JZc/hF7L5l6emfbGFIC7ipVeV3BbGv+0wFJc3eLWFtMDaLWLfNIw
	d/J6si+qsRVFY3JVUR0WlAzyvytpB8s5PmxM3v71iEeQnKpTBEKMQh+BiaqeGulfr8oPGGlChu4pK
	Ohy58fL3koxxIwdrikYwtYxBRley2CZevAaNQDe87OzD2rjMtWCE/MXIu1uvAIWHmtPX/zVwZGyeV
	mMIEUmf8kYx9Bs3JBj5OgbwJrMismxXyaViYjlqqejtJeGgucJSMFKXL9rhrqFnVa54h3gfT/TDpD
	JC9x0QgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsIV-00GN4o-Pq; Mon, 23 Jan 2023 08:35:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsIN-00GN2L-ER
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 08:35:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJsIM-0000vS-45; Mon, 23 Jan 2023 09:35:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pJsIL-0080LL-Gx; Mon, 23 Jan 2023 09:35:13 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pJsIK-0049zg-5P; Mon, 23 Jan 2023 09:35:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 23 Jan 2023 09:35:09 +0100
Message-Id: <20230123083511.991626-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_003515_621317_A7571390 
X-CRM114-Status: GOOD (  10.66  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] Documentation: Rockchip: Update documentation to latest binaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream rkbin repository has been updated, update the paths in the
documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/rockchip.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index d4f8a9c5a3..0e8738bbf1 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -73,9 +73,9 @@ The build process needs three binary files which have to be copied from the
 
 .. code-block:: sh
 
-  cp $RKBIN/bin/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
-  cp $RKBIN/bin/rk35/rk3568_bl32_v1.05.bin firmware/rk3568-op-tee.bin
-  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.08.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
+  cp $RKBIN/bin/rk35/rk3568_bl31_v1.34.elf firmware/rk3568-bl31.bin
+  cp $RKBIN/bin/rk35/rk3568_bl32_v2.08.bin firmware/rk3568-op-tee.bin
+  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.13.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
 
 With these barebox can be compiled as:
 
-- 
2.30.2



