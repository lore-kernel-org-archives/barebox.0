Delivery-date: Wed, 23 Jun 2021 06:40:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvugE-0004A6-Rl
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 06:40:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvugE-0003SY-2S
	for lore@pengutronix.de; Wed, 23 Jun 2021 06:40:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIZSZQxqplMtwsTIe4VmVebbetOR4KF9iKs4fwTAk1k=; b=mMhBUqLaS4b8ZZ
	gzqentUq33hYW0UTt9aLN1J1zpjL4WfnPEmiUviY+iiGuo3XShWnXRkDEeXpBJ2SR3mtWdH/mrJGR
	FepZ/LzdPHzpBsTi2y6M8v9bv4ZeLqJe6F+a6SLD+W2JxT+w1YPlxVEyktZCYHFvz2eriyWjODi4+
	hKZQXDExfqCg59gUTGJGRob0Bivo1jZh3E7qp8nXY49gyfRiLrLu4ZMSKi7XeukyQZcaCHHEZmUjs
	1D7DjyaDc246KdGCCJQt04t0spAnV2ltPWyNet/Dmn84of6BVyFhkqzJcnu+IiFGp+5vK7gJimsnb
	HArTNA4LwUKRkdJblqOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvuf2-009JBW-It; Wed, 23 Jun 2021 04:38:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvuey-009JB9-1S
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 04:38:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuew-0003Eo-RI; Wed, 23 Jun 2021 06:38:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuew-00049W-In; Wed, 23 Jun 2021 06:38:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 06:38:41 +0200
Message-Id: <20210623043841.15093-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_213844_117807_C60A40DA 
X-CRM114-Status: UNSURE (   9.44  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] riscv: bootm: Add dryrun check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Abort booting in time when doing a dryrun boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/bootm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index b3e41de4a8..c99ae18974 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -13,6 +13,9 @@ static int do_bootm_linux(struct image_data *data)
 	if (IS_ERR(fn))
 		return PTR_ERR(fn);
 
+	if (data->dryrun)
+		return 0;
+
 	shutdown_barebox();
 
 	fn(0, devicetree, 0);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

