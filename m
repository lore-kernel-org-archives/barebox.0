Delivery-date: Sun, 04 Jun 2023 23:08:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5uxW-00Aum2-MN
	for lore@lore.pengutronix.de; Sun, 04 Jun 2023 23:08:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5uxU-0000XS-Ci
	for lore@pengutronix.de; Sun, 04 Jun 2023 23:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JzEH/HdwYnh7tx2+zslDwYxzM2yLOPZE+TOKABunpIg=; b=eetMv8L224Q1bt
	tWcQMTRRli+rdXnS4/c4U61Bgr1tNpSIZeA4KJjzWcXQAXKoyLPUO5aqs7MuLWVDYuzK3bu4kbm1v
	j+UdwZGWmF+xvxZ3MAEnVqhElG9KaX76Pw/xDu8ecDBK51pnc6Y+f2LsX8h1zqUSurNy8QnNGK3tG
	xVhFNwVCB/+kE5A1CVx7HFj0OthfSolLJXNOuU3EAtJt0ELA62r6Z3cc3rJLfZeV0WL2q2ZkRrJnD
	ADgkKzwKI3qIK0pPVVSXgcR6uSidrh9o0ZdR2x1u5+3dT5agDbP4riCFeDfLbtFsaA8DKFbD5EbYT
	3iSgBV5a9s1hfXRkICjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5uvy-00D6kM-0G;
	Sun, 04 Jun 2023 21:06:42 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5uvu-00D6jX-2F
	for barebox@lists.infradead.org;
	Sun, 04 Jun 2023 21:06:39 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b1aecef94fso29902371fa.3
        for <barebox@lists.infradead.org>; Sun, 04 Jun 2023 14:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685912795; x=1688504795;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JzEH/HdwYnh7tx2+zslDwYxzM2yLOPZE+TOKABunpIg=;
        b=AAWT+cEvh+OD8zGpFwzL/hrJ3xwI7z1mQXto5IFjnhf1g3+EqlJWS+2K1NhjxmCFD8
         EU4kOX4BRZLcRsQuBDFrW+iwXDEuPRgE+hDnAB8l1eaXuuN2+KtnEtsY86fOctBCLA7/
         vMv7ueolb0q7sNwlmMzNpthbDK+cuXnuehRQCMj0VHckF7zqcLQ8KuRlcTLo9QSyluOv
         wV4Y8S369zG9zdFZnpktKamVmRxV/zcHntmJU8ZnOBW8s2zabfgeu1B80o0b87gA5Q5k
         bLrb6nK0gqS9FkK9ENB5D2sEusW3U5yGyofU6CBDxQMsWIr+UOpfosvRnH7/IpZq7S1L
         V/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685912795; x=1688504795;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JzEH/HdwYnh7tx2+zslDwYxzM2yLOPZE+TOKABunpIg=;
        b=Ry+NCyc+ma0pnHIulBZ8YvAVdPRD/dEhNi7pIDdT1aR67JgU46RYa+Pk1OaW/ikD+N
         o3EFcpMlYglgps9Z15FBnfqnhHdWtmyTlUrLmagXSu/axs3nmCowy/AIGidMPLshv/Ju
         TD5/0TsnpzbxJ69cYw/QvzFDIbQ7jhW69QH6+dyz/VRnB8gZOi1l5ecVTyliFhrRM+ZQ
         xRv6I98VVw5Z2weioKuF2f0UFKAlVfy2RytELnl8C73TQ4PEM1721RijEvih9n4kUCO0
         3h2lUz9wRAEqNq5LUb83UIXTQBaJidwHmbrcLZeGkU5RmQKcGXXKWHbK8kRQaS7mOGM3
         r4zQ==
X-Gm-Message-State: AC+VfDyxnJ+fO1eirjH8ZmIwJhCujddP+d2qYcPjzPcIuQoGedscSjQ7
	0j7xUwzh7d+Ne0+PlF29VeFCPujmqhY3bA==
X-Google-Smtp-Source: ACHHUZ7ptKm5NbKLwEbmofWzpbCWKXN6RXsCDui/MxCzENUl17Q/eLRGjVvdvr+IYYNmIvhU2vr8VQ==
X-Received: by 2002:a2e:9344:0:b0:2ad:996f:5d11 with SMTP id m4-20020a2e9344000000b002ad996f5d11mr3380118ljh.28.1685912794632;
        Sun, 04 Jun 2023 14:06:34 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.237])
        by smtp.gmail.com with ESMTPSA id u5-20020a2e91c5000000b002add1f4a92asm1164816ljg.113.2023.06.04.14.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 14:06:33 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 00:05:55 +0300
Message-ID: <20230604210609.17765-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_140638_759704_DBB535B4 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: r8169: fix builds on archs without system.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some architectures do lack <asm/system.h> header, which breaks building
RTL8169 for them. However, it doesn't even seem to be needed there. From
a quick glance at archs that do have one such header, its contents are
quite platform-specific. Getting rid of this include fixes building the
driver, so do just that.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/r8169_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index 5b448fa029..2225c26190 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -17,7 +17,6 @@
 #include <linux/pci.h>
 #include <linux/sizes.h>
 #include <asm/unaligned.h>
-#include <asm/system.h>
 
 #include "r8169.h"
 #include "r8169_firmware.h"
-- 
2.41.0



