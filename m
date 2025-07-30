Delivery-date: Wed, 30 Jul 2025 07:59:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqd-005AUU-0I
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 07:59:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqc-0003Gj-GM
	for lore@pengutronix.de; Wed, 30 Jul 2025 07:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nPT1PF3OtO35+0f0Ryfw3Q9DaS4GpnH2h8hN7Ltwxxc=; b=mcTgIgFZ8qjriUyz60XtazM/AE
	A+eOCSvNuQhppUKJM/OzO//98hMNVm9/SqTvaJ+3UznExzqRkckBtxLSl1JUgtArUleBaj0ANLlFe
	nndHcxju1xhaTFhrvr4swnDrCR52GR2U4DdfEuQOAkZU0v8tiBslTa6+z0HVQRFuljbJax3ZnvfgS
	1/jMU2AKsxJCavAEZ5wbyLdlGtSOMzy0rAeYdlt2sugLYy++uJaoyQvXn75jeWeOtJ4BZ8m6cE4z/
	eNJCVPtDcxs/+JdlNOga6GVoDQv8Sf5UIQ4wsKrjOH/BA7Y3NsJSPEZlnxW2EXZxMk47WSzreN96y
	mV1V3eLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzq0-00000000kvt-2LJo;
	Wed, 30 Jul 2025 05:58:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzoy-00000000kgo-2bAH
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 05:57:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ugzou-0002zI-OU; Wed, 30 Jul 2025 07:57:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 30 Jul 2025 07:57:40 +0200
Message-Id: <20250730055743.922932-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_225748_662491_4307BA9B 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] scripts: Makefile.pic: define __NO_FORTIFY without value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default for -D without = is to define the symbol to expand to 1.
This is nt what we want, because pbl/string.c defines it without value
leading to a build error. Fix this by defining it empty explicitly
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/Makefile.pic | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.pic b/scripts/Makefile.pic
index a08ee67f4a3e..0cefe350b39e 100644
--- a/scripts/Makefile.pic
+++ b/scripts/Makefile.pic
@@ -13,7 +13,7 @@ picflags-$(CONFIG_ARM64)	:= -fpie
 
 picflags-y			+= -include $(srctree)/include/linux/hidden.h \
 				   -D__fully_pic__ \
-				   -D__NO_FORTIFY \
+				   -D__NO_FORTIFY="" \
 				   -ffreestanding \
 				   -fno-stack-protector \
 				   $(call cc-option,-fno-addrsig) \
-- 
2.39.5



