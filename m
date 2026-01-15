Delivery-date: Thu, 15 Jan 2026 13:00:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1O-001a5d-2l
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:00:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1N-0000sM-Q4
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:00:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hnfr3JF8z2bgPU0su/Z1GHO27iF7MyvAwFHyIFAP18I=; b=I0xhQGtD0vruuiXEdZltvgwPMR
	MegrRrIDAEkbk3wsBCs2P9Fxfq0aWcfENIhAe6Xa69iyya0ps3kCwe+jkA+PWFiWi0j2hGCKnlhOk
	kg4AKOJ0shFoUFQZMMb9wLFuAM8b21kUmu6bHef76PPclBVFNxn89Jt7dqi05slQfm9mOpJnURTSt
	3TSIz7pDPniHDBmOF7nrkv8cSRJL3iiDNZroBusCy5G0ceTTOL5ngZ+0m/70m4TrxzG3745VsobAH
	h6KQYFKxBv6FXDlCUf+gGA5X9oDn6G7z6ZRQM1EJsG6/7AoBgj/rcZBjl+bZ1xL+FE0aENmyOWBhj
	07SqvMYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0m-0000000CHIc-20QM;
	Thu, 15 Jan 2026 11:59:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0g-0000000CHD6-368G
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 11:59:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM0d-0000JD-RF; Thu, 15 Jan 2026 12:59:27 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 12:54:29 +0100
Message-ID: <20260115115924.3428886-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115115924.3428886-1-a.fatoum@barebox.org>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_035930_771838_1F8E19E1 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/12] kbuild: build *.mod.c with -std=gnu11
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The *.mod.c files are generated C files built as part of the module
build. They didn't have a -std= set so far, so newer toolchains, module
build failed, because true/false became keyworks in -std=c23.

Add an explicit -std=gnu11 to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e3127ed2cb37..1a5f21b66ebb 100644
--- a/Makefile
+++ b/Makefile
@@ -468,7 +468,7 @@ PYTEST		= $(if $(shell command -v labgrid-pytest 2>/dev/null),labgrid-pytest,pyt
 CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
 CFLAGS_KERNEL	=
 AFLAGS_KERNEL	=
-CFLAGS_MODULE	= -fshort-wchar
+CFLAGS_MODULE	= -fshort-wchar -std=gnu11
 AFLAGS_MODULE	=
 
 LDFLAGS_MODULE  = -T common/module.lds
-- 
2.47.3



