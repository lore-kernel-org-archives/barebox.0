Delivery-date: Wed, 03 Jan 2024 19:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63v-002NoF-0C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63o-0004nP-3w
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kl0RAKfVy+1METJP4vwXEUlaKXG+tpO8jdarnme+qAk=; b=f60xddpjQgMb/OH2eXBInOi3Rx
	Kwe0Yt6CcuXOX0fOfTFzzbrdoluTrurwQ9IiVWb7e9SnB/wBlDT4MjBrXBWbMVeP41qaXDhyRxvqh
	YZzY/KUuYrHnKSA6KRCCv5MPp0QvB9xdcilgi4eE8K55Ek1QMwKlUv7/dexNu8QorCTo538Jve/gS
	FC+3Oa7znGPiI5RiGtFjFDQYzbB/XCuB8HqrUZSGFMcC3587pYN8fumwQ8kenYO1MLZ13VlcMQc/+
	Zo0ohZBeMuLGU+2zdBBCMW7H8tXN2TSy4QHH7K0wN1NFpgLyuU8sax39uNn9Aa66kboXl3aSx+Jk5
	aOKc2Vbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62F-00BiYT-1b;
	Wed, 03 Jan 2024 18:32:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-00BhJJ-0b
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kl0RAKfVy+1METJP4vwXEUlaKXG+tpO8jdarnme+qAk=; b=nM6z5amC5AcsQr2loTzYVLYuvx
	tbPjUunyYha1olCdZapkLi3KbCLIpc4JLr2yX/nVgZ31zy+3hy2i8QLmVdXvNu6Pk2kctdu4lwzI7
	hk1oPVGEUDpabNzDzzTbKHhoE60KEiw3i6PCuikGxsfGeUyaRCE6ICG/gw+X7NA9FTe1o3aXq0Din
	3NK0rQyKH6W/9drHu5kpldXxhBTvuRXfTMuuEbibDshac0i9W8lRVxjMllwYFiOFeaMypiBz58RiJ
	3p0bvRTsedcnEwfP/6UMg1vl+SpyQYLBQGuX+mEmVS7Lo2w9sMzYoRen3jnEIllXD8Qcerf7dVkVN
	Ni5c5N7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eCO-1F
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001TT-8w; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Au2-SR; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-1x;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:19 +0100
Message-Id: <20240103181312.409668-60-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_601088_E445E404 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 059/112] efi: payload: init: restrict barebox mem to first 1G only on x86
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
index 4b612e61afb3..0c2f38e9c86a 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -292,7 +292,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	mem = 0x3fffffff;
+	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
 	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
 		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
 					     EFI_LOADER_DATA,
-- 
2.39.2



