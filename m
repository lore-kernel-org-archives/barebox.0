Delivery-date: Wed, 06 Aug 2025 08:19:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXVC-007Y9b-2C
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 08:19:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXVC-0003ak-1E
	for lore@pengutronix.de; Wed, 06 Aug 2025 08:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s65naCG1/B7/gkFXu6+cwksJyhX1U9ZMibhz/sfpXxA=; b=qjMZ8lP54D3VYT2gIxTaW2gqrw
	8lzLvzfjKEPn0vYU3UPqOmpy3dFuHyPTZ8OOBCjYB8ByqCN6+/32K9+hut2SxcVe77AxyxdQenl0f
	71sugpx3uym3UZgatFuNQFz3t5/aIz9wlX2d34Hfij4CrbJQy1Q5XOnBIY5S3NCvwaRP6qsryDkpa
	2Lx8dsX+WrdZNTQAXw2AOWfRtGcyWfoMg/6/0gCX37JK4hBsm49KJbJhJLxx6ZItu9Cb78JaPlIAk
	OtgBfBIzQ/L+suuLbwhgpCVKzItk6yc0rOkEzGijefc0BYCmlsEz5n31jWTubSiFLaT970yncbS/f
	ahlrfKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXUn-0000000EOj8-252c;
	Wed, 06 Aug 2025 06:19:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXUl-0000000EOii-0wZL
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 06:19:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXUi-0003WY-MM; Wed, 06 Aug 2025 08:19:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXUi-00CAEK-1a;
	Wed, 06 Aug 2025 08:19:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujXUi-0077ic-1F;
	Wed, 06 Aug 2025 08:19:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Aug 2025 08:19:14 +0200
Message-Id: <20250806061914.1697955-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250708193600.758772-5-a.fatoum@barebox.org>
References: <20250708193600.758772-5-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_231927_262558_C9CF8D63 
X-CRM114-Status: GOOD (  10.73  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! test: add support for pytest --graphic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Supply qemu options only for qemu targets. Otherwise

labgrid-pytest --lg-env test/sandbox/sandbox_defconfig.yaml

fails with:

_pytest.outcomes.Exit: Qemu option supplied for non-Qemu targe

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 conftest.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conftest.py b/conftest.py
index e3f09bac31..782ebc0536 100644
--- a/conftest.py
+++ b/conftest.py
@@ -125,7 +125,7 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("--graphics unsupported for target\n", 1)
 
-    strategy.append_qemu_args(graphics or '-nographic')
+        strategy.append_qemu_args(graphics)
 
     for i, blk in enumerate(pytestconfig.option.qemu_block):
         if virtio:
-- 
2.39.5



