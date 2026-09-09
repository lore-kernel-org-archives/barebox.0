Delivery-date: Wed, 09 Sep 2026 17:31:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4KGc-000Et5-01
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 17:31:18 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KsTzQdui;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D346C20598D
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 17:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bPSsRS1qAzkWE/7X8kUhAjXuvpjT60rLJhmJf5mkTSY=; b=KsTzQduiErvbQmPxWDpLIgfRdn
	++MAg4SDp5yHS/PkOJqa/7iWSsfQWG9wMTNIdmRVG5PPDWNtrv6ZIKfelZt2Z8S5n+os7/WbC9XuI
	p03zYreg9pWzyHP1K1dEgQSfLbBvIWTAVPHi2p5uZ7Q7vZyjbet8uKVcrNJI8NGf9MBtz5JJ/f1ya
	C3VYzwVgVo+i0dluInW4/VSuszdqCdYlEwQQXQFsI1WYHUIA86/WpIdAp+aDOdN5mljMsd1hJijBm
	KX8yfxLJzA1K1j5CLz9gajdyenYRgxIeg00UWuP/jvSA/Af1JG1tBikTpnofM+N06ZZeKlSsfcNze
	Ul+PkC+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KF4-0000000CAQm-2l9p;
	Wed, 09 Sep 2026 15:29:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KF0-0000000CAPZ-0QSV
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 15:29:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E35B20598D;
	Wed, 09 Sep 2026 17:29:34 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x4KEw-00079w-0n;
	Wed, 09 Sep 2026 17:29:34 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1x4KEw-00000000mIF-2xt6;
	Wed, 09 Sep 2026 17:29:34 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 09 Sep 2026 17:29:34 +0200
Subject: [PATCH master] partitions: efi: reject partitions with negative
 size
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260909-fix-gpt-parser-v1-1-ce1758be604a@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAF17oWoC/yWM0QrCMAxFf2Xk2UDXSVn9FfGhrnGL4CxJNwZj/
 27Ux3O55+ygJEwKl2YHoZWV37NBe2pgmNI8EnI2Bu98cNFFfPCGY6lYkpiK0ecutDnkrj+DSUX
 IHr/gFV5JKwnc/rsu9ycN9VuD4/gAEfx7VHoAAAA=
X-Change-ID: 20260909-fix-gpt-parser-92d361d6d384
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Bruno Produit <bruno.produit@trailofbits.com>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_082938_302109_0BEDEE37 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: "Bruno Produit (Patch the Planet in collaboration with
    OpenAI)" <bruno.produit@trailofbits.com> Previously the GPT parser accepted
    a partition whose ending LBA is smaller than its starting LBA. The sector-count
    calculation then wraped and registered a partition with a negative file size.
    This is [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Stat-Signature: if564k1x3ma9wbumcgb9y9gcbaeuf9yr
X-Rspamd-Queue-Id: D346C20598D
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: "Bruno Produit (Patch the Planet in collaboration with OpenAI)" <bruno.produit@trailofbits.com>

Previously the GPT parser accepted a partition whose ending LBA is
smaller than its starting LBA. The sector-count calculation then wraped
and registered a partition with a negative file size. This is invalid
and caused out of bounds reads in the bootm 4-KiB image probe on 32-bit
systems.

Fixes: 760689e5ccf1 ("disk: partitions: add EFI GUID Partition Table")
Assisted-by: gpt-5.6-sol-cyber
Signed-off-by: Bruno Produit <bruno.produit@trailofbits.com>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 common/partitions/efi.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 9a04b7014d..d3bda96b05 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -248,9 +248,13 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 static inline int
 is_pte_valid(const gpt_entry *pte, const u64 lastlba)
 {
+	u64 start = le64_to_cpu(pte->starting_lba);
+	u64 end = le64_to_cpu(pte->ending_lba);
+
 	if (guid_is_null(&pte->partition_type_guid) ||
-	    le64_to_cpu(pte->starting_lba) > lastlba	 ||
-	    le64_to_cpu(pte->ending_lba)   > lastlba)
+	    start > lastlba ||
+	    end > lastlba ||
+	    start > end)
 		return 0;
 	return 1;
 }

---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20260909-fix-gpt-parser-92d361d6d384

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



