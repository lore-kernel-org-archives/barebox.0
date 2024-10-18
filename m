Delivery-date: Fri, 18 Oct 2024 13:47:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRy-005s1M-1X
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 13:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRx-0004Il-WD
	for lore@pengutronix.de; Fri, 18 Oct 2024 13:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EKvgeCdLrE/csXcT9GaOYLVGWKj4XcIx/Q/v8Vj0+Eg=; b=1HOsTJ8mZdH8XMXsR4e66fLG10
	vtQKQC/Kt9qFc9KDmXIdNL8HYiWBUZ+YlT8P8RhLabe0T6UPojX3dpT+VL6KLMFIHv64Li338YCPd
	Ekw/s2OMoebXB5T0+lZTwmfmuSBWYuZ89qZ149wVkNU4Ku5j3ewox68LhnK/cCbdSzh3jejdDS1yF
	j3wNfU8IiapXundhjHzPgXZ9USo4EhXpeuxARugLtYzKipjP9GneKPxvtJCZs4AtADl4gidpgzyvI
	qR29FBZ/B3cT4LmymvBFQmdyfZZ8RSJFDXbyFsYG/YnaP1sJHk9exw+AD7JLHRA+aj8djKJ8vlXA9
	459/6RRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRH-00000000e6k-3VXG;
	Fri, 18 Oct 2024 11:46:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRD-00000000e4O-0EY1
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 11:46:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B9B52A4359F;
	Fri, 18 Oct 2024 11:46:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B78C4CEDA;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729251993;
	bh=oFSJ+Ge9RMBqC8nHK3Szd2TTGiymskpjf16qiP8SdBg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=lp/Czl83Qh8/0f3dOdgKwIhBO4QTuFOjpCk4Eu9A+QPBB3U7/1BKRW3u64g53URH0
	 aSlaOjemHh7y0qUhI9FF/2BtQ3YdSBO9RXhZbnPaZvrXNYxOwVIpr387P02i5JBTdh
	 2ZUOuLvlW8wKSL4y965TOatRR9qL0rvhLSUazQoDj9vOsJG/kQsSp8Hg9NpzaArw12
	 2GqIlla0I36b9m21x2++ZF1WjCc18lylX71VuXqVn8aMrX3H1zJo2xeauqOrrreTi1
	 Epnv43+IcsAzGnFdH5t/OvfGwGiRAQL1yo4Xxe+CdIIKV6u9D0yZ4BuMSw1sIIYg86
	 sdxUTcRie+exw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639A7D2FFF5;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 14:45:55 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-errors_fixes-v2-1-7f49d5a0087b@gmail.com>
References: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
In-Reply-To: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729251992; l=635;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=Rb70qzcuQUIaMnaJEd4Gx4jHBmI+WLf8+wqc2p3rTjA=;
 b=5qdHq8blmCqll3bHxGNYSM5wEFc3njlwl+Ayrz9H3hedGAyjB32/Wi/8ILWzMnvhkNWqrWnvF
 GNkb9vIY15CDIFvNvbCj5TfJqadQepl09a8nv1/VEkoexdrHBle67nH
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_044635_197144_6CD128CF 
X-CRM114-Status: UNSURE (   7.27  )
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
Reply-To: abdelrahmanyossef12@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] include: Include <linux/math.h> to resolve implicit
 declaration of do_div()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

I was testing barebox with randconfig, so I got a warning (treated as an error) : implicit declaration of do_div().
So <linux/math.h> needs to included.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 include/linux/ktime.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index ea368b8802..2b9a91d540 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -21,6 +21,7 @@
 #ifndef _LINUX_KTIME_H
 #define _LINUX_KTIME_H
 
+#include <linux/math.h>
 #include <linux/time.h>
 #include <clock.h>
 #include <linux/bug.h>

-- 
2.43.0




