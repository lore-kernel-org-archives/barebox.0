Delivery-date: Fri, 16 Jan 2026 17:07:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMS-00214Q-03
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMQ-0005Xs-0q
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hnfr3JF8z2bgPU0su/Z1GHO27iF7MyvAwFHyIFAP18I=; b=SVDFj0qixrVoRxhjpFVoeg8RGX
	/npBSU5pi4Gi+zXr7m8DyZlJOnpL/NlW/pNXxtl5bFuDfG5ufCj5Y5XqLneXzCOY5o1fDUZGHpBrU
	IIh7g26QOSC3/1uEovZ8CPl7uAjH+KWME4oP64dZbEyNUQRwVIlTv0koGOq+qOMIE04I4HsaO1qUK
	XpVGqyRHHMLKnz3RDdo4iB2EUxveLF2jIVG8rV/1b0W7ukKwbRl+l2b5fFZ+eedROQXaurRJeZuQ7
	ASLwXRalAdB6v1X1GZHy2y4Gde2T/hzfVDGx1MtFVX039tQfCab0vSFh4Z+F3A5e2ElYRX0tSmohI
	680d1Now==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLo-0000000EPy2-1Wl2;
	Fri, 16 Jan 2026 16:07:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLk-0000000EPty-4AX3
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLh-0004sd-Ev; Fri, 16 Jan 2026 17:06:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:27 +0100
Message-ID: <20260116160654.3981425-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080701_021887_A942F09E 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH 04/13] kbuild: build *.mod.c with -std=gnu11
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



