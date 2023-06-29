Delivery-date: Thu, 29 Jun 2023 08:55:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElYf-00879Z-K3
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 08:55:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElYc-0003UT-Sc
	for lore@pengutronix.de; Thu, 29 Jun 2023 08:55:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sTPA6tcHMB9yc0BEM3iINKxEw+8SgxSyh4Ryym3STss=; b=KfdwCkVxt3yrUKeKj5ntXRHaos
	PnaUbq9q8GsTSRfvQ+G2Pw1zKalMukH/gO48/F2kd4L0ArplstMJc6g8b5vY215AUVnix+m214EZH
	Qq0v7xBhAEmF+bnTlXuk/vIeJexUOan2efDK3/SvH4q+OXRy41it1sHLrYM7L1PsTsvUb4t9r0NIT
	owbxpceIPINcjSfLPUbIxCmI+6Yd6VhKvUw5F/gyFQd0J3Bj3z500homIb/6bSfz7cLjAgBrxrp3t
	SLtPNzPEa1OuGnug1ZN9lxY5VOhjI7sHoS359R8TAkErXEpz48HuiplFZu/mydb+aZpThNqlNyOdA
	N+uUFQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qElXY-0009M5-2E;
	Thu, 29 Jun 2023 06:54:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qElXV-0009Ko-2P
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 06:54:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXU-0003Kq-HJ; Thu, 29 Jun 2023 08:54:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXT-00Aq5k-Sb; Thu, 29 Jun 2023 08:53:59 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXT-004hEc-1a;
	Thu, 29 Jun 2023 08:53:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Jun 2023 08:53:56 +0200
Message-Id: <20230629065356.1119480-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230629065356.1119480-1-a.fatoum@pengutronix.de>
References: <20230629065356.1119480-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_235401_783411_6CC11EFB 
X-CRM114-Status: UNSURE (   8.28  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] ci: pytest: have CI build and test ARCH=openrisc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already build test for OpenRISC and with latest fix, we can run
the testsuite against it in emulation, so add it to pytest CI as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Tested working with QEMU 5.2.0 which we have in barebox-ci container.
QEMU 8.0.0 as shipped by NixOS doesn't work.

v1 -> v2:
  - new patch
---
 .github/workflows/test-labgrid-pytest.yml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 0f34f43e8dff..514122ebf886 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -31,6 +31,10 @@ jobs:
             lgenv: test/mips/qemu-malta64el_defconfig.yaml
             defconfig: qemu-malta64el_defconfig
 
+          - ARCH: openrisc
+            lgenv: test/openrisc/generic_defconfig.yaml
+            defconfig: generic_defconfig
+
           - ARCH: x86
             lgenv: test/x86/efi_defconfig.yaml
             defconfig: efi_defconfig
-- 
2.39.2



