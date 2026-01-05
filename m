Delivery-date: Mon, 05 Jan 2026 12:27:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikH-001VAU-0R
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikF-0005yI-2S
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FJQoBw3gG/I1QBc2j2Q228qHL8rQbUNwVxfYAnKQxWM=; b=YEeKJ0asHUVT6BcjGGuXJDI9S4
	qW/W7iL5eiG6AF4OnOfMj1njy7k70voH3HOeygslwxgDhoMFXyMXk9kuDQOIfN1hJuWtbLEb9rGh6
	yzxuYtoLxsdlRQ8R6/+6rNZpUiwB1lSgkAIVfUS5nmxFeYRHZso59k6cmjFosYRSMWhun9TWVSCNB
	6yiBd5dhW3zsz7Fl7M7uqoqXRvniusVWXCpXrOjFc26BHPtCFauo322pZIWQP5jJ5ck9gcy1t+D5+
	8bo+Tml1J9AGlwlyqnrUN0ih8QJDsOnlALjExrZeW3mNEOMsY+r6AU1dUW7E5qceiSsLi2nY/HwgO
	m59oN1Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijq-0000000BBMf-3PlI;
	Mon, 05 Jan 2026 11:27:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijo-0000000BBIb-0WxA
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yp-MV; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xa-18;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0sO7;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-2-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=707;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ukdeY+mUTu6ikdkDrLLsxtFjLccBL6uR2sglCbJ4rZ4=;
 b=nf34QK7Cf9jCjfak0IYRs5W1DPJXF2gVyeT1TjzEVtzn1i5pUeYXYVFfXhGqnqwp/0gXKPkqk
 3X9wiH5o9+RASfZlhgU827jE8wp9QGDytV8IHRy7LZubXLHTji7YBW1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032704_177521_FDED47D0 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH 02/19] elf: build for PBL as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll link barebox proper as an ELF image into the PBL later, so compile
ELF support for PBL as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index d501a6a2755a113fac3ac632806d4a92b741d6e2..7afdb04be3b494cc8edcebb145c642c23f54503f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -14,7 +14,7 @@ obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-pbl-y			+= bootsource.o
-obj-$(CONFIG_ELF)		+= elf.o
+obj-pbl-$(CONFIG_ELF)		+= elf.o
 obj-$(CONFIG_PE)		+= pe.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o

-- 
2.47.3



