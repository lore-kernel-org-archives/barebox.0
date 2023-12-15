Delivery-date: Fri, 15 Dec 2023 14:45:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8V9-003e2U-2M
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 14:45:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8VA-0000TI-0x
	for lore@pengutronix.de; Fri, 15 Dec 2023 14:45:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xaAJ9Kvp0zTdiEce4cgrDYZXFQiTXIKvNyP4cI8eNgU=; b=xWcSA3jkJ+iRg1hVGzp5gybfgr
	Vx6NUdc2mRHC/eccvzh0aAu7C3aNMDKtmsI1qrZlS8zei2GJojWkYsGPzJo/aKI7Wl27gO/J9aHkB
	Dbq8VV60Ee89Bo85TfyNxDFXXmKa8XlI2ZkembmhtguJiPd6QslJFOJoSBFs/NO1xBPYGUcN40wPh
	osnnCLTNAS229g69SS+ZnbPw/+6yKPfT7k6wpE30LdaO7HweOC9bQ16dsBHxkBPhFALRkxwJX2NPn
	QDazBUGeyMxQGGWitl3xlaLh/AnWY43szRenP9E7uJP7rbwRfPaxJV+o0nz6DeoftGOT3a6z3y6dH
	0nZZjAjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8Tv-003PUI-2k;
	Fri, 15 Dec 2023 13:43:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8Ts-003PT7-2C
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 13:43:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00009k-IN; Fri, 15 Dec 2023 14:43:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00G2Xt-5b; Fri, 15 Dec 2023 14:43:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-000Uur-0R;
	Fri, 15 Dec 2023 14:43:54 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 15 Dec 2023 14:43:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231215-doc-fit-images-for-chainloading-v2-1-2fa359eee535@pengutronix.de>
References: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_054356_719014_E645554A 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] doc: user: barebox: bootz instead of bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox-dt-2nd.img is in the `zImage` format, therefore use the proper
command for booting on 32-bit platforms.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 80f0f96a98..f4e600bde0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -212,7 +212,7 @@ like a Linux kernel that is passed an external device tree. For example:
 
   U-Boot: tftp $kernel_addr barebox-dt-2nd.img
   U-Boot: tftp $fdt_addr my-board.dtb
-  U-Boot: bootm $kernel_addr - $fdt_addr # On 32-bit ARM
+  U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
   U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
 
 For non-DT enabled-bootloaders or other architectures, often the normal barebox

-- 
2.39.2



