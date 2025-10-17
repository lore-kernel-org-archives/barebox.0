Delivery-date: Fri, 17 Oct 2025 14:04:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9jCb-008ofS-0r
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 14:04:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9jCa-0003JT-OB
	for lore@pengutronix.de; Fri, 17 Oct 2025 14:04:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ZpQBoynlT0hPkY9ZATdsl4OdpvhjJjFvxuUZdXeSEk=; b=cys781km8vGl1Aj89xymVchbnF
	PpuAcK/1yjF8PS3j1J0dWgrLMnUVq2XpG7KHniTxd2RtpZ4E2tJjFQhEgc8TibeJo1ZUHn7xcKWKd
	MRChqVBBQezJX+WxhPNXhiOmB6say4lyUIG1rYX+ayMfwDdRvELL35dJAA96/7TRL+RBKZwapZuO6
	U9Skzdt5vcn+dqoDhxozmwvR6LhPqOxI2Cg0aSavricDF7R90GML/ARIE4qiY+WmWlkRQNvj4R/+D
	Zc/gqKQ9BY4FsZdohNwgLsFdKhIT26B5v/BJYjhLx5XxiMWOCIwZPv5zOMVsFhPPfBBJqYw6BRpO9
	jViv+nWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jC2-00000007kms-3KQi;
	Fri, 17 Oct 2025 12:04:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jC1-00000007kl0-0o5p
	for barebox@bombadil.infradead.org;
	Fri, 17 Oct 2025 12:04:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=6ZpQBoynlT0hPkY9ZATdsl4OdpvhjJjFvxuUZdXeSEk=; b=RB+lRF8dbwM5i3h+BRn8BJ53RW
	9sJmzyQDqnkUdGDpopOV9YuG4Y25GGqMfydfewSYktocY/8HF+BntbEXg8BnJljk3pMSlRWWMJVAY
	xa/TVlyQav338T0JuEwI0WJT+idzG3MtvPreko8ePk2c3G8EW8ZC/jg/k9dyjkW/JAz9xMgzTEKmz
	aVxXTiVmXdaP3L/Z6PI16OwjVY2rADwCnoee5086A8GAeVEwUDsQO4EcS/+02vB6hVAqh0YDhzAeC
	QCL/AjhMqjKlVJRNkAC+x3b6LFyCUNRPaQDpk3tvzIXKsKIu4PsNDEY5OSUwDZQBo8+6jlCoSoVo8
	I5q1ySrw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9jBy-00000007Yaa-1OZe
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 12:04:20 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1v9jBr-000320-Fj
	for barebox@lists.infradead.org; Fri, 17 Oct 2025 14:04:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Oct 2025 14:03:36 +0200
Message-ID: <20251017120406.1348897-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251017120406.1348897-1-m.felsch@pengutronix.de>
References: <20251017120406.1348897-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_130418_458136_4847AF7C 
X-CRM114-Status: UNSURE (   6.60  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] aiodev: add missing headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add required headers to be include order independent.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/aiodev.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/aiodev.h b/include/aiodev.h
index fb0807ad420a..e2772b5ae4d6 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -10,6 +10,9 @@
 #ifndef __AIODEVICE_H
 #define __AIODEVICE_H
 
+#include <driver.h>
+#include <linux/types.h>
+
 struct aiodevice;
 struct aiochannel {
 	int index;
-- 
2.47.3



