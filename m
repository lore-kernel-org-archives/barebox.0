Delivery-date: Mon, 07 Feb 2022 12:01:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1lk-008Bkc-4N
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 12:01:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1li-0004wg-M2
	for lore@pengutronix.de; Mon, 07 Feb 2022 12:01:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSVdhu/oO6xFFLnjN006A1zgZe/LItm3BPxFKtGvJxg=; b=KSpGCz7WpduojF
	a2gNXMR1OVekG50LxN7RugYeurNt1Z6Oe8bKUpQii7I8kZL6CekI9ZjUv1ZQHRhDShwwRfaDgGa7B
	FAB3CN0Gql3MHUyGQrdvFiBQignxJn3ZvftYjNwr36pupoqccA8+lW0RyCdlaG8+SkEVfic6Trt3n
	rvLvwSZPrIcqxi/IV9h+ARWaxJo5cHwauBhfx85xqFaI2L/z6yhy9AWlE68Sq+P03UD6GBMzVV1gE
	iFfybki/arSqYaJ29yiLyrdq42fIiD8PllgHnz5tOC6rSIIvGlCI8rQxLsfNOsLnkemZJSHICjfLj
	858VfEvX97whPnwA+CNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH1kP-009vQ6-Qb; Mon, 07 Feb 2022 10:59:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH1kK-009vOj-RI
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 10:59:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nH1kH-0004fA-KR; Mon, 07 Feb 2022 11:59:45 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nH1kH-00F4nx-KU; Mon, 07 Feb 2022 11:59:44 +0100
Received: from mol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nH1kG-00CFkg-2o; Mon, 07 Feb 2022 11:59:44 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  7 Feb 2022 11:59:35 +0100
Message-Id: <20220207105935.2920216-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-8-s.hauer@pengutronix.de>
References: <20220207094953.949868-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_025948_898621_E10CCAD9 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: probe devices from the device-tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The state device-tree may contain devices. For example block devices with a
'barebox,storage-by-uuid' compatible. Probing is necessary to ensure that
those devices are available.

Call barebox_register_of() instead of of_set_root_node(). It probes the
devices after setting the root node.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

I've tested the series and with this aditional patch it works on EFI, so

Tested-by: Michael Olbrich <m.olbrich@pengutronix.de>

Michael

 common/efi/payload/init.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 6db6b2389540..1541683186fb 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -349,7 +349,9 @@ static int efi_late_init(void)
 		if (IS_ERR(root))
 			return PTR_ERR(root);
 
-		of_set_root_node(root);
+		ret = barebox_register_of(root);
+		if (ret)
+			pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
 
 		np = of_find_node_by_alias(root, "state");
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

