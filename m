Delivery-date: Thu, 09 Feb 2023 15:39:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQ85T-001jYA-Cd
	for lore@lore.pengutronix.de; Thu, 09 Feb 2023 15:39:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQ85Q-00060C-FN
	for lore@pengutronix.de; Thu, 09 Feb 2023 15:39:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=evpBoqsONlihnp1HKOOeJwNuci+zqBXiRW1fjvMNtb4=; b=wdzYWb6OJFaKZi
	GxRu9HSKezl4EyUZtLt7/cB6fJl3BKIv9wn9wFM95hLbw9xzxL3/3C1KnozB9tAUdUvuvis/L/EI4
	LAr3mvbpvoZgNgcPlo+r9Xw9tJyfy4u2PdPMFy3Ol++Ris1kAtatAmvx04WQt3wHsboxGdgujs0wE
	SQBrH0ima83Epd+IXac+v02EuNfQz0dSy8Iv9Vrgo+1APLO5PuuAwuRIRUnRTDuVYqcn80rhwtRtw
	cLVu9Fr8B32vkd8TK167QvZbG7H/N6lafk53EC0oGC0njba0jLaQoyEMXKvDiVpcmlhLKJRQOPTZE
	StL5qT+7g+WkCJAt1NSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ83r-0020VJ-Uo; Thu, 09 Feb 2023 14:38:08 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ83n-0020ST-V8
	for barebox@lists.infradead.org; Thu, 09 Feb 2023 14:38:05 +0000
Received: by mail-qt1-x832.google.com with SMTP id cr22so2033951qtb.10
        for <barebox@lists.infradead.org>; Thu, 09 Feb 2023 06:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=evpBoqsONlihnp1HKOOeJwNuci+zqBXiRW1fjvMNtb4=;
        b=ihcCQHSYFExbhVuH4AZPQ11CDCjQoqIV4YYZaf5BuLKUcHYe5zNqPbSaxgmzOg8rdA
         kJzKYr/IgzbYgcH7IfpuP82+vqym93463Wfwx7Va/4ubtfaEmEaRQQaLUdsBwhnXUe2A
         aaC/rwyw+3tg37yFR9yUDGsGuZWmgdBcxsPtzM3sdeMI6nshYPwKr/Us6IXnHcgFD/wl
         JpZFf7RRvg+jkylP1/C72gZY8+YmSOcKirougoBagdTTxdMOpJQtIk7OQ9UyELUoPqJd
         dNWmw1mhNQTwFpSy7Z24YKolT/0o3iUqWFMcLpEyJlwD4YFqkOs+3+tIPw0tdOXANHuf
         NlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=evpBoqsONlihnp1HKOOeJwNuci+zqBXiRW1fjvMNtb4=;
        b=PjLiGMGBevNPj8rCDCIQUVK1j5IkcqjQ1Xz5PplvlU7kbMmemXGQKV/VxFpSr5IzAB
         xoRxE9x8e9EfS4Dsu13syLXIvyxt63mhwmxPHbJv+sJnizu6alsxpx9BmsmvWY0Ragmd
         PgqUOq9A/NZp4s+eo4VkBOvRpOB+Il9d5JwQc3Am2vlzOTumcSqshiXsvw8f8XYDmjdA
         zokVFCq18aiK+QJOix6iLtvVcjfBqew6tO3sG6KmyGyAmVz+EI1nvC9yIOtcvPpTXaVQ
         N9o/nQNUJAbUqcTJ3Fa22tszJnLYyg2tnbD+fH/Bqd2y4cj2y7jJYlMJG2hWLOPSVLBo
         CG7Q==
X-Gm-Message-State: AO0yUKWUBcgzApjlbwIJp50/iPzEj0aiWXDHt1EpAeemzJFyNhX29OKC
	d74R+8uycSQGNwarTpDmIeU3MtORlZCyn4Jq
X-Google-Smtp-Source: AK7set9TiT0xGFYUwnZeonDtkNQ6ZeqwmtupKbX/zCRzP3R8jno60JcIUBPXgemzN3fkb4y3s1LUZQ==
X-Received: by 2002:a05:622a:1447:b0:3ae:ee82:33b7 with SMTP id v7-20020a05622a144700b003aeee8233b7mr18548089qtx.5.1675953478833;
        Thu, 09 Feb 2023 06:37:58 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id h2-20020a37b702000000b007283b33bfbesm1398761qkf.121.2023.02.09.06.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 06:37:58 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  9 Feb 2023 17:37:51 +0300
Message-Id: <20230209143751.854897-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230209_063804_021095_BB9D6EFB 
X-CRM114-Status: UNSURE (   9.08  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nvme: parse partition table when registering a block device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, we can not access file systems located on partitioned NVME
drives.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/nvme/host/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 79a5f9325e..bf9176ce09 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
+#include <disks.h>
 
 #include "nvme.h"
 
@@ -372,6 +373,10 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_id;
 	}
 
+	ret = parse_partition_table(&ns->blk);
+	if (ret)
+		dev_warn(ctrl->dev, "No partition table found\n");
+
 	return;
 out_free_id:
 	kfree(id);
-- 
2.30.2



