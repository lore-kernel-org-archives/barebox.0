Delivery-date: Thu, 01 Apr 2021 08:47:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr7B-0006Uz-ME
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 08:47:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr7B-0003bO-0k
	for lore@pengutronix.de; Thu, 01 Apr 2021 08:47:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gc5VxItx3IoL4FRv40lCR7unrxTJNobeZ2h8Uyq7gz4=; b=cUlriwZWMp01jd5seJB7us6a8F
	OMqjqLadSieXDQs93ccH0gtX8hiUXXJMA4r3IOuuMwqzhZ3zi+sSOFXLTw5CxaoSo3FXNLgE9CgUr
	zoDpDagmz1q+qYtqXtObxY8LNQJMhoBdBAztexdnBvMOahZ7uAZB/yBO7q7+tFz4P4MQz2u84O8iw
	B5wSKbgfqikuc7ly29MnVPU1+WVcsdz7QwGhhLs+DQJFvMa/KgNV86Wb/k46Zdn2eicRTubpHy1Nt
	XKOyGkST6nes27JlcamNUqSOBT6jKSb7jRfyfXNqrvO4RAqV1KsVZHRWDjfdIWWE6eT38LoIx2+/Y
	VKtiL4Wg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRr66-008iXL-Gw; Thu, 01 Apr 2021 06:46:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRr5v-008iTS-TQ
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 06:46:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5t-0003J4-Vm; Thu, 01 Apr 2021 08:46:17 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5t-0007tF-Hc; Thu, 01 Apr 2021 08:46:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Apr 2021 08:46:12 +0200
Message-Id: <20210401064616.29913-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_074620_187180_4973BFE8 
X-CRM114-Status: UNSURE (   9.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] fixup! input: add virtio input driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Add input to list of supported virtio devices.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/virtio.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index 7e125c0ca839..fb21869807e0 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -35,7 +35,7 @@ queues configuration and buffer transfers are nearly identical. Both MMIO
 and non-legacy PCI are supported in barebox.
 
 The VirtIO spec defines a lots of VirtIO device types, however at present only
-block, console and RNG devices are supported.
+block, console, input and RNG devices are supported.
 
 Build Instructions
 ------------------
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

