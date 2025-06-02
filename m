Delivery-date: Mon, 02 Jun 2025 15:33:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5ID-002yZh-0m
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:33:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5IC-0000s7-Oq
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:33:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7dCiU5Qew1uIf80BuqsHZJtgto00CuqQuAq/iuGYxWU=; b=Bcq1P8l5zdNMV2Fc4WKdhc4bRM
	NU4QjyyjZ717y3guKGCfTPoQxAVqm12AxEExRUsfaI5bH0+SRwUN6rG62Dy3+ALDaZwyVi5OT3n/L
	B9kTRPFI8eKaUoo/z7fAad5O8siUwvWnmRTbm+xFNmJIA5Ij/3EUYmFWnhWpyuAxovZsrm7vsqEag
	WJMR23FCXP3jPHCzefEkZUrYPxygCfViStIvDRHKMUiZy73B6EL7le95MufzrHCObmT6GeNiiIld6
	9raN58+1TDM+YXc4v6eSufX/SJupGqBWk6SsXB1u/HX9RtcuDidLNKelAnGR/nULOxSplkqfdpA6/
	qgbhK3Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Hq-00000007Tlk-2KH3;
	Mon, 02 Jun 2025 13:33:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Ho-00000007TlN-1gV0
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:33:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM5Hl-0000gx-7P; Mon, 02 Jun 2025 15:33:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 15:33:04 +0200
Message-Id: <20250602133304.843810-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_063308_438940_DA54BAEC 
X-CRM114-Status: UNSURE (   7.22  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup!  efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi: types: add missing #endif

I had another commit on top and missed squashing the #endif into the
commit that was submitted.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/efi/types.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/efi/types.h b/include/efi/types.h
index 85aaf32f8f1d..4b2276038de2 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -83,3 +83,5 @@ static inline efi_physical_addr_t efi_virt_to_phys(const void *addr)
 }
 
 #endif
+
+#endif
-- 
2.39.5



