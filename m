Delivery-date: Mon, 04 Mar 2024 20:08:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgG-008dZe-0k
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgE-0003mg-OV
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOmUPy4DRyaH/1WyoInVr1tp/sZEBE+cpvJQ0NY4tBw=; b=Cb+ofRG3uSsAcVVgbooZZJ2ia5
	7yI3zVKDAgrTpJxLAtABX0bZ3r9LYM0C/d8gTvNo/TtbfHmTQq+knFhFtgqj0/BfssXtIsM+gPGOZ
	N1XN+TeqfCfrvX6+UKAwLk+Pv4YcndN19g3J1qxpJ+dVgMBG1Na5O8KfAsqjogjH23PLtfgL59WNS
	nxPdj/9Bpd0nE4jrr+jXfJrEFEEZxCjB5DHR/D+5PJHbj3JoBMkqGruzK8pHPJ/cNySXohOMFXgH5
	t7bmy7++dJDsyko/j3QUi1o3b5PNoZMTTd9xqOVHWKV1MXt+ltr9ONnj/vDPw7+SjaDVFG7vCk1+I
	Vp/tdZIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfa-0000000ALz9-3Df8;
	Mon, 04 Mar 2024 19:08:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-0000000AIXU-2xxE
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WOmUPy4DRyaH/1WyoInVr1tp/sZEBE+cpvJQ0NY4tBw=; b=A5KLJISNcK7KaTXwaFc0sjsJ+R
	7fRqyUDn/9F3TzDfYPukEO13/VdMXbQx/e9Ylp7M/TI+1S/1QYwYZApGb+wstjQs/D+XKoFVoxMU5
	omRFXuKqf3+Msvw6iWkI1l/16OBlB+pnjVq8iZvo8hnLwsCQpwjOVhiRIYnpk5QNbGprBf9X27Kx5
	YF2Biiv2WSGhKMTNApRi2Y+TDhPXpnjFre5r5xNqDkKokaprZc3jJQBkHmW1NuFku96nsroin+DCR
	LFCMjYPDj3GK/3i5dG14TnRl9wr4STYoxTdDeJNmlRl032ruXcIKwskCNL4DKNiyH73twqAgurgib
	jeCNGtYw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-000000051vh-38FX
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006E3-50; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLI-Hn; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-2P;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:00 +0100
Message-Id: <20240304190038.3486881-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190254_849184_A335CDE3 
X-CRM114-Status: GOOD (  10.44  )
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
Subject: [PATCH v2 015/113] efi: payload: iomem: adjust types to avoid casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We make ample use of GNU C's support for void pointer arithmetic, so use
it here as well to get rid of the helper variable.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/iomem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 6b92ca993aa7..316dacd6b3c2 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -142,8 +142,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 
 static int efi_barebox_populate_mmap(void)
 {
-	void *desc;
-	u8 *mmap_buf = NULL;
+	void *mmap_buf = NULL, *desc;
 	efi_status_t efiret;
 	size_t mmap_size;
 	size_t mapkey;
@@ -169,7 +168,7 @@ static int efi_barebox_populate_mmap(void)
 		goto out;
 	}
 
-	for (desc = mmap_buf; (u8 *)desc < mmap_buf + mmap_size; desc += descsz)
+	for (desc = mmap_buf; desc < mmap_buf + mmap_size; desc += descsz)
 		efi_parse_mmap(desc, __is_defined(DEBUG));
 
 out:
-- 
2.39.2



