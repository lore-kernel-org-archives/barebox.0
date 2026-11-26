Delivery-date: Thu, 26 Nov 2026 17:11:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWc4j-003VDS-0C
	for lore@lore.pengutronix.de;
	Thu, 26 Nov 2026 17:11:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C17E9205A86
	for <lore@pengutronix.de>; Thu, 26 Nov 2026 17:11:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="UdWe/Yg2";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795709512;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ta8EA2vSWBoIgQHKspvzYKh9WPoYQbl34CRzpiER/h4=;
	b=C0qneQ8E4W15Ap7cVKyYb/zZA2erDlIszgDOc5aGwoLaB4y3xnwPRxBNizXxdpCkmRVx5M
	UblUtnfbN+8wge7FR0IZokgIER1XvlrRUvpvTpj3bWBzLze4+0MFW1E4UxzAHTCf4KyMFv
	nCnv5xUabGIjnSfR6ihUG6r21k9dd4ErMvEN1m29aA+LugehxBJ+0jpcHyq1l2AkPvDOW8
	33NoPea70n3umF1roYx4dZ+iM5l5UBYa3os+x4VqcRBwOmnsqj2snJOW83BODcJ3wYstuv
	rd039nFe6SKYobUTV7AvQJ0WwcrRaAkwIWJhoPAy6E1vxAou0MJITpIaPYaIqQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="UdWe/Yg2";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795709512; a=rsa-sha256;
	cv=none;
	b=BWnrZfHOgZAaTic9F4YCfbFCoRRWlQ4dSRKsjHGd0oYWABmKhCmIwjNd35GSENwMWg7hj/
	km2JH5Zec6W83CrbcvQbJkaShrFJa3Jc+NxiXquK4ynDZik6G+l31BoGFOJf+e01VzgZLt
	rbBr/qoxncRS74BxxRWv3uHQQ0ka+0sCxDIvsyo+m3HRXbXq/QFVrj4KMel1pRAaRiM9/S
	BMz6VH2fQctb2Odihfu44flvEEUOBGOBuio8wvezwK4MobyhI7xar0Qe945PE5n3nbUBSv
	rK0Zfcpo4J6AMdfaLLbdK7AomqGx7ULgrt6TXLF9cIXIm0RoT2CH0BTLnJcTTw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ta8EA2vSWBoIgQHKspvzYKh9WPoYQbl34CRzpiER/h4=; b=UdWe/Yg2k8Gjk1
	yGQk4hebqf1zq567u6mAMDNMZRbusKMOOA2zRWe4lO77qjIj/32GOVy7mK5Slhc7pu9JAW4cIMLC7
	EvEbHuJyrEHiuZTBSdcgK7WFq9IObU+hig1kdyJN8o4yEBA4Z2XVyJBXpiJI4hRBXR/H71Tjl7HX6
	1xgawsyAixt4yDLPgdEoBgCfdy09axrJXTjahspWRBetBF7WceY1eN894pfdbIeSmem9gziLQyLWs
	bS6UVvXxfOY43eHR6POFM4ab5HAw+zGC4ry7JBSvMlodqPIl1w2xH8vUpD35Hiu/Tfs3V7BB5baim
	73M4m0VNDKBfkoXHPr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3N-0000000Drjf-0lRV;
	Thu, 26 Nov 2026 16:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3J-0000000Dri5-1MLm
	for barebox@lists.infradead.org;
	Thu, 26 Nov 2026 16:10:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xWc3H-00050B-45; Thu, 26 Nov 2026 17:10:27 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Tobias Waldekranz <tobias@waldekranz.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 3/3] dm: verity: support superblocks without a salt
Date: Thu, 26 Nov 2026 17:10:23 +0100
Message-ID: <20261126161025.1929975-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261126161025.1929975-1-a.fatoum@barebox.org>
References: <20261126161025.1929975-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_081029_947859_D496F935 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  For a superblock without a salt, dm_verity_config_from_sb()
    leaves the salt column empty. The table parser skips empty columns, so the
    target gets 9 instead of 10 arguments and hash devices formatted [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Stat-Signature: 5gq8nbifa1p8km94yhuaggwfgx1ikezr
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C17E9205A86

For a superblock without a salt, dm_verity_config_from_sb() leaves the
salt column empty. The table parser skips empty columns, so the target
gets 9 instead of 10 arguments and hash devices formatted with --salt=-
can't be opened.

Let's write "-" instead, which the verity target takes as no salt, like
in Linux.

Fixes: f2cc4a0a5f3c ("dm: verity: Add helper to parse superblock information")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/block/dm/dm-verity.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/block/dm/dm-verity.c b/drivers/block/dm/dm-verity.c
index c4f88852b5f2..ca32dc326730 100644
--- a/drivers/block/dm/dm-verity.c
+++ b/drivers/block/dm/dm-verity.c
@@ -483,6 +483,7 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 			       const char *root_hash)
 {
 	struct dm_verity_sb sb;
+	char salt[2 * sizeof(sb.salt) + 1] = "-";
 	unsigned int salt_size;
 	blkcnt_t sects;
 	ssize_t n;
@@ -512,17 +513,21 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 	if (salt_size > sizeof(sb.salt))
 		return ERR_PTR(-EINVAL);
 
+	/* An empty column would shift the arguments, Linux uses "-" too */
+	if (salt_size)
+		*bin2hex(salt, sb.salt, salt_size) = '\0';
+
 	sects = le32_to_cpu(sb.data_block_size) >> SECTOR_SHIFT;
 	if (!sects)
 		return ERR_PTR(-ERANGE);
 
 	sects *= le64_to_cpu(sb.data_blocks);
 
-	return xasprintf("0 %llu verity %u %s %s %u %u %llu 1 %s %s %*phN",
+	return xasprintf("0 %llu verity %u %s %s %u %u %llu 1 %s %s %s",
 			 sects, le32_to_cpu(sb.hash_type), data_dev, hash_dev,
 			 le32_to_cpu(sb.data_block_size),
 			 le32_to_cpu(sb.hash_block_size),
 			 le64_to_cpu(sb.data_blocks), sb.algorithm, root_hash,
-			 salt_size, sb.salt);
+			 salt);
 }
 EXPORT_SYMBOL(dm_verity_config_from_sb);
-- 
2.47.3



