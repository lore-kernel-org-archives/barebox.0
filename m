Delivery-date: Mon, 04 Mar 2024 20:11:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiU-008dpl-0u
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:11:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiR-00063g-TS
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:11:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UE2bH76TYaibn0qmYkuvMilkFce5E035FKfVAIhkeLs=; b=3+FXk8VMG1td8yaB8NKuDcZFs+
	VwAwflONXptHwuEJaTnLWfAzIc+Dy+K1BhP80atmryafJ/Uv3tffnxTgPIupLnL5eAY6omeNhIB/2
	YNuqd1QsN+rm6SnftsnOZ+Ow+l+zAKEElew1a0Gs3X3++ma0uf93q2l4Eh8/sE0JrVE+7aocnmWhV
	QYtcw48SlQ1orHSV+S7ZvoQ5Gpmpgx/GOoRhLRtwOuEIi7pQ1jiRx1a2ee2vb5Rgl4meVfLJhHOcU
	JF+NlI4Yh3TY3+seEhqBZ3CEoqRWcvDk5YamqFs09UQQwQrs0qC6Pu6ChInLWwqntdBOKc/F8OS8z
	cbAjdatw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDhp-0000000ANdg-38Or;
	Mon, 04 Mar 2024 19:10:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaf-0000000AIew-05DF
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UE2bH76TYaibn0qmYkuvMilkFce5E035FKfVAIhkeLs=; b=GvDzIkUaiEY1XpLA7KDCF9DXKJ
	mFGqoJGxIuuGzxbBgm3M5ivMhcNVecuIzYYOkO8umISxcr8vS6FxYsTBv8T0i6HlAWCszSrDsVykN
	W/9AWNU7ybOJGE4GVLg/zxZ/5bhH6+wR84Y7lniD+1sDx5lPMVUkjmhj0aNG+v0SnZAqlTPPmmJmt
	xcVXXELz7UH8JbJgz9YbsrdwHbInayTlShPC6K38g11keN8ohZaYKrycMbTZ0eKmu7ErhshNLmGAl
	ElN3teYv5qNa3jeMWBJL66EIspbAFiXU3yhhrg8CRPOnUy5zIeQhaRVl/Yc34/M57pkeQPG5Lvpvx
	/H0d2QPQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-00000002BSj-0kme
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00065A-Ey; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIb-VJ; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-2I;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:44 +0100
Message-Id: <20240304190038.3486881-60-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190303_423906_81BF5B17 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 059/113] efi: payload: fix ARM build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we only ever built EFI for x86. Prepare building it for ARM by
removing the x86-specific attributes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 4 ++--
 include/efi/types.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index f9706c028ed9..8e5ad87de22f 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -217,8 +217,8 @@ static inline void linux_efi_handover(efi_handle_t handle,
 	handover(handle, efi_sys_table, header);
 }
 #else
-typedef void(*handover_fn)(VOID *image, EFI_SYSTEM_TABLE *table,
-		struct SetupHeader *setup) __attribute__((regparm(0)));
+typedef void(*handover_fn)(void *image, struct efi_system_table *table,
+		struct linux_kernel_header *setup);
 
 static inline void linux_efi_handover(efi_handle_t handle,
 		struct linux_kernel_header *header)
diff --git a/include/efi/types.h b/include/efi/types.h
index 3d42948d2b62..6e134387692f 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -33,7 +33,7 @@ typedef guid_t efi_guid_t __aligned(__alignof__(u32));
   (c) & 0xff, ((c) >> 8) & 0xff, \
   (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
 
-#ifdef CONFIG_EFI_PAYLOAD
+#ifdef __x86_64__
 #define EFIAPI __attribute__((ms_abi))
 #else
 #define EFIAPI
-- 
2.39.2



