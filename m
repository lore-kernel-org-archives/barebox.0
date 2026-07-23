Delivery-date: Thu, 23 Jul 2026 15:58:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmtwO-001z6O-2F
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 15:58:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 26DBD20271C
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 15:58:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Qh8P4NCw;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gKl4rdcU;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgXSI49rnjAwXvgrjrR6S9qnNjsawdT5atE+mTg0bN0=; b=Qh8P4NCwOpTibfFKKmkz+0ns3m
	jPVlgAFieJN3SjDWPN8SMY6Xr7e67AtLSvoI7owzcZ7bKOEU8DW4R1BGj/xQvlldWq71l6cnwaS3I
	Fz3ezPK6S+8PGxwYFwwSwQacDOE/PoIU/LUqz8INv8vz/k+XAn4qbtOZCXupEAeXEQEDh6HP15ywr
	kf5Y+H9Pb/j3Bl1vsOu6Htmh1mwqP2XDDCCrbiQzuDX5BFWMQ2QWoV16QE6jrAIZf5Nj01zvQhNTt
	mVjvwqqpzmPlb8uvjFn7wOs19Ve7pqvOYL0iQw9o8KA/y/fpQ3aPddyz94aGS+KK6s1bN8o1zof84
	L7OkLS6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvD-0000000EQQU-30ho;
	Thu, 23 Jul 2026 13:57:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQMG-3uTm
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 553F760A73;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B1BFC2BCC9;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=NHOargCS32y2iYua42OOhp0ne7ED5WDdapeDqOEGnDg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gKl4rdcUQq3HpPoL0nNjc5sfSRtRFMOFOb23zgEvR3QERSjXBeaxuEpw0/RZMRaN+
	 AGQli6v5assCuAx76wQyOnJc+4X52IO+UqGd9fIt4+2wnOrTtEC26tce5dbx70TF6E
	 /RW/Z3iHcAhBkNi7RMksL8soDVA2tN005EGBtisBLaDr4f4mZ8bBz1DNU2bt3fCddp
	 vJMUfIKG6O25KYN48gnK7iY5GBwa4EOqcLdVnJ+uvgMPOsgg9mEDjrxW12SObDIbDD
	 IBI9MXbk1WzhR7/2kNuBuEncIha9QfMpJZu0VonI/EbGohyg65q3Q815rbzLTjSEU4
	 dezX1Hy6V+hUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED411C531D8;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:49 +0200
Subject: [PATCH 11/19] ARM: mvebu: adapt RN104 image support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-11-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=1003;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=sNCvOwcye+QHAYTnND2Fr5KWHRIURfKOjsHl8q4ianM=;
 b=eVhXxWDV+aQX5Vz/vHgDHt2ZvzLyJltfqnu0EN2PeTIaypvUBFwNmK9/dcO6ObUV54VC4D3Ku
 iUxdnciVH0qBNcrK9Nbcsh4Vchj/wb2xHfj+Ni5AmrhFbM5XHucKPvw
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
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 26DBD20271C
X-Rspamd-Server: mx1
X-Stat-Signature: 1zqbbhujtmagg95479bgkzj44ridur6i

From: Luca Lauro <famlauro93l@gmail.com>

---
 images/Makefile.mvebu | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 1741f0e9a5..106a302cfa 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -37,10 +37,9 @@ image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102.img
 FILE_barebox-netgear-rn102-2nd.img = start_netgear_rn102.pblb
 image-$(CONFIG_MACH_NETGEAR_RN102) += barebox-netgear-rn102-2nd.img
 
-FLAGS_start_netgear_rn104.pblb.mvebu1img = -d 0x600000 -e 0x6e0000
 BOOTSRC_start_netgear_rn104.pblb.mvebu1img = nand
 BINHDR_start_netgear_rn104.pblb.mvebu1img = $(board)/netgear-rn104/binary.0
-FLAGS_start_netgear_rn104.pblb.mvebu1img = -B 0x20000:1
+FLAGS_start_netgear_rn104.pblb.mvebu1img = -B 0x20000:1 -d 0x0 -e 0x0
 FILE_barebox-netgear-rn104.img = start_netgear_rn104.pblb.mvebu1img
 pblb-$(CONFIG_MACH_NETGEAR_RN104) += start_netgear_rn104
 image-$(CONFIG_MACH_NETGEAR_RN104) += barebox-netgear-rn104.img

-- 
2.47.3




