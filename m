Delivery-date: Sat, 01 Mar 2025 17:37:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqF-008Ylj-0d
	for lore@lore.pengutronix.de;
	Sat, 01 Mar 2025 17:37:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqE-0005Fw-2W
	for lore@pengutronix.de; Sat, 01 Mar 2025 17:37:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MEM01P8v6xUtTHkGnhwsVlhDJfy+C2gNcd/jBltW/mA=; b=12Du1IWfYMLuHHkHu5E6tNYlaD
	g+yI37Xgla4+YxBdcW8KgTE6VSigWi86Gjf/S0eRHO1HiywWasbe/kCduz31jaD1pG2E1SzNrFYnD
	NRIKEqV8G5W1UcDzYj1cOtUn65jXTbFzaTjmbNPUKumW5VSrzdOEHCW2fZzeeZfh+2fNpuOPdTHlr
	6AaDduB+TtQvUkk4uKchw3uSVGrqd6dHFh1j1GdeSt7CbHW9bV6mEqKPgUyj10BOfmB2uRl2DPNE4
	6GBxxZUhP76wdkhTtiYec2/ZvuAxv11ViwAP7YCPIcMRZsIHVZ9YCmgHFiIJY/e6ORcwdwmIvxgO3
	xGylKr8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpW-0000000EdEh-21t3;
	Sat, 01 Mar 2025 16:36:46 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpS-0000000EdCF-0ve7
	for barebox@lists.infradead.org;
	Sat, 01 Mar 2025 16:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1740846997;
	bh=k8yZllnxhw2IfEBxUoG8PMLU3m9drehZSiX5HFhQEBo=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=hOrm6d/XerVW4HdOuJ8EbAId6zUKvWgi6HVuQ2MI7RBHgtnb9Wb5JrBiTc2+Oo5z3
	 0B6a9x5lqkWgaPywAyX1P4mOi6RhQ1U0cEbcDzkgoxeyimNIbakvDOx+lmn+oKTyAG
	 0xSK86SYdJAOep1tXvTd4rzNUtFBFl+HYUyNsogwPJd5Xfbt2pblLLopEEZMn/BrCl
	 fcFv5vx1Su9bg8mKh+jkA71V99W3qlTpIVtiR3a9vbCJyd3wesrbcijxfjVY9hzR2M
	 kpwsgdhwoUvcG4sDDVDm6ihfYM115Kngoh2Ay5gL/SdmVQy/In5ubm3mDIZC89ArXf
	 rl1GJ6h7msWxw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 6084EFAD47E; Sat,  1 Mar 2025 17:36:37 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat,  1 Mar 2025 17:36:18 +0100
Message-ID: <173fcf6bbf3536d13242d4bcb06cea9ef94f1cf9.1740846737.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1144; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=k8yZllnxhw2IfEBxUoG8PMLU3m9drehZSiX5HFhQEBo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnwzeDAgOKBRDyB7bTGZAo9AN4uaiJ1e9GICZZO L9woaDaTsyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ8M3gwAKCRCPgPtYfRL+ TkvJCACZxT4P5SBmGHb4jb43dN5KqOw60H1L8rjE7u1RbjB8wUmo6K0zSw3Nw0kG06ZDBbR7FRq roxjPgpaAyoyA9C/qshTwDYSq8gGEi2XUP/kFzHRvCgP9gTkovMFinZjFGXp9keyJ7BjOuEnBRD SmGarPVqHS5iiZBFNB0S0fA/38xW5NzP5NGbAtYC664l7BrKSn2gAKKG39vlDL4LDR4ebpIkSHH PZbmImPsgycJgy+uuUfF8VFJvJHFFRSkAK3vIdZ93lydxdwgc1ixew1pvuvJ7V08eYeumslTMWc zZSXOEB8AjQyfuk0YuHI7kjf+ESSYOdJnLC1TwIPKXm+pFw8
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_083642_403448_EF3A9D28 
X-CRM114-Status: UNSURE (   8.37  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] Documentation: rockchip: Update versions of DDR init blobs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update file names as they are currently available
https://github.com/rockchip-linux/rkbin as of today.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 Documentation/boards/rockchip.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index b94c7a78e115..b2b04abb03cd 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -75,9 +75,9 @@ The build process needs three binary files which have to be copied from the
 
 .. code-block:: sh
 
-  cp $RKBIN/bin/rk35/rk3568_bl31_v1.34.elf firmware/rk3568-bl31.bin
-  cp $RKBIN/bin/rk35/rk3568_bl32_v2.08.bin firmware/rk3568-bl32.bin
-  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.13.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
+  cp $RKBIN/bin/rk35/rk3568_bl31_v1.44.elf firmware/rk3568-bl31.bin
+  cp $RKBIN/bin/rk35/rk3568_bl32_v2.15.bin firmware/rk3568-bl32.bin
+  cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.23.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
 
 With these barebox can be compiled as:
 
-- 
2.47.1



