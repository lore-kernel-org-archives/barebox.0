Delivery-date: Wed, 26 Nov 2025 10:32:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOBtH-0051tw-1T
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 10:32:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOBtG-0003k8-Uo
	for lore@pengutronix.de; Wed, 26 Nov 2025 10:32:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wu6K1D0rkDnWdoHMYSYT2c8CenwAGVYmSXpyGZTlpfA=; b=tpKfWGeeK0ViJbu9KQOWSvoNZq
	KPdjH1Cty3crGpMu0Gevb+2QTJ+cuAJHrO3M3PGLv+H2GcTwbrWxu09oSufInNH/P9cAts0Fpwdmm
	5Cz4RxUT+sLYovFgNszDWJJBSN/Tvcj9KJGBSEfbjud+1SlYR/XzOctrUWsvNX8J9Xd3YsStQQs9E
	A4LhPXJ6HQ1t1RQU+XU/t4OJD+82jBXqluRXyPVTr54Q7LsCBID/pxsx/pQtlxPq3Ett9GAgnLkvt
	EA+kRSVh+QPukX1dSGWcsjDpGB3NWeZkuTEr8aQpEcuqNnbDcwVpqWqgiWQ8Y9UNtZj1PuTrGg5S9
	8jLUcv1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBsh-0000000EiTe-35im;
	Wed, 26 Nov 2025 09:32:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBsf-0000000EiT8-1IOb
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 09:32:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1vOBsc-0003e7-Eq; Wed, 26 Nov 2025 10:32:06 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1vOBsc-002ZyN-0t;
	Wed, 26 Nov 2025 10:32:06 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1vOBsc-0000000Cho4-0pPj;
	Wed, 26 Nov 2025 10:32:06 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Nov 2025 10:32:04 +0100
Message-ID: <20251126093204.3028317-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_013209_346372_FB77CBD2 
X-CRM114-Status: UNSURE (   9.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] docs: security-policies: fix code block rendering by removing extra colon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 Documentation/user/security-policies.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/security-policies.rst b/Documentation/user/security-policies.rst
index ba458b10b34b..f280a1ef4802 100644
--- a/Documentation/user/security-policies.rst
+++ b/Documentation/user/security-policies.rst
@@ -43,7 +43,7 @@ Usage
    ``CONFIG_SECURITY_POLICY_PATH``.
 
    Alternatively, policies can also be be referenced in a board's
-   Makefile::
+   Makefile:
 
    .. code-block:: make
 
-- 
2.47.3



