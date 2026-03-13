Delivery-date: Fri, 13 Mar 2026 14:35:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fO-000DVf-2E
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:02 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f1-0000wC-Fn
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oZl7atRy07Ji1bM5SYhGxgxHzZ78ITduqTUqOt7Y0O8=; b=eE1b3UCrg9cz9x9Bs0kjfF7lJq
	mFpfnkii7NA4wPU0iwv0Seyuz50BVwLfrWh887DL/4TtfluCuzH63w5wLTuW8zqTPprA3e58ZX+wo
	A15JnSJFmMxnJkDsgOO/ifqlJ/PgJKlI3w2PcJXludFUveu1uhRrKMoOMKjONHKXxZhVBGwaSN4zW
	rlKPkAkK7S6LdzM6QLC5MsB0omZgs5Au+SPGi6r4DKfS/qWpdEkDJ2fyNuwa/lf51/cDHKOcyQv4L
	8vXr6D1s2UEj0fauVHIZs/siyreeUdQNcl8JqzHPiGQCLTej0TIyOrgDp8OzKB7CJWFweb/8KtunA
	rUDB+T0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12db-00000000GKW-2tKb;
	Fri, 13 Mar 2026 13:33:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dE-00000000Fgv-1luU
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oZl7atRy07Ji1bM5SYhGxgxHzZ78ITduqTUqOt7Y0O8=; b=IcJ9mxf2HznfhfDxhOGi6AR784
	3mATEtNkWjnxrGVbXKODib8/E5pbJ/zqwcWGZ2fVEh5bpUHOq7iNRMfzN02b1JGLGbMcEorpgBNml
	hMt4TEeelvpf6VrnbwgJZAoQ43Q65WiV/rXNIo1blLvFuvyjmpGBMoI7ZM0HwV2IdsyFG7PLahTij
	CvTGXIz3ikYYBymmlA7JAWOtqC+xm3fdhuQ8YBX65h69OZJao3fn6dEKA5yPyN40VgzUbN4tZYaaE
	HWLs0fjd4c6YpBeSVEwWF26o/H0Rq2pt10nj8GzU2Y0niz/WtuP1kM7oXaS/gJZ5K+jzQTDxeImBF
	eyq003kg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wO-3Wjr
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006uN-FC; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005UW-0r;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-2J4x;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:13 +0100
Message-ID: <20260313132631.2257573-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133241_187759_30FAFB88 
X-CRM114-Status: UNSURE (   8.61  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 29/58] of: overlay: propagate error unflattening DTBO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_unflatten_dtb() may return an error pointer when parsing of the
device tree blob failed. Error pointers were not checked in
of_overlay_apply_dtbo() leading to a panic when they were later
dereferenced in of_copy_node().

Add an early exit to fix this.

(cherry picked from commit 5dacdb56e0cc1d824c2f924a06bee40553ef6677)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260218122041.848881-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d2cf2fa3f371..bad7769187f1 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -351,6 +351,9 @@ int of_overlay_apply_dtbo(struct device_node *root, const void *dtbo)
 	int ret;
 
 	overlay = of_unflatten_dtb(dtbo, INT_MAX);
+	if (IS_ERR(overlay))
+		return PTR_ERR(overlay);
+
 	ret = of_overlay_apply_tree(root, overlay);
 	of_delete_node(overlay);
 
-- 
2.47.3



