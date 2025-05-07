Delivery-date: Wed, 07 May 2025 11:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3m-0035Uv-32
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3l-0006JR-H5
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLDkqC+IwCAEOxDvQoja8JFWyI+zDBbuPcFSBpak0pA=; b=u+VrO5Nb+AT2bzvTKhJJwidOrn
	TFSu3cIqORRTVpEvkIs/NhcjrLZmJRufh0LRJzNMBvy1KArmbVY8B3EP/E/DPXki8sIU1yBYBQKoQ
	ncXXtkdKK3Xcl/TBLZ7O+QXEpqd1uwuNUXcDNLtuJPScLjf+P5fXTy8j7fCirkWx+86mk7HJZ2SVE
	3l17ueEjTvdMgCS5XygWQFJ1tLks18VGquJBGqT5Q8LzH+u0QStlVmEo3kN/yaMaGEWsXRbeKDI5N
	iMQ73TvkQdasY8ok56j25UPM1jt1JD8+tus7hwxFkZ+U7UN5aJwR1ZjZyWyXnUwpsgiD003ZvNmRi
	Jplv/oEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3I-0000000Ewvu-2aEQ;
	Wed, 07 May 2025 09:26:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFO-0000000ElqV-0lGg
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NLDkqC+IwCAEOxDvQoja8JFWyI+zDBbuPcFSBpak0pA=; b=PvPDePwIxLIm8D4zZihwBNonK3
	Y4UeCqR1fCtJ3c8zVGSnmUIWuitojYqqzKx1zTbwzS6qwbf7w+4bJMG67xSSHV9lu1+UQJDhMMPJf
	cU3jDdzPEEb4mqYlaG0Van5QKMMOWtor8TNxw/4l2gs5IQAPlnek2s4ULzLUcrGx8J9LMVv+dJ+0O
	GxkSfb4WMR5RaURDHkVOFzE887oNtXy/L2lB6GVESBX9tDv2Urfk+ezr3CJM6ejkH+2dJ0spaT5NE
	mjprwbXVz1QvXSnrwEBlm1GPWbIlEED8/oMbJRq/lgYl/SIgYkYKnDW+lfp96tJSxi1Q5bovXh309
	hPR46BlA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFF-0000000FoIk-3trs
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003wv-2Z; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF8-001WuD-2s;
	Wed, 07 May 2025 10:35:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1s;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:00 +0200
Message-Id: <20250507082209.3289972-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093514_266394_F1EA7EC7 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 21/30] mci: sdhci: move SDHCI_MAKE_BLKSZ definition to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is going to be used outside of sdhci.c, so move it into the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 1 -
 drivers/mci/sdhci.h | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index b86b3f3d8d1c..3051354a3076 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -10,7 +10,6 @@
 #include "sdhci.h"
 
 #define MAX_TUNING_LOOP 40
-#define  SDHCI_MAKE_BLKSZ(dma, blksz) (((dma & 0x7) << 12) | (blksz & 0xFFF))
 
 enum sdhci_reset_reason {
 	SDHCI_RESET_FOR_INIT,
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 31edebab1262..e0436425fbda 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -25,6 +25,7 @@
 #define  SDHCI_DEFAULT_BOUNDARY_ARG		SDHCI_DMA_BOUNDARY_512K
 #define  SDHCI_TRANSFER_BLOCK_SIZE(x)		((x) & 0xfff)
 #define SDHCI_BLOCK_COUNT					0x06
+#define  SDHCI_MAKE_BLKSZ(dma, blksz) (((dma & 0x7) << 12) | (blksz & 0xFFF))
 #define SDHCI_ARGUMENT						0x08
 #define SDHCI_TRANSFER_MODE__COMMAND				0x0c
 #define SDHCI_TRANSFER_MODE					0x0c
-- 
2.39.5



