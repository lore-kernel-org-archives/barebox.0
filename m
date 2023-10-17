Delivery-date: Tue, 17 Oct 2023 16:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUG-00Bsnc-Qo
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUF-0004ea-9q
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BdgIXJwzHfK3Oi67BaZMlBpoGHcErc4BeNbUSnYW+HM=; b=ubJAs9PAImyZJuGhUyNIm+oVjb
	rNpHqA+OFNQz+nQW/OeDhM0D0LyW3a29N9cq1vwpCDo8ex1uViVtkvKajsNT5Zu7PfFuJXMpe15t3
	E04O1n9ITH0amE2a1C4xdHCSVGDal/6Qc/inNaGOkgK+lzfYZXqUTHLULLVyIbTwxdc5faXK6i0+L
	R/04FW6SSMyLckk2Pn1srhi6PbwbEbAdnSpqxbjwLCoOznE/DWQG2kXWnZRWjlR8+Jd9mYiEqCIr9
	Rt8PKDByCzeICFeke/OK6fhE3DFJwuNm4c3H84Nz81zjNBfwd8Cb23dmUvLrxbcN07kA5CH75uW/i
	tX9u5nWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslT2-00CfSP-17;
	Tue, 17 Oct 2023 14:54:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQF-00CchY-2q
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=BdgIXJwzHfK3Oi67BaZMlBpoGHcErc4BeNbUSnYW+HM=; b=phvmP2hVFj29Fr0wzlKV9pGQZL
	8har6LOnFr+zgmg7HvUOeAM5vubMM/Y551FBE5az+xBLb9qPZPRoGd7u3myXpFJluSBLdUgMvN9eJ
	9Lnd7DiuWWWwlhhrwAdFzM0Wd0IViR+PgjLJsvk1glfsxoRX2YKAFSfGwgutnJ7N7oZUeRIB5x2lo
	gWCo5zpbmck9ETHFjConAFFGcH/Dz14BTFV/MkNZ0bmi6YdEEbBeVcxUUbnX4XIPR4C6XBDnrbv47
	oTax5UrHvjm1oJSPA0kGUYa6cCFX8MVUeE9ZtjWIfZmAnUVHZ7a/t8GTnsucqzWnu7FlzMNtbvoUx
	ENAAqYVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ7-007AEY-32
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-Q5
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:15 +0200
Message-Id: <20231017145131.3069283-14-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155144_221987_4FC27387 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/29] ARM: lds: introduce HAB_CSF_LEN define for the hab_csf section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce the HAB_CSF_LEN to make conditional size changes easier later
on. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 arch/arm/lib/pbl.lds.S | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 2b4b1d6a9513..898d6be33b54 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -12,6 +12,8 @@
 #define BASE	(TEXT_BASE - SZ_2M)
 #endif
 
+#define HAB_CSF_LEN	0x2000
+
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 
@@ -85,7 +87,7 @@ SECTIONS
 	__csf_start = .;
 	.hab_csf : {
 		BYTE(0x5a);
-		. += + 0x1fff;
+		. += + HAB_CSF_LEN - 1;
 	} = 0x5a
 	__csf_end = .;
 #endif /* CONFIG_CPU_64 && CONFIG_HABV4 */
-- 
2.39.2



