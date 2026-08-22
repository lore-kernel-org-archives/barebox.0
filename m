Delivery-date: Sat, 22 Aug 2026 16:09:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxmPC-00603r-2X
	for lore@lore.pengutronix.de;
	Sat, 22 Aug 2026 16:09:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 10A302018C1
	for <lore@pengutronix.de>; Sat, 22 Aug 2026 16:09:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jwc6X+99;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=MnbBsyEZ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TQimxIhURvlR+VAXVNEEsHaqymuhNZOXbemSDqJONhs=; b=jwc6X+99is+GCN
	yer1zoStTPB13zaVt2AnEWKBBjmuf2vyQ7giXstP6Bw9FyC2xQ3feyppRel9YGFuuJZLORR7vnpV6
	R9GZjd//fLxZnapxAqegcApVHyKuMlA3p8oxVkCbbdGQ9OknjoO6wwdKBiIQP3RpvmmaM0l7ybPoe
	G3e7i2/AA2LXZyME6nIsPDxGz1Ew3rEm2XgvjRc0eWvYcw36xKmZtkzLsZLLphF9+VhxCLyntV5v8
	VtYvaVc40nhqNsYfNGGMb+3G7/4+tBCJRNa8DbKqreDJ6I1LVixdxPBhBGjrfEo2wleioF+77uO+V
	i5Ph+FdJ2475sU0jAFfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmNw-0000000EZpG-3tQg;
	Sat, 22 Aug 2026 14:07:48 +0000
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxmNu-0000000EZoe-3mr5
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 14:07:48 +0000
Received: from eig-obgw-6003b.ext.cloudfilter.net ([10.0.30.175])
	by cmsmtp with ESMTPS
	id xeNwwMwQBusRSxmNtwOEBG; Sat, 22 Aug 2026 14:07:45 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xmNrw5Dg8w4ZCxmNrw50cW; Sat, 22 Aug 2026 14:07:43 +0000
X-Authority-Analysis: v=2.4 cv=UYFRSLSN c=1 sm=1 tr=0 ts=6a89ad2f
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=Iyr-UzGxA19EDixH5X4A:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TQimxIhURvlR+VAXVNEEsHaqymuhNZOXbemSDqJONhs=; b=MnbBsyEZi6bgYhTt7yneW5yji2
	i3FATkMisztHzAseWxThH1gsDAGkQ3QwPTkJ39Cr3XRP6XHfw3iXN+49cCsYd6AUZanCMHw2Rr+5o
	IgGlxTERshst3Oz6SWmmfCyK+fbzqFCN4MbLTMFjiu+tgPPOH4kkWn4VoCA4qvr1cNrA=;
Received: from [71.238.14.13] (port=49816 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxmNr-00000002uYl-0eyN;
	Sat, 22 Aug 2026 08:07:43 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Sat, 22 Aug 2026 07:07:31 -0700
Subject: [PATCH] ARM: mmu64: fix arch_remap_range permission-strip order
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260822-send-mmu-remap-order-v1-1-4ec8375941c5@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAyA4VchPdsEpoHpqxgPk7VQkg3SgjEhv
 LtTj9/h/3cwUiGDW7WD0ktM5lzQnCrox5AHQonF4GrX1t41aJQjprShUgoLzhpJkTl0V/Z89pc
 OSroosbx/2/vjb9ueE/Xr9wXH8QHykM2MeAAAAA==
X-Change-ID: 20260821-send-mmu-remap-order-ffa79f8f3847
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wxmNr-00000002uYl-0eyN
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:49816
X-Source-Auth: stephano@cetola.net
X-Email-Count: 3
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGWX+d90a6N+ToCduHblPXNKV1zqCYRGokynl89T+4boZ6+NrFkp4vua7Eo/I0oiJbWscU4Bq6iHtuJq8iujVQA8ddWVxU/yQr/6N1inCetORWh77viG
 BZ/I0gtOj90OuCy1IfPUq0XQAJn3L4roxTERIYsQmLhh8IbkqbSgFFtcmfoxKaJzlhc3U1w5fYyrLIjlFEpXYWV2GMIRDx5e4eI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_070746_973503_7B4E31CB 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  arch_remap_range() reassigned map_type via arm_mmu_maybe_skip_permissions()
    before checking maptype_is_compatible(map_type, MAP_CACHED) to decide whether
    to flush. arm_mmu_maybe_skip_permissions() can [...] 
 
 Content analysis details:   (-0.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
                 [Blocked - see <https://www.spamcop.net/bl.shtml?35.89.44.35>]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ink9gahs61ps4pnaj1cb4d567h189xqz
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.35:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: 10A302018C1

arch_remap_range() reassigned map_type via
arm_mmu_maybe_skip_permissions() before checking
maptype_is_compatible(map_type, MAP_CACHED) to decide whether to
flush. arm_mmu_maybe_skip_permissions() can turn MAP_CACHED into
MAP_CACHED_RWX, so the compatibility check ran against the
already-stripped value instead of the caller's original request. A
plain cached remap could silently skip the cache flush whenever
permission-skipping is active, because MAP_CACHED_RWX no longer
compares equal to MAP_CACHED.

Fix: evaluate the flush gate against the original map_type first,
then strip permissions afterward, right before the actual remap
call.

Found by code inspection while auditing map_type handling in this
area. No incorrect behavior has been observed in practice. This is
a correctness fix. It is not a report of an observed failure.

Fixes: 317aff483607 ("ARM: mmu: introduce new maptype_t type")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 arch/arm/cpu/mmu_64.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7f38473079..bf44cc7bcc 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -286,11 +286,16 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
-	map_type = arm_mmu_maybe_skip_permissions(map_type);
-
+	/*
+	 * Check against the original map_type: permission-stripping below
+	 * can turn MAP_CACHED into MAP_CACHED_RWX, which would look
+	 * incompatible.
+	 */
 	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
+	map_type = arm_mmu_maybe_skip_permissions(map_type);
+
 	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type, true);
 }
 

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260821-send-mmu-remap-order-ffa79f8f3847



