Delivery-date: Wed, 02 Jul 2025 14:46:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwqz-00DIhR-0a
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:46:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwqy-0001xZ-LG
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MKBBmP7y7g811RWa4UEMK96laruoDHGrgVeNICcOOBE=; b=2pujPikvIB+1xWbn7syo2My8vW
	8Dfl79nDmLZ67C+tIiG+oibkdYFzvgs3pY8u8PHIIx35bIml7ebfzrUBV5JKGeSiv4PrHZJVvRRCE
	g8Tazuvt7ulbLAvdr3yezi8fbQ47G3EMZcxxOKtsFswQB19MFyj086lx0oPJloMUzHYVyebxqV+14
	KUKNrBLOjkWG+9AHS+kAVr19NR/QdAPGoE3Wug3SDJKQtCE+Avyk6XMmdt+b3tSMO0mjkmVG4VP0s
	bmpwwEfbKWT+Vwz01OIxbJ2+oMlEddwUtfhuoK9XVxGDDsuTvuJzsajnMdikBg7BaJTiJB+sdzjkl
	+JZDkyTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwqN-00000008LX7-33Lt;
	Wed, 02 Jul 2025 12:45:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwBm-00000008Et8-464I
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 12:03:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWwBl-00058r-I8; Wed, 02 Jul 2025 14:03:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWwBk-006Qk3-2P;
	Wed, 02 Jul 2025 14:03:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWwBk-00A1YN-0R;
	Wed, 02 Jul 2025 14:03:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 14:03:41 +0200
Message-Id: <20250702120341.2389232-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_050347_015471_FD8A8EBD 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ppc: fix missing cache maintenance before mapping uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

flags is the generic map type (e.g. MAP_CACHED), while MAS2_I is a bit
only relevant to PowerPC. Checking for MAS2_I in flags is thus never
true and means we skipped cache maintenance so far when remapping a
region as uncached.

We actually have a test that caught similar issues on ARM, but we don't
have a Labgrid config for CI to test on PowerPC unfortunately.

Interestingly, the fixed behavior had only been in barebox for a year,
before it was subtly broken for 10 years...

Fixes: b792124a7dd3 ("rework remap_range")
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/powerpc/cpu-85xx/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
index b484acbf8043..3bd75281eb98 100644
--- a/arch/powerpc/cpu-85xx/mmu.c
+++ b/arch/powerpc/cpu-85xx/mmu.c
@@ -47,7 +47,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 			break;
 		e500_read_tlbcam_entry(esel, &valid, &tsize, &epn,
 				&rpn);
-		if (flags & MAS2_I) {
+		if (pte_flags & MAS2_I) {
 			flush_dcache();
 			invalidate_icache();
 		}
-- 
2.39.5



