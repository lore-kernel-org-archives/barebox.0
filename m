Delivery-date: Thu, 27 Nov 2025 09:05:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOX0I-005MAq-1v
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 09:05:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOX0I-0004Ws-2C
	for lore@pengutronix.de; Thu, 27 Nov 2025 09:05:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yoc8u62aFRZ/tbkjVDmC1a3K6IQws5aKuh//nLL+Fjs=; b=OboQVYqV0ma00rAz8fpf5b0Lru
	IhJzj6R7L/shye0P89GUM+1kyp8uFqF9ciWP6fSwM7d23du3bd3oU+wHQTY+upZ210HdEMEdW3zds
	JKpG3HGBo12Xg3uszd8bFVRfhemxcSML+yWfpDDj29apSh59Y1loPKyyIPqhu01OPDqC9GBNbVifM
	k/3kSmttTlgNNk5Y5Wvhr76b8vA+ZOeiKoDfRr88zuylwjPZZJTnxPm+0HhlWOeU3Kcmif53t/anC
	azs+0m1N2eX87FnbRl7togdVLYIaWqlDFNzIXsMikAh//sOp8uPGXg5eLRqUHzgf0/bi0CbvCrRZL
	Qc2kL9uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWzs-0000000GB9N-26S4;
	Thu, 27 Nov 2025 08:05:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWzp-0000000GB91-3nk3
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 08:04:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWzo-0004TX-BH; Thu, 27 Nov 2025 09:04:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWzo-002kiJ-0V;
	Thu, 27 Nov 2025 09:04:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWzo-0000000BTkC-24jx;
	Thu, 27 Nov 2025 09:04:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 09:04:54 +0100
Message-ID: <20251127080454.2735937-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_000457_967329_399B2222 
X-CRM114-Status: UNSURE (   9.20  )
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
Subject: [PATCH] commands: oftree: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fdt allocated with of_get_flattened_tree() is never freed, add
missing free() after usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/oftree.c b/commands/oftree.c
index b172aee9e0..53ca44bb86 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -74,6 +74,8 @@ static int do_oftree(int argc, char *argv[])
 
 		ret = write_file(save, fdt, fdt32_to_cpu(fdt->totalsize));
 
+		free(fdt);
+
 		goto out;
 	}
 
-- 
2.47.3



