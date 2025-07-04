Delivery-date: Fri, 04 Jul 2025 16:48:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiI-00E1MK-14
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 16:48:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiH-0006qO-Ke
	for lore@pengutronix.de; Fri, 04 Jul 2025 16:48:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Kky/FoKH1IR5NplL2etoLvar/Q3KPCtX6DgTiYLA4Kk=; b=VnMcaQi0iuPgNntxsZR9tdUp+e
	CdDGJDlEwM88U2NCD6MgV+TJUu0Zwyaq4e51qSInf4IJ9JBEKas0/xSnM9yf7PdI8K1HxeQQ60vrD
	nSZlu53HF7zH38kqRBPUhe5wmy8XhGwa2yh2dFcBl0Vb2OnVRLcjN+f965ioJv8hS32awRaTknqf4
	V7jDJkdMpM0ut4QwjBUciahDxzArLXUZ2M03YPEHQyDTekooRb18Hk0Lq3JICJ28oz/H0CnxiIPgm
	pFvwPJFBVHRaTgS4+KfE5Kd1Q2GVbi0GShr0APfR8EB3SP0eooF6su1kUjy3iImIhKwdQTGOd/Ct8
	QwQWsgFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhhb-0000000Ei6F-2pdq;
	Fri, 04 Jul 2025 14:47:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhWA-0000000EgOe-3dKI
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 14:36:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhW7-0000mY-HH; Fri, 04 Jul 2025 16:35:55 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhW7-006mUT-17;
	Fri, 04 Jul 2025 16:35:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhW6-00BPRW-2K;
	Fri, 04 Jul 2025 16:35:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Jul 2025 16:35:52 +0200
Message-Id: <20250704143552.2716167-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_073558_907978_D1A956E6 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devel: fuzzing: fix wrong ReST syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The closing backtick at the end was missing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/fuzzing.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devel/fuzzing.rst b/Documentation/devel/fuzzing.rst
index 4b6d565a470a..b475fd12fcea 100644
--- a/Documentation/devel/fuzzing.rst
+++ b/Documentation/devel/fuzzing.rst
@@ -133,4 +133,4 @@ e.g. how to wrap the received buffer in a ramdisk to interface
 with code that requires block devices.
 
 When adding a new fuzzing test, please also `submit a pullrequest
-with a corpus <https://github.com/barebox/barebox-fuzz-corpora/compare>_.
+with a corpus <https://github.com/barebox/barebox-fuzz-corpora/compare>`_.
-- 
2.39.5



