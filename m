Delivery-date: Tue, 16 Jan 2024 18:09:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw1-002FRQ-1y
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw2-0007aJ-8x
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TrlojqY2j7brsEYDpDmjDsHGT6XWgll/UMtg6HMFxLU=; b=m9zWGunmoIluUy2SBhS136fkmn
	3hVU4Of1w1TI/gk3LyDutJ8D58yVVew/7d7jBS0G5neVya6J8X1hgut5qrmwaaibfthcCyP+MyBDc
	Hjx8FZYpaY5k081K8Xct/OWY3j5pxDhJio2B8FU/MbdM6PiT2eTKzhF/iL+J8Jcfll/EV41xASc5i
	8AXi6MXCSikENeC1aOt629PEGRRd7PGqO3N6St59lmVWizAPTD8mDB202chALCBcz/aRjqWKxeUCD
	tqwtKfOBrgcsa74nVyAEEOyMLJBvLBPlbMxoqrS7DAnyuJzxREBQQY0KSKpu+dG8A68Vsvzb/FFCa
	8OY/hAcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuy-00Ci6Q-3D;
	Tue, 16 Jan 2024 17:08:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmut-00Ci02-11
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=TrlojqY2j7brsEYDpDmjDsHGT6XWgll/UMtg6HMFxLU=; b=BAaAkbIO7XP5rF2rgs3Bk7+Sk9
	ofRTt4BgXd9J1DsnYlWgQ/2YKZuwEEqu0nCvrprsK+HUY6uIbdiq0HJ1k7kVsOvp+O+seiva5OxvU
	/0Au8JzFcIHO9+DjHl+BGxr277QgSpotGpY8PAanHz/Zso0x155lPPw5fns+VHCWHTlrEg+Xp+nTR
	9tvsZ+44PkA3i0oOZ3Adctbnj1iC4V+uzBnTssCGLcj/LwXrOfGOxwSLosWeHKSeeeXCkWGi0mJbX
	xrVkYlD34rWKVx0UWabEP6UdTluN+cxuKsewCRxeY49n48mos2C4FgaSdvfAAFtoVM/QfTBk6Aywl
	pNGSNQDQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmuo-00Ddww-PQ
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:07:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-A2
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:31 +0100
Message-Id: <20240116170738.209954-12-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170754_909779_56E0C31C 
X-CRM114-Status: UNSURE (   8.51  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/18] optee: optee_verify_header: constify optee_header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c      | 2 +-
 include/tee/optee.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/optee.c b/common/optee.c
index 2ae28b172bbb..34667f1f51e0 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -8,7 +8,7 @@
 
 static u64 optee_membase = U64_MAX;
 
-int optee_verify_header(struct optee_header *hdr)
+int optee_verify_header(const struct optee_header *hdr)
 {
 	if (!hdr)
 		return -EINVAL;
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 0cdf828a6d3a..f52775dab5b4 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -31,7 +31,7 @@ struct optee_header {
 	uint32_t paged_size;
 };
 
-int optee_verify_header (struct optee_header *hdr);
+int optee_verify_header (const struct optee_header *hdr);
 
 #ifdef CONFIG_HAVE_OPTEE
 
-- 
2.39.2



