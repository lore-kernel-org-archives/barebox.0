Delivery-date: Thu, 23 Jul 2026 15:57:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmtvj-001z5N-0Q
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 15:57:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8529B201FBB
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 15:57:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hUA3mz6C;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="XwqZM7/V";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bv3lwDT9t1a7JtgGM3y7P7yRXkWr4KO1UOVlSEvhINw=; b=hUA3mz6Cwlviv7fhk2bgNoYrPK
	tv4GygLPOYureoycQIYzCJjgFOiKDiyxsChOgPgMO2SfvHiKrzYLdmJgYuP14gqcNgqu2kp9h0mml
	gArz7CSQfpJNu6Z8dKRUcqsg0Kn8kNeOvsMmi98Xvsbcx7NdwfNAs6UTfiwwonP9hGoSf9ZDnpZl1
	kPfwZfPQFwmqWNVosF8qlVWf3/nswmCOWaZHWk3SpUsWpF+DG5TXDCUxOhBeE8muLIRKAACLKerpa
	J1K2XH5BeyuMcg0TDjvkd0TucZf/gu1MAISQbAAcI+yW1KCZJXuNTo8s/FamMLaOxVnKyG1pW/ih4
	dXteE4sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvB-0000000EQO2-3Pem;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQLb-0b0a
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D182044226;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8278C2BCC9;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815027;
	bh=dTmziaV4vnf6Q39HGv3IAZYgWuSBvlygn4OoFvGCUp4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=XwqZM7/VTQs0mYyjWJ7uIbjA/uVgmJhyNs2H60XXUx9wvKqrjyms6RxPDDzHRYRYE
	 msNty0gCr/w9PjgWSz4ut3xpJESrR6Occmak4YpugyKzaZDUeK+0lrgQVGSF9BlPAs
	 xGVDOpur8oDvulM2+gU8GR2k1uGLomTAg1XAiFZbsRIl23PyzHCgpuvslr1H8dfHAp
	 ZnQ/uNU1jB9nKm9j1TRRMnUE/iahhcTfufEYNet3Eu4fV5qmyqespr3S/wWHd7f98Y
	 rzbyQYjKf77iI7BXl3+HmLH0MeT/eowM6sz29AjQmwNFvzd+S7Sim13pGE+INkKBXS
	 MwMUEmvKmlfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E39C531D1;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:45 +0200
Subject: [PATCH 07/19] ARM: mvebu: enable RN102 in mvebu_defconfig
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-7-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=499;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=VEuRtumRxt9rBTZUfTru87UBokpwmdtkacxlOl66o/g=;
 b=qkr0/ax6aszp8/t0IV7I1BthKeh6x3uGXgsox54PvzA4WazGjxEHSEedikxMkBzL7kGY3zFvK
 0tUnHzOo8/hD7Rwp9y5o6Ulho5RoCuRaIrTOohRYX+7Sv+PQQ8qsuMu
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 8529B201FBB
X-Rspamd-Server: mx1
X-Stat-Signature: kw5nynkqaaywwh1j84fsqk5gk5uwfi1w

From: Luca Lauro <famlauro93l@gmail.com>

---
 arch/arm/configs/mvebu_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 91dd23e1c8..a13b153f9f 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_MVEBU=y
 CONFIG_MACH_GLOBALSCALE_MIRABOX=y
+CONFIG_MACH_NETGEAR_RN102=y
 CONFIG_MACH_NETGEAR_RN104=y
 CONFIG_MACH_LENOVO_IX4_300D=y
 CONFIG_MACH_MARVELL_ARMADA_XP_DB=y

-- 
2.47.3




