Delivery-date: Wed, 04 Mar 2026 11:51:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjoq-007xIm-2i
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 11:51:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjor-0003lJ-6m
	for lore@pengutronix.de; Wed, 04 Mar 2026 11:51:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qgnuDnwaDKttokJEcKKM4mD2vyBqbk7wg5JTCui0UlA=; b=J+xpdqEhtjrd5fU7WqpU1eIzMa
	dUMWPWrtXjR4ZykjO7bV3/JUmvXto8UrC3mIoEvwf6tmm6LmXPdg95LQ/B1Sb2bhkVejwBsZeIqgE
	AWCACbi7lYsLRkPVY57ZbzbZhbs5cms70JpJd5YBlLe1lZ5tPbCoLsMMjNkKmTyh9bomLVoeD8JYb
	73vjjtqCej6NcjpwKRjIkKdQ8CC+bG0bIUR+CLqP85t1SM5moJ10IUNn55Uqeq5yomQUI9GCumnyg
	2q92G1szktCGa4j4KC7iurvDpMOzZZP4BoNhXb0XII31fqyn7rAY1LRlDOmbyiwBScg+eH1EBMnme
	jstwOztA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjoV-0000000H1BK-1iXr;
	Wed, 04 Mar 2026 10:50:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjoS-0000000H1A0-2HZn
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 10:50:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxjoR-0003fK-3J; Wed, 04 Mar 2026 11:50:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxjoP-003hON-1p;
	Wed, 04 Mar 2026 11:50:42 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxjoQ-000000053nb-3N5D;
	Wed, 04 Mar 2026 11:50:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 Mar 2026 11:50:42 +0100
Message-ID: <20260304105042.1206234-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_025044_579911_9402B0A7 
X-CRM114-Status: GOOD (  10.38  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] booti: Use %pa to print a resource_size_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

printing a resource_size_t with %llx leads to warnings on 32bit arm. Use
%pa instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/booti.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index ba7e6081e6..9b97a6f815 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -59,8 +59,8 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 	kernel = get_kernel_address(data->os_address, text_offset, &end);
 
-	pr_debug("Kernel (size: %lx) to be loaded into %lx+%llx\n",
-		 image_size, kernel, end);
+	pr_debug("Kernel (size: %lx) to be loaded into %lx+%pa\n",
+		 image_size, kernel, &end);
 
 	if (kernel == UIMAGE_INVALID_ADDRESS)
 		return ERR_PTR(-ENOENT);
-- 
2.47.3



