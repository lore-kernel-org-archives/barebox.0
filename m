Delivery-date: Mon, 04 Mar 2024 20:08:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfN-008dTP-1c
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfM-0002wv-Q9
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+It7H6YgcAIEJ0rv3HV0Ty2F2/xdKcS6XCHizWmJu4w=; b=BroMuCfqmdOk2T5wpCdXLkqJFR
	6VCWhi2wTN/QGIa3VLieyc8te5VBhqB0gYxlrnwynjDviVzneflhCbb0HEIds9Mc20aLpKaemO5ct
	5/Mzwf1/jjr1ASLaP5Ydx0k4qja0H4k6ExeR4in3L/kF9fMGbbOAyfCru9E0zooA3S+pODKH5bWC1
	fRXOImfjspxxvmeNCBZUnmEnC+bLlWvTuC+iNXY9DFM+rqMkCtt5m15MNoYNtxY5i7W/uvw2fR9KL
	yifrjFlO04zXN6ufqo//QYB8jQSRfnaX/vNgt+jxu5YBNzLIyTgsHl2k6R65oqP2NDlfWEonqPXLJ
	r6hZhTjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDeZ-0000000ALKF-2jpB;
	Mon, 04 Mar 2024 19:07:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-0000000AIXL-4Bel
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+It7H6YgcAIEJ0rv3HV0Ty2F2/xdKcS6XCHizWmJu4w=; b=NbYPfaWozdQ68YwhExSM2zaPtg
	ki2cGuyYfp5xFJxPT1rSff3+O94huad8kmG/pCaSrF9G+YvEQjwdJYWbWthUJR4Otc4Uu5553ZLp5
	Cf2YigbE6NPmtpJD5ZbYdqlYjPgvtAxnNZVz0iYoSQMQn0kFwqmN/5+cykREhGDxj2H7DMzr3NyrE
	OppufTnGkk1yg3/dy5036unPpcwz2xvYlVKABmWudN3+e69YM4563gjcczxQerP/tSwuvpuI0cueC
	5lt32h05xfheFm6ecioCVKJNAfIN+TwGBkw+ZS+5R2aBML2HxBaSU6HwzSjV6H9LVd7gpD2jcWKw+
	V9X3YPIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-000000051va-0uwf
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Dm-Va; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLA-Dl; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-2R;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:45 +0100
Message-Id: <20240304190038.3486881-61-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190253_414467_BD4780A7 
X-CRM114-Status: GOOD (  14.51  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 060/113] efi: payload: init: restrict barebox mem to first 1G only on x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When run as EFI payload, barebox will not have full access to DRAM and will
have to ask the EFI firmware for memory. It does so once at the beginning
and since commit 356aaef5a37d ("efi: improve malloc pool allocation"),
the buffer was always placed beneath the 1G boundary.

Aforementioned commit didn't elaborate why a maximum of 1G in particular
was chosen. Anyways, non-PC architectures have different memory maps, so
a 1G limit doesn't make sense there. Therefore restrict the limit to
ARCH_X86. On non-x86, we allow the memory pages to be located anywhere.

This can break PCI drivers on systems that so far assumed barebox memory
is located in the first 4G, but that's ok. That code will need to be
fixed eventually anyway.

Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 557bf033a4a2..dedecbf92cec 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -293,7 +293,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	mem = 0x3fffffff;
+	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
 	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
 		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
 					     EFI_LOADER_DATA,
-- 
2.39.2



