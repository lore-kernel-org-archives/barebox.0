Delivery-date: Sat, 10 Jun 2023 10:43:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCM-000qWj-72
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 10:43:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCJ-000598-RL
	for lore@pengutronix.de; Sat, 10 Jun 2023 10:43:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfFeOP2d60a2WhUpl8CnYExix/Saj3ZeAfSHkUayYSg=; b=mk4rRTPQizEpsM
	5HC918+QK1KpJbr4MrnXbxiRRHIjPz/ygpUkgMk6NnlR8IcLWX6+tHgV2N2+q3Il0UndEhQOI03B0
	DmCKSHjPbyYTUqj9d2zCcsrV2VvxafW1zE5NMVsHCPp4e9wvdgfewR692BOPsudx7pgt6awMgXoAl
	r51SvWJsnmuMgv4hJDoeXgq85PQ+0uS3WGosUqI0HX/j+wrKVxBK4AaVzrUhtzm4X9EKhfXfv8TfS
	V1Jrv1wF6d2NBoXCIxeJQwA9akQJ3gTxzgWaUD1OD5b2cBpSu7CUDfnA22Gm5quHI72/NWO9X0f0X
	eHuZyhWwpbyTZcs3yOpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uB2-00FZGR-0y;
	Sat, 10 Jun 2023 08:42:28 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uAz-00FZFA-0H
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 08:42:26 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b1a4250b07so28747881fa.3
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 01:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686386540; x=1688978540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfFeOP2d60a2WhUpl8CnYExix/Saj3ZeAfSHkUayYSg=;
        b=pgypS5tJvIB4/C9TwnO9Ad6+vDMDKLwfun12d1eC7ov4P0FmxozVj36nCLe5D790py
         TL7Of2oUQOWb+ONMrca1GvL9mAaYiI0i6iy/xEvt+X57ktszyOq2dyRasyxg7YIDLhPK
         o8LKRI6phoIWL/TKYWSj+pKoKyF6vVA782Hm17ZV11Uv5CvwMBHgzkNq/EvhHBwIMDr8
         /6PJ773sKHB8BIYz2tqwkxxVucjRnO5G8DIhieoomQiOUyecMm5x/S62/+Ac/d+hZkn0
         SRU1mOUUbAKA5D7YvuK10pi65mjE9qQwmh994x0A5V5OyAxRelIqNDZdM206TVP5k5xq
         a60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686386540; x=1688978540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dfFeOP2d60a2WhUpl8CnYExix/Saj3ZeAfSHkUayYSg=;
        b=Gy8IG//X/T0PyWKSZk8uKMoau9yhYhlHtQC6aujhIRjtaYCHsZd8vj2n+M/bMrhZ7M
         Jex3rNMBnE37GSCCiv3QaXIlyG1uAmLgHFyKcCtz5rRb2hhGryYQeJLW/poyut1FL74d
         /ZO1JHBjh0dNx5m4E0Lyd45lRUHCBmY5qHT+/nQiXIQNls1lJuqPe6hdkLi/cnaPmpjm
         u7ifRV9sceZP2rfuNjoq6dragGuTxAKMI9GukgZOkvn41t7UgxjlZDwpA2N2Y3exOUk0
         FlbQ8jlR/KkjfXgSM+1c9Y8zvbF7taKeGj0KDmHdzpLD83KT4bBSKvn2q/ZhYgERGP9C
         b2TA==
X-Gm-Message-State: AC+VfDyzdbCocG1rhT6Njfm4mV9LvtKkF+5J141+NJlicNCXe+EtefQY
	RaWkFQnhihQldjIT08ZgXVt0fW9LIZK5eg==
X-Google-Smtp-Source: ACHHUZ5jlFaw36oVoCqrH1ke0o0wRbyQPAkWF+thDN7+aXfkRFlNH80cn9l3FOMN+1wvm1zCgGSPpw==
X-Received: by 2002:a2e:7d07:0:b0:2b0:297c:cbdf with SMTP id y7-20020a2e7d07000000b002b0297ccbdfmr436108ljc.1.1686386540252;
        Sat, 10 Jun 2023 01:42:20 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.223])
        by smtp.gmail.com with ESMTPSA id y14-20020a05651c020e00b002a76bb6bce0sm763331ljn.37.2023.06.10.01.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 01:42:19 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 11:36:28 +0300
Message-ID: <20230610084146.9448-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230610084146.9448-1-denorl2009@gmail.com>
References: <20230610084146.9448-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_014225_125755_6B62DD5C 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 1/2] virtio: remove VIRTIO_PCI dependance on MMU for MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The issues that broke the usage of VIRTIO_PCI on MIPS when we are
running uncached (i.e. with CONFIG_MMU=n) seem to have been fixed.
As such, allow this option to be set for those configurations.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/virtio/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
index 91a89d3e1b..ecf66987b3 100644
--- a/drivers/virtio/Kconfig
+++ b/drivers/virtio/Kconfig
@@ -28,7 +28,6 @@ config VIRTIO_MMIO
 config VIRTIO_PCI
 	tristate "PCI driver for virtio devices"
 	depends on PCI && HAS_DMA
-	depends on MMU && MIPS || !MIPS
 	select VIRTIO
 	help
 	  This driver provides support for virtio based paravirtual device
-- 
2.41.0



