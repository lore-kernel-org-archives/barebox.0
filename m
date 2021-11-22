Delivery-date: Mon, 22 Nov 2021 09:51:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp535-0003VZ-6I
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:51:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp533-00013Q-LH
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:51:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr26wC37xvOaLmeiYyW3j+c8QkRko+EWIvXOVPkt/Ps=; b=FAVl+tv1Ss5iAz
	SJsM72YsrNV1rxUyYuK0W59YvSDCxXOipjbgRO45aCQ45Wgti8vnvoBGpnIXpKozX9mVOninfS7Ph
	nZZDdRXBkZYmEyQUh58Dkvv77xM0VeC7dfsWDov0VlVRM9kvVjul4n1Rujn3NNvMbNsD+dwIQ0R67
	IGJAH0T0l78TYFd1NL/F74gZdbPx+oA6Z2MgDDBRbIEOgiZkJ9liJwXFC+DkcUbzJLymaADF+p70q
	uzEyVC1oOGT9wWslc3VBp2HMqleTA6GzZDeTaWsNs39Dk2NBwMyk6FCG3OympYyGn9SDjvMbL6Wre
	gWwwLUGIKLESzQIHj/4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp51a-00FMDb-K8; Mon, 22 Nov 2021 08:50:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzF-JY
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wa-FT; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfW-QE; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:24 +0100
Message-Id: <20211122084732.2597109-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_674527_0ECE501E 
X-CRM114-Status: UNSURE (   9.66  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/30] efi: make efi_main __noreturn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function never returns, so mark it as such.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/init.c | 6 +-----
 include/efi.h             | 2 ++
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index e1f968117a01..d8a43e88856c 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -221,12 +221,10 @@ static int efi_init(void)
 }
 device_initcall(efi_init);
 
-asmlinkage efi_status_t efi_main(efi_handle_t, efi_system_table_t *);
-
 /**
  * efi-main - Entry point for EFI images
  */
-efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
+void efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 {
 	efi_physical_addr_t mem;
 	size_t memsize;
@@ -266,8 +264,6 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	mem_malloc_init((void *)mem, (void *)mem + memsize - 1);
 
 	start_barebox();
-
-	return EFI_SUCCESS;
 }
 
 static int efi_core_init(void)
diff --git a/include/efi.h b/include/efi.h
index 36452d296dd4..51382f5bfea0 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -591,6 +591,8 @@ efi_guidcmp (efi_guid_t left, efi_guid_t right)
 	return memcmp(&left, &right, sizeof (efi_guid_t));
 }
 
+__attribute__((noreturn)) void efi_main(efi_handle_t, efi_system_table_t *);
+
 /*
  * Variable Attributes
  */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

