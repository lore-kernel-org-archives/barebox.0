Delivery-date: Wed, 26 Nov 2025 10:48:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOC8D-00527e-2l
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 10:48:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOC8C-0005rY-1Q
	for lore@pengutronix.de; Wed, 26 Nov 2025 10:48:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1E9bYNY8pBwSe6ObLwDGjhZPmRn8P9BMT6qLYsIsqbQ=; b=phTsLmy7BHiMFU0Pq2ucp+o6ib
	Q4lruv2UoMFDx0MaR/neGLXIbgDc+3mogABmOQkFBOT4tT7E+zWaAbbWnCF2LOl9kADfPgx8l2sul
	cwV6o2kY1IdcrocHmbGPSme2h6MrUlTvgnKQx+K0poKhFOPJO8wZWnXsyaJ1LarwVlLqxHNaam0OQ
	/QpwpUw9P7I3zGYXRM+D7s/5lzEWGqx73Qj+sG8Gb+wAKoGc2U2afIuQQaKydqn4xYRXg0PQskMSm
	iFgA+8Bo7R1HnVYgtpBItmsyOCD7N+rjTGSjzoJUhOeCFtyrtILLdMQPGGabnR5tiZ14rFuQenbuF
	gYLB+yGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOC7i-0000000Ejo3-2WpZ;
	Wed, 26 Nov 2025 09:47:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOC7f-0000000EjnW-3XAt
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 09:47:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1vOC7d-0005mM-MC; Wed, 26 Nov 2025 10:47:37 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1vOC7d-002a6u-1b;
	Wed, 26 Nov 2025 10:47:37 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1vOC7d-0000000CkN1-1o3M;
	Wed, 26 Nov 2025 10:47:37 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Nov 2025 10:47:31 +0100
Message-ID: <20251126094731.3038174-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_014739_950022_E68F5A66 
X-CRM114-Status: UNSURE (   9.11  )
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
Subject: [PATCH] docs: security-policies: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 Documentation/user/security-policies.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/security-policies.rst b/Documentation/user/security-policies.rst
index f280a1ef4802..8d515508d106 100644
--- a/Documentation/user/security-policies.rst
+++ b/Documentation/user/security-policies.rst
@@ -96,7 +96,7 @@ Trying it out
 policy development and evaluation. ``images/barebox-dt-2nd.img`` that results
 from building it can be passed as argument to ``qemu-system-arm -M virt -kernel``.
 
-The easiest way to do this is proabably installing labgrid and running
+The easiest way to do this is probably installing labgrid and running
 ``pytest --interactive`` after having built the config.
 
 Differences from Kconfig
-- 
2.47.3



