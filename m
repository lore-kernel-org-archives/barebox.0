Delivery-date: Sat, 13 Dec 2025 11:43:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUN5e-00B04q-2d
	for lore@lore.pengutronix.de;
	Sat, 13 Dec 2025 11:43:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUN5e-00031r-9j
	for lore@pengutronix.de; Sat, 13 Dec 2025 11:43:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnfO9wLMN/xOQaxOBav6W6ufYBrumgnwaC/yYMXIkk8=; b=MZv147OjkZDwU1JeX3ixhE47Nu
	HQB2u6b4CoQP6lNhzpKsuP+Bla8BWyYmrB5+jpHYjEOOGOfnUKpC8y7KtGowSWZmXDAknS3IaKYms
	OFlfSsvtzTQri+RfjZfyJjPcQCYt2r8X/GbIlbRnH0NO88Lp5I3GkiKJ4vi/+n9py6i8u/pzbR+/s
	kmNQNB/azqJQDrfdmUGouaFhJ/5z9DQtdQQW1dZKRLIzrXXtmN+eMetJurup5i20K1aVOQcMA6PnS
	y6tkDoV09XVNmhyJ0buYHkTuC3hmFad3GlIp9FP7Vhbt9pPqCcI/6pu4i+O41GWRTecdJP0kSDp4w
	T9cDYP5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUN4s-00000001au1-1K6w;
	Sat, 13 Dec 2025 10:42:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUN4o-00000001atS-0Ce5
	for barebox@lists.infradead.org;
	Sat, 13 Dec 2025 10:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vUN4l-0002wm-U2; Sat, 13 Dec 2025 11:42:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vUN4l-005RZM-2O;
	Sat, 13 Dec 2025 11:42:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vUN4l-0000000DFk0-2hAy;
	Sat, 13 Dec 2025 11:42:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 13 Dec 2025 11:42:09 +0100
Message-ID: <20251213104210.3157504-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251213_024214_090483_13D8D9C5 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! efi: payload: restructure Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: payload: reinstate lost EFI_STUB option

This one was lost while moving stuff across files.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 01f54ee7cf10..a5496ab766ad 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -32,3 +32,6 @@ config EFI_HANDOVER_PROTOCOL
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
 	default !X86
+
+config EFI_STUB
+       def_bool HAVE_EFI_STUB
-- 
2.47.3



