Delivery-date: Mon, 15 Nov 2021 10:30:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYJR-0008B1-Lz
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 10:30:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYJQ-0006wd-FI
	for lore@pengutronix.de; Mon, 15 Nov 2021 10:30:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRDDX8iHSZG9reqpZdfqn4SrDNZRnGLUA55YbFvUTeE=; b=Zm4D4vhDIh7zrK
	2yfn1byvDPQgbzPtRiNpGIR/bGfDxSb4aLerS6/EUborpxV/YG/CG3tDfVMG37AbWfH9dC/NLne1a
	76twA+6IoTc7vQParHC1M9OsUOTED83c6JleSyVZsG1GmiatX1byJbN7v5TZnF1iHJgVAQn0ce4nk
	v44r2BLBC3ySBnYyptEZnDIXQyD82cCVtEj/Fuf8EQisjKICV6QIadrsl+uP9OiAO0P9PC9qsDMiH
	uBkrLggSVfSqAn4h4l0ofqm0mJny5vxZJzJRqxF2jOM0mvJU6VTvy/Qm/SHqPe2pwLQu8rZPmcdX/
	hRFHjXv9ZTNV6anGFGew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmYGx-00Ev9B-IE; Mon, 15 Nov 2021 09:27:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmXqn-00EoCl-7A
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 09:00:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqj-0002sj-60; Mon, 15 Nov 2021 10:00:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqi-00HaqT-N6; Mon, 15 Nov 2021 10:00:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Nov 2021 10:00:22 +0100
Message-Id: <20211115090023.4192546-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211115090023.4192546-1-a.fatoum@pengutronix.de>
References: <20211115090023.4192546-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_010029_331128_05BB044E 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] efi: efi-iomem: don't add EFI loader code/data as
 memory banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The loader code and data memory descriptors describe code used by the
currently running barebox instance. This is already used memory, so
registering it as available SDRAM is wrong. Instead, just reserve the
IO MEM region for informational purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/efi-iomem.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/efi/efi-iomem.c b/common/efi/efi-iomem.c
index e223c595c478..11ea94f6a2a6 100644
--- a/common/efi/efi-iomem.c
+++ b/common/efi/efi-iomem.c
@@ -36,9 +36,13 @@ static int efi_parse_mmap(struct efi_memory_desc *desc)
 		flags = IORESOURCE_MEM | IORESOURCE_DISABLED;
 		break;
 	case EFI_LOADER_CODE:
-		return barebox_add_memory_bank("loader code", va_base, va_size);
+		name = "loader code";
+		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
+		break;
 	case EFI_LOADER_DATA:
-		return barebox_add_memory_bank("loader data", va_base, va_size);
+		name = "loader data";
+		flags = IORESOURCE_MEM;
+		break;
 	case EFI_BOOT_SERVICES_CODE:
 		if (!IS_ENABLED(DEBUG))
 			return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

