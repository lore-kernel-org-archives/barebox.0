Delivery-date: Mon, 15 Dec 2025 09:37:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV44r-00BgAX-15
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:37:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV44q-0001IA-PC
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:37:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bjfU7+vrnGzJYEgvE5jNoLf4BfPRwxCfwnGYIlIBQ2k=; b=hI3YYCVflkmeMloTg1IuMMXJ7N
	Ovn94ZES1fvxtKhL06WJpI9M4+OYLZbdagl/tzAT2XXL8nuQy4WzqyJnOGUh8eUCedVAHmuRFg3SS
	aBO+SpcV4rJGBF867+6oOjI4UXFtEg52bHDfDQmLvOOatjFgTgttCHUFPsvEg+GZQNVWDtsYfLJPo
	5KgNyLeNI9omX2kKljvOFiqFFVPkrBUCD3DTEnUKur469qUhjbm6/pp4d0Oj2+gQizJ8BO4JXsoWh
	si2msGJMb2GCXC7edHLP4buNvphHDimMmxNw/MHdVGraEVZPdsVxGlsLAYd20CzTiAgrInnHNw+cG
	/NoUHSMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV44R-00000003HHF-49QK;
	Mon, 15 Dec 2025 08:36:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV44P-00000003HGs-1W3S
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:36:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV44N-0001BQ-Ex; Mon, 15 Dec 2025 09:36:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV44N-005kac-0s;
	Mon, 15 Dec 2025 09:36:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV44N-00000009mkr-0koC;
	Mon, 15 Dec 2025 09:36:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:36:33 +0100
Message-ID: <20251215083635.2329721-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_003641_465835_FC038B3D 
X-CRM114-Status: UNSURE (   9.53  )
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
Subject: [PATCH] resource: change MEMATTRS_NORMAL to MEMATTR_WB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Other EFI loaders (EDK-II, U-Boot) only set WB (Write-Back) for normal
memory. Let's follow suit for barebox.

This introduces no functional change yet, as these attributes will only
be put to use with the incoming EFI loader support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/ioport.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 2a006c4c6a31..20c72e1b6cbb 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -135,7 +135,7 @@ enum resource_memtype {
 #define MEMATTR_RO	0x00020000	/* read-only */
 #define MEMATTR_SP	0x00040000	/* specific-purpose */
 
-#define MEMATTRS_NORMAL		(MEMATTR_UC | MEMATTR_WT | MEMATTR_WC | MEMATTR_WB)
+#define MEMATTRS_NORMAL		(MEMATTR_WB)
 #define MEMATTRS_RW		(MEMATTRS_NORMAL | MEMATTR_XP)
 #define MEMATTRS_RO		(MEMATTRS_NORMAL | MEMATTR_XP | MEMATTR_RO)
 #define MEMATTRS_RX		(MEMATTRS_NORMAL | MEMATTR_RO)
-- 
2.47.3



