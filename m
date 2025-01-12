Delivery-date: Sun, 12 Jan 2025 09:39:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVc-0007k9-19
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:39:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVb-0007fF-Pw
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:39:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=otOct5ZFQ+dnpktIcvOuqjxtzvtZCzJkxmb5sUdy+U0=; b=yHzlztehFZlbiAnoypKKQOn5dS
	+Dapu887B58pbq5pfP7ZYHNKiHjUZF/rB2QMIIr6uiYrXclYiY4mm0NN+Ny8Zk636Ph+2EBA8O0At
	00lFuf/4KyfSmTPS7p95p5/fJ9TE/1oT/4HMLHSOrbnwUPRJa+yUH6y1rpBryVB9az0H9B+U8QXTB
	5D5llW3axgtqPg9Xj1pP3kWNULg6bI1zG9Nn0LHsciqFh/MfuBKJ6gsIAUmJgSF6Da02UVzK8Rqbx
	lZYol9a5FxgOwer5Hto+usoaRGI/66Wvpmd9RwExwTE6s0SLHIOMRqMREmWetmuTeVYnM2X9TgEVu
	ZUpZkM/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtVA-00000002Lnc-1u7N;
	Sun, 12 Jan 2025 08:39:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtV8-00000002LmN-2t3t
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:39:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV7-0007UY-Cv; Sun, 12 Jan 2025 09:39:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV6-0003P7-2F;
	Sun, 12 Jan 2025 09:39:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-2l;
	Sun, 12 Jan 2025 09:34:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:32 +0100
Message-Id: <20250112083432.320215-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003918_736583_02E2B1D6 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/13] ci: container: add python3-libfdt dependency for barebox.fit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox FIT image isn't created by mkimage, but by a python script
by means of libfdt. Add the libfdt dependency to the conainer, so we can
in the future add a test that checks that barebox can chainload itself
from that image.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index 1c4932f56a64..5aa04f7f4976 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -44,6 +44,7 @@ RUN apt-get update && apt-get install -y \
 	python3-pip \
 	python3-virtualenv \
 	python3-setuptools \
+	python3-libfdt \
 	virtualenv \
 	sudo \
 	u-boot-tools \
-- 
2.39.5



