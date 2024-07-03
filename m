Delivery-date: Wed, 03 Jul 2024 21:03:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Fy-001GOB-0l
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 21:03:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Fx-00056S-MR
	for lore@pengutronix.de; Wed, 03 Jul 2024 21:03:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1NKpOUyN3ot0PzlA0j3IqiigSTta7AeMCsZ6NRXfmWk=; b=Z3J/v/hriy3bE/c0cbd3wYhmRa
	/nkIx7TKgBqXMPzmuHa7s+VFj+54JBvGTyInxwkNdx3T6fOPZHlYTZyyjzotVQmtCnWNQ17js3bUj
	2vIpp/DvE6QazeE++2dSElf7z5q/Yrz4i31fkzLlGVqnmDY9FQufpITIe1CGJJuM+cdoBWZUi3c/1
	9lbkgURTD4DX/VFOd4Gk5cF/WGpapccN3QsSA9ETCzzlPvqdeV0eLihD8fdudCIQ0Hmykl+GWz9JR
	tZOyIDdT/CsPkYL8vzGOpezExXAHEtBuTdl5TKMOuUaJX4P3JpFEdJxnmjpLH9Wtf4wXqnflBuuFR
	CeOdpP6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5FR-0000000BECK-02VB;
	Wed, 03 Jul 2024 19:02:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5FN-0000000BEBY-4AKu
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 19:02:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5FM-00052y-HS; Wed, 03 Jul 2024 21:02:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5FM-006uf7-2k; Wed, 03 Jul 2024 21:02:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5FL-002sih-3C;
	Wed, 03 Jul 2024 21:02:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jul 2024 21:02:26 +0200
Message-Id: <20240703190226.686987-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_120230_052133_C37A8384 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: lds: fix "ELF has a LOAD segment with RWX permissions" warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With binutils 2.39+, the barebox build started emitting this warning.
On platforms other than sandbox, we disable this warning by passing --no-warn-rwx
to ld as we don't care for ELF attributes as they aren't used anyway.

On sandbox, however, the ELF attributes matter, so disabling the warning
completely felt wrong. Looking more into it now, we can mark the
.barebox_rodata section in the linker file snippet we have in sandbox as
READONLY and the warning disappears, so let's do that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index ab2801f3d207..de8552dba0ac 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -5,7 +5,7 @@
 SECTIONS
 {
 	. = ALIGN(64);
-	.barebox_rodata : {
+	.barebox_rodata (READONLY) : {
 		RO_DATA_SECTION
 	}
 }
-- 
2.39.2



