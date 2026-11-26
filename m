Delivery-date: Thu, 26 Nov 2026 17:11:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWc4j-003VDd-1f
	for lore@lore.pengutronix.de;
	Thu, 26 Nov 2026 17:11:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 46151205A8C
	for <lore@pengutronix.de>; Thu, 26 Nov 2026 17:11:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0UhERIMb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795709513;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=B+Z6CIK1gEDL8fJ56vXoef5Kh4MMpxkvCfPnbeJjHz0=;
	b=REH6wVCQueSKN9e+D6e2XjRQuDoW5MR/CHvGd/bNx3uwlZ6NtkDVx0Rk/AsXF+Opb0gAlM
	Hyk2936jh0cp1/gfZOW0+MjG9C2i2tQ0Wcdm2NcX3HPW8Lpp6rbSedL768EACxBhf5FRFh
	IYb0unMiWsZHtCisr3Q0HbvwdrlyIyTmIm/TvTqqv5oFy6J8/GJ6UARkDqEWtxKpBiJdf1
	5ZxYJVFN6huqd4bzfSDUcEx7+KQtP84+ToB2fbaIf+6sxsFPcRlqJqFG55iaDfpPJV7iBE
	WXYDo1Np4I72Cp/UTBg3QcjzZzUi9ap6OFqeGANYK45SCo6sDna/cEUuS/QTqA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0UhERIMb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795709513; a=rsa-sha256;
	cv=none;
	b=cul0426G9c8YhDyi9GCMTLZgkGNh7W0/T8kk8KS/jX0Cqn3qklmw78UGjcOjz8+SM/zLkk
	lG1bGw/4ji7lYQ9HvLMmeGqK5I5Rg1r2kZIy//O7Dn5Xp7+xKK60WKfDfwJAy328+weckm
	ojNO+EiraAJQZHd0swQyHN6HRPAg5DDrTEfSxow8Al4wn6WkYfQ8SQuAVJ5ltpuIzYZaKX
	JFxQBa2J6Cm3Tc2nVq0evEziX89rcEA/RVi1uMdhrRwPKTXoRT6HMuwagiQ7G8cFMI6vzt
	fSVyl+QHmDwQwhH/qN5ptEmYmD+Qhlr4s9Ok5LLACWm+yK4sjRuinGm2FNa7DQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=B+Z6CIK1gEDL8fJ56vXoef5Kh4MMpxkvCfPnbeJjHz0=; b=0UhERIMbvfCR1q9dKQf++T7pqH
	OqhZtF2+yRaB4zsMPebjjR08TD9CWCQCMzHwtmAL8mLkhNcWA5Mep7Ik+2znpz4lMFjEvTajfGOyB
	8mHNThBD3Cj0CAIVA9XsC9fEDzDJXPteaV44kdHcrUvHgCEE2ETRe45L/wr0bfBNzkl+xU+L70nsa
	uKmOd+Ga9lDnvSMTN68AiwmvLl9hJZFfI7WGSlNH+nABMqBgyDpTwkYpnNFzvWg9jMpoczQZYvm3m
	DR9EMbHMYtys4+I1573eb489iugbNh8AvBVKHAZM6Z9N496KpMJ7+el5WiIjbHr824Pvz1/h4bB+p
	sYaVEt/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3N-0000000DrjU-0QwI;
	Thu, 26 Nov 2026 16:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3J-0000000Dri2-1MYT
	for barebox@lists.infradead.org;
	Thu, 26 Nov 2026 16:10:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xWc3G-00050B-S6; Thu, 26 Nov 2026 17:10:26 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Tobias Waldekranz <tobias@waldekranz.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 1/3] dm: verity: don't let the superblock override the root hash
Date: Thu, 26 Nov 2026 17:10:21 +0100
Message-ID: <20261126161025.1929975-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_081029_948746_5F6C7D16 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dm_verity_config_from_sb() pastes the hash algorithm name
   from the superblock into the table unchecked, although the superblock is no
    more trusted than the data it protects. A name containing a space adds an
    argument to the table. If the superblock has no salt as well, the empty salt
    column removes one again: the second word of the name becomes the root digest
    and the roo [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
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
X-Stat-Signature: 7catztepeuex7aka7im1gjcyntjz8mkz
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 46151205A8C

dm_verity_config_from_sb() pastes the hash algorithm name from the
superblock into the table unchecked, although the superblock is no more
trusted than the data it protects.

A name containing a space adds an argument to the table. If the
superblock has no salt as well, the empty salt column removes one again:
the second word of the name becomes the root digest and the root hash
given by the user the salt. "crc32 <digest>" fits into the 32-byte
field, so veritysetup open accepts modified data against a hash tree
forged by the attacker. The name needn't be NUL-terminated either.

Let's only accept a NUL-terminated name without whitespace.

Fixes: f2cc4a0a5f3c ("dm: verity: Add helper to parse superblock information")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/block/dm/dm-verity.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/block/dm/dm-verity.c b/drivers/block/dm/dm-verity.c
index d7b212fba60a..63616ce86f0e 100644
--- a/drivers/block/dm/dm-verity.c
+++ b/drivers/block/dm/dm-verity.c
@@ -15,6 +15,7 @@
 #include <digest.h>
 #include <disks.h>
 #include <fcntl.h>
+#include <string.h>
 #include <xfuncs.h>
 #include <unistd.h>
 
@@ -501,6 +502,11 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 	if (le32_to_cpu(sb.version) != 1)
 		return ERR_PTR(-ENOTSUPP);
 
+	/* The name is pasted into the table, so it must be a single word */
+	if (!memchr(sb.algorithm, '\0', sizeof(sb.algorithm)) ||
+	    strpbrk(sb.algorithm, " \t\n"))
+		return ERR_PTR(-EINVAL);
+
 	sects = le32_to_cpu(sb.data_block_size) >> SECTOR_SHIFT;
 	if (!sects)
 		return ERR_PTR(-ERANGE);
-- 
2.47.3



