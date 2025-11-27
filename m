Delivery-date: Thu, 27 Nov 2025 09:01:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWwg-005M7h-2t
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 09:01:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWwg-0004Cn-AY
	for lore@pengutronix.de; Thu, 27 Nov 2025 09:01:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PVxlXWbdAZTJ5bLlsfi7ijSxzfi/Rxh0KV3/N3fhTIA=; b=h375mTdFA9d1UHURzxbzLkd8cu
	kgY3Oedwl6X9tqinu0fhJjJk0XUOOBQ7iI6t5gcpK4QgR9XhFyehWo2abm0vYTZpKYeRuPU1xhcQZ
	Xv2RDut7V0RVITc99E+LRHmbbqb6HZf7S6LtbZR7vW/KoAbSPELzyak2HLGjDIQbtde1UdvWbXbh2
	+fICkWD3aYGYl8+wA/qC/j2HJ+IMXsfowAyLNHJaVtattA1X/cFGn6Q3NvVu0qT684cqiLzM2K6tZ
	sPi3QEAzi39WC6HgFW1d1W3O3eiJ7E2eB6t3NA6+5O/sVF0zBTqQ9u+wfQgK4xmimJT7eBvNLauQt
	7gPTVAxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWwC-0000000GAeQ-1x6u;
	Thu, 27 Nov 2025 08:01:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWwA-0000000GAe1-2DfT
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 08:01:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWw9-000498-3O; Thu, 27 Nov 2025 09:01:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWw8-002kdV-2z;
	Thu, 27 Nov 2025 09:01:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWw9-0000000BSvN-16t9;
	Thu, 27 Nov 2025 09:01:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 09:01:07 +0100
Message-ID: <20251127080108.2732786-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_000110_664104_65FEAF1D 
X-CRM114-Status: UNSURE (   9.31  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: tlv: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The unflattened device tree is never freed. Do so by calling
of_delete_node().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/tlv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/self/tlv.c b/test/self/tlv.c
index c22335f264..8f1b810b5a 100644
--- a/test/self/tlv.c
+++ b/test/self/tlv.c
@@ -85,5 +85,7 @@ static void test_lxa_tlv(void)
 		tlv_free_device(cpu_tlvdev);
 	if (!IS_ERR(io_tlvdev))
 		tlv_free_device(io_tlvdev);
+
+	of_delete_node(expected);
 }
 bselftest(parser, test_lxa_tlv);
-- 
2.47.3



