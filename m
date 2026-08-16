Delivery-date: Sun, 16 Aug 2026 20:02:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBm-003pij-2J
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5ED4A200444
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2auTeesU;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A2WtmoM0MGLjZXXLDTyelmYG/EMSv1RP3rB5uIr35N4=; b=2auTeesUkz0TYSNLPm7x78H8/y
	zF7DFNGlGE5j5tOHIhxsaUXQUhIdgsxCD4Hc5u887NYfLG1fL/7eHOptvJtgnNZBIIFidjwBLJ+19
	Kytlip+FTVa6LWWbpeejpUyIVzAv7kvxDKxEkOLwBLp17XGwJ35r9tlj/sZsDyT8GWcKUC2eYbvG0
	x8MDb2ApdnO7nDBbHwKo3ZUqkDUVaU7CfY1wvaaeFCXcifrRLHrLiZtR0f0A9o3EUP24MYgJl7RkH
	Qh8T/4W4Sjhv0230xjOK5qjHU+KciUVgGE522R6IpjPogxiQR7O8af59UNlF8CQDj+K/sE7Hjve/2
	WxXnF/TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xWw-082u;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xN9-0gQ6
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2F8D0201EA3;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001orn-0N;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1A7q;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:41 +0200
Subject: [PATCH 21/27] filetype: detect PXA3xx NTIM images
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-21-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=2160;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dq5r5zpFw+kPXLjOidn6dy/L1ymadVXh26eqYiOMC9A=;
 b=lEo0ytRS4iJ3agi7u4+o14XqT0zvG48YSLHfOI3QKr2zX4NpwCEILNe08iecPuQeajzcewKTu
 AVmb+QPKZcjCr2dx6rrfhaK9RNb7SMvz1Np+7p9XLYJiUcSijev0D/v
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110204_404951_7DE72C77 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The image scripts/pxa-image builds - the NTIM header the PXA3xx
    Boot ROM reads from the start of the boot device, the OBM and barebox - has
    no filetype, so the one thing that cares has to recognise it [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: snqqywr8c9pthtin1i4fce7ftj3zzk15
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 5ED4A200444

The image scripts/pxa-image builds - the NTIM header the PXA3xx Boot ROM
reads from the start of the boot device, the OBM and barebox - has no
filetype, so the one thing that cares has to recognise it by hand.

The header carries no magic. Match the version field, which is the one
the Boot ROM in these parts expects and the only one the tool emits,
together with the 'TIMH' identifier that follows it.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 11 +++++++++++
 include/filetype.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 01cef7f1fb..5f65b8a4f6 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -91,6 +91,7 @@ static const struct filetype_str filetype_str[] = {
 					   "rk-image" },
 	[filetype_x86_linux_image] = { "x86 Linux image", "x86-linux" },
 	[filetype_x86_efi_linux_image] = { "x86 Linux/EFI image", "x86-efi-linux" },
+	[filetype_pxa_ntim] = { "Marvell PXA3xx NTIM image", "pxa-ntim" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -386,6 +387,16 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
 
+	/*
+	 * The NTIM header the PXA3xx Boot ROM reads from the start of the boot
+	 * device. It has no magic of its own, so match the version the images
+	 * barebox builds carry along with the identifier of the header itself,
+	 * which is the first of the image entries behind it.
+	 */
+	if (le32_to_cpu(buf[0]) == 0x00030102 &&
+	    le32_to_cpu(buf[1]) == 0x54494d48)	/* 'TIMH' */
+		return filetype_pxa_ntim;
+
 	if (strncmp(buf8, "RKNS", 4) == 0)
 		return filetype_rockchip_rkns_image;
 	if (strncmp(buf8, "RKSS", 4) == 0)
diff --git a/include/filetype.h b/include/filetype.h
index 2fd0e22177..5b0bd9d399 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -72,6 +72,7 @@ enum filetype {
 	filetype_rockchip_rkss_image,
 	filetype_x86_linux_image,
 	filetype_x86_efi_linux_image,
+	filetype_pxa_ntim,
 	filetype_max,
 };
 

-- 
2.47.3



