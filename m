Delivery-date: Tue, 27 May 2025 23:32:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1u0-000yR3-09
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tz-0005y5-8p
	for lore@pengutronix.de; Tue, 27 May 2025 23:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c0XexUz6rSvy5bgoQnSsn2XJoEDO4yZsFykaXuC6dao=; b=4zAsXO/qLtB4U6NU7c8XQHH54m
	bsBwdX1pjUfNjQLqY8oQ8mTlHDnGOBwOdMwvK0bM6zQRxAUZ4BVEufL3tSSUYpwYECBG0ocxGEcNY
	dUUeYcAPtMh351VlibGH9sIjNTGeam7pMkfiifBQWCB5cYhdq6PSzx9Be9kE+MGzxFl8R69pNwmSy
	ZKXhGsuw+3TbkEUy/3eU8SQxrykSR2y79KJBSU7Ad7j1bfj+zkcJ70ou+ExXpBTMthtUS08DUQ8p9
	d9bn5lgOwRw1SiBWa2YuvONVXtvpsBsnxZV/o4Nauqc3U6CGbdBNFFdcusU3259DtnDj6FOk6waa+
	qXkYmmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tJ-0000000Bbmm-3MPc;
	Tue, 27 May 2025 21:31:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lP-0000000BayM-2j9C
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lO-00015n-CX
	for barebox@lists.infradead.org; Tue, 27 May 2025 23:23:10 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue, 27 May 2025 23:22:54 +0200
Message-Id: <20250527212300.575031-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142311_687315_E12934CB 
X-CRM114-Status: UNSURE (   9.22  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/15] efi: payload: image: use new efi_phys_to_virt helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 efi/payload/image.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 70b57360c99d..20ef2a878c11 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -101,7 +101,7 @@ static void *efi_read_file(const char *file, size_t *size)
 		return NULL;
 	}
 
-	buf = (void *)mem;
+	buf = efi_phys_to_virt(mem);
 
 	ret = read_file_into_buf(file, buf, s.st_size);
 	if (ret < 0)
@@ -113,7 +113,7 @@ static void *efi_read_file(const char *file, size_t *size)
 
 static void efi_free_file(void *_mem, size_t size)
 {
-	efi_physical_addr_t mem = (efi_physical_addr_t)_mem;
+	efi_physical_addr_t mem = efi_virt_to_phys(_mem);
 
 	if (mem_malloc_start() <= mem && mem < mem_malloc_end())
 		free(_mem);
-- 
2.39.5



