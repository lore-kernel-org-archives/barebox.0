Delivery-date: Tue, 11 Jun 2024 08:58:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSE-0046xe-23
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSE-0005TS-23
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=saC6fbUZUGHPUULkRBVxybObXOK5QRC37oLmrVStALA=; b=luhgFcrH5QwXWo6+RQxrJJwWkl
	2x9JqD8nm58QhKW7j9c533YWURpbe2bSMKQCUWgUnEfYlfPHMwh28/iapJHR5nlhWVcNvqb79Uy2Q
	pjui2Czsz7qujdCfcMgakxB5BRmszOf1tf/YqnUjeACuxRzyJVIzKoeKus2AW3UfTAFZrhRKzk/EJ
	r4pVzN1JetDrJXv6xPpqFQkCFanfbVmwjuqFuP3yhlHorFocV5TDQD+O234N2psyNd8NJi2NHHFYr
	rS76zWtzoFZsFNje1k2u0dnHQT6ZqlevEIafrR3YJMxHXDzY7gmTH7JLqcwNUu8NZfFnFkIvnG89F
	FoU2hNkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRd-00000007mDu-3YZe;
	Tue, 11 Jun 2024 06:57:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRZ-00000007mBk-37hM
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-0005Jy-Po; Tue, 11 Jun 2024 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-001U8V-DV; Tue, 11 Jun 2024 08:57:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-00CAKW-14;
	Tue, 11 Jun 2024 08:57:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:57:15 +0200
Message-Id: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235721_906335_925C6127 
X-CRM114-Status: UNSURE (   7.38  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] efi: hide EFI related symbols when !EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In order not to clutter configs, we should hide symbols that are EFI
related when CONFIG_EFI is disabled, especially as we are going to add
more options with the loader support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/efi/Kconfig b/efi/Kconfig
index 3bda02600c94..dfe4d7327084 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -23,6 +23,8 @@ config EFI
 config HAVE_EFI_STUB
 	bool
 
+if EFI
+
 config EFI_STUB
 	def_bool EFI_PAYLOAD
 	depends on HAVE_EFI_STUB
@@ -45,4 +47,6 @@ config EFI_PAYLOAD_DEFAULT_PATH
 	default "EFI/BOOT/BOOTRISCV64.EFI"	if ARCH_RV64I
 	default "EFI/BOOT/BAREBOX.EFI"
 
+endif
+
 endmenu
-- 
2.39.2



