Delivery-date: Thu, 17 Oct 2024 01:48:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1DkS-005Fwj-0R
	for lore@lore.pengutronix.de;
	Thu, 17 Oct 2024 01:48:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1DkR-0004aP-Ck
	for lore@pengutronix.de; Thu, 17 Oct 2024 01:48:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XqKNfzXBv6WPl3snTMwmYYMPqa+oqbeMcv2WBGE5F5o=; b=KcCpeDD6HHJAv66Gx/M7zcYvOk
	BFxgJDLXZdXyKcRxOib96Lk/c35CPaB2Q1et2aCPVfTGhiwGnrea+rHitalmjPK7QFZBeCzt5BoEw
	MNW+NhmhXwf7ff5G+zOcWKQ4l9JMmP8BzCHlUjHLo9jRKedB7OL9G4Tu77lmTyrVPjyqh+TwXUS05
	qwbAYS48dU+oZ1a+RK/G3sMky7m+IhYpyoVeb9AaiU9dky0BnOarO8V7EkrQYesalrn8UDCqQaWxy
	iT5UpttErMANNC2NSjIq36StdS0Rgz9VRcZHUmnZYZKV8rWyusFLvO8mm+Mfo83Fj6nSML+HckbAn
	3wQ4aZkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Djl-0000000DFf4-3gUa;
	Wed, 16 Oct 2024 23:47:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1DjR-0000000DFdl-2NrT
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 23:47:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0AFC55C564F;
	Wed, 16 Oct 2024 23:47:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BE0CC4CEC5;
	Wed, 16 Oct 2024 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729122428;
	bh=YElsCrnQPsHTwWGUO+K73UMt4uvHxT8moLv9cjvNipQ=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=SPwwsrXB9Uq649zh198wVOBv8LlatuP1AEI8IEMFX+sXU/KAS+O69pBw+Tke4j7qE
	 BrC7qbO/BkuRgydu+/9lirWphGAiwr5zamGYYM2a3gL2ot6O6fOoL+WY1op2rOQguY
	 PMZ20IKzOQl6t5BvxGAOihVmAkwnoEq/aVRW84eDAfPDDNoIbZ2k6Crls88oNhbePX
	 XZ9gUmSLuFIJR/HH9frXSQB35Yl9Pn72qwI1PD/Z1nu3S43FBdQdn0HlZQCHlKsPGl
	 HmWL90tyIG4Asiy38UnOymhYu7xuQsWvURQlJYzAYNXkU7fSl5gARseVy6ZPywo6PP
	 cqCWySQLtiJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26DBDD2F7D7;
	Wed, 16 Oct 2024 23:47:08 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Thu, 17 Oct 2024 02:47:04 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-errors_fixes-v1-1-4c4d1a2c124d@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHdQEGcC/x3LTQqAIBBA4avIrBNULKWrREQ/U81GYwYikO6et
 Px4vAKCTCjQqwKMNwnlVGEbBes5pwM1bdXgjPPW2KCRObNMOz0oOlrnY2jbJXYe6nIx/qEew/i
 +H3enpCZeAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, a.fatoum@barebox.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729122427; l=804;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=SL4Jnbv0eQHh33Eqw+TV7qtnrard+veW5iL6Gj6kRdk=;
 b=6w4Lbv/50gpfajdS91lbxehqvkajt1Rg0hHNxutXa2l9eUSueN5eQqs/F6B3/qjZrpdzeQp4e
 0Il7sqc3r0/CseTe80r1z1P9j2yn4N5UWZc5p+wHciVHnkwN3/vUnP9
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_164709_695535_A54629FA 
X-CRM114-Status: UNSURE (   6.76  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: Include <linux/math.h> to resolve implicit
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

---
base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
change-id: 20241017-errors_fixes-81248755b864

Best regards,
-- 
Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>




