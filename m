Delivery-date: Mon, 16 Feb 2026 09:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCm-002GBl-2j
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCn-0001ml-6P
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PLbiMOk50LH/nHBYJy7q4x8cLkqIr83mGbtxZQXN44s=; b=cggOk9yebBoiFmqzjOVwOPx1S4
	VG/Vu/l/u+b2HQdab8BqjRP33UbOwrw/aDIEVnL+0jS2d6nVioE7G3GgsJ/MrbiNAHsDC1tjbIdBJ
	+OxkQu3mS4t67RK3o8srY+2c1cE1Dlbxawr9vFPdr5/cLWEmCLKs6KhGXtQkJvobLPXHbN//ZwOvP
	Pml56KeSRccsTRbwxitm5Z6uEsdZ3j0rEMl9nO9G+WgZ7IMQ9sJq0Ijd7aqeW3LM/v9lCl0eOmIE3
	FH2GxUaYk729BPaXv5ZQ7Ati0Tkn369qu2gHsmEsY7feerM7bnncPPOrteIsDI2CVjhEPLFfL/Xg2
	6d/6t6og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruCQ-00000006B80-2e3U;
	Mon, 16 Feb 2026 08:43:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruCO-00000006B5j-1CLJ
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:43:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruCM-0001Ni-HQ; Mon, 16 Feb 2026 09:43:18 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruCK-0012CX-2P;
	Mon, 16 Feb 2026 09:43:18 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruCL-0000000Eswu-49Qz;
	Mon, 16 Feb 2026 09:43:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:43:15 +0100
Message-ID: <20260216084317.3547806-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004320_322878_B2E11BA1 
X-CRM114-Status: UNSURE (   6.87  )
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
Subject: [PATCH] ci: container: add qemu-efi-aarch64 for testing against EDK-II
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox as EFI payload recently regressed with the addition of PBL ELF
support, so let's add EDK-II to the container, so we can start running
tests against it in CI.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index fc1d8f5f9671..dd9347a32e81 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -42,6 +42,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 	qemu-system-mips \
 	qemu-system-x86 \
 	qemu-system-common \
+	qemu-efi-aarch64 \
 	ovmf \
 	python3 \
 	python3-crcmod \
-- 
2.47.3



