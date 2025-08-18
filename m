Delivery-date: Mon, 18 Aug 2025 20:31:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dN-001yRb-3A
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dJ-0003pp-LX
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c7yS5ZuO8rOzpJ/T7ItWVS7twH9icABUAUypaC1vX9Y=; b=buhLFlh2e94cvMabfioYgOx8vK
	vBpR0dxyV7EhX48V1uLA9I4tfVSkUphT/zEDUHOEERgJleKJvDjaDr2qns4J/SqskBWfNTNkiGzQX
	+eyBOoe9vYurb0n1P3smemsEAdN0CHrK1DDyXg9QbXpQ3oXUAbweikIMiWfwQu7cnojNWIbHmXv/W
	Ki7YlWmoJFsxLLPQskJY8MSbfSkV1oBjdb5REhzvLRASghZYMEAE0XPPbpcutR5AAngfsUfX4uB9g
	crxKqNG3x6KjoFlKV32NR4GcQnpeTPl3thu9yFf+4fumQglhVTuo0l+kEcTZWuUXb6kDwoTdUqhyO
	f82J56hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4ck-00000008LLa-455A;
	Mon, 18 Aug 2025 18:30:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uW-00000008F4x-0Dsj
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=c7yS5ZuO8rOzpJ/T7ItWVS7twH9icABUAUypaC1vX9Y=; b=M7IWlDixDhw6GkldzJa+fERuCg
	Hp1OHBdMF4qKWD+6anGU5hQtNztE3Tei67pIoBq7TeFFfypC2rPIue8QB5Crd48d4vVW0mYJpWRx5
	Fa2uptMTnVbD8zAuGI1fWXKdhVK/yMzommjhZaIk74102edvk7gja/mp7wZJvKyfW4b5dmXQF6Pe3
	mb43qzo5IhLJ0aaMs4TjseCdkX5AsQhzr+O9Xvpbm4FCzuK0BAjYlWhlC7RxHNe/3SmgZAWsqQq9K
	ATZDM0tVMaSJQPu4kv9wRVIEi1sT+lPn2vXV8rdsT+Hcp/FzQqGSXC5E15/1SAjwph8bNnVUWcGkU
	YatkHc1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uS-0000000HSt8-3a8F
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-My; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-4-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_148507_C278CD3B 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/15] nvmem: core: fix nvmem_register error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nvmem->dev device is still registered even if nvmem_register_cdev()
fails and the 'nvmem' memory was freed. Fix this by unregister the
device first before freeing the memory.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 68cb27093227d41caddc85696eb2a22f0d07d698..dd332921e4c3d9192ff8e311ebfc4fba1134719c 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -260,15 +260,19 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 
 	if (!config->cdev) {
 		rval = nvmem_register_cdev(nvmem, config->name);
-		if (rval) {
-			kfree(nvmem);
-			return ERR_PTR(rval);
-		}
+		if (rval)
+			goto err_unregister;
 	}
 
 	list_add_tail(&nvmem->node, &nvmem_devs);
 
 	return nvmem;
+
+err_unregister:
+	unregister_device(&nvmem->dev);
+	kfree(nvmem);
+
+	return ERR_PTR(rval);
 }
 EXPORT_SYMBOL_GPL(nvmem_register);
 

-- 
2.39.5



