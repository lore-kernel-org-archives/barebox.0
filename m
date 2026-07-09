Delivery-date: Thu, 09 Jul 2026 09:33:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whjGf-001q73-0O
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:33:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E86172006EE
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:33:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ItkrHap2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iXpGTzsfSaneaYuA1wz348Ec6vnECyyhS6EPShJfGyA=; b=ItkrHap2dSHeoYHvovSjq71TKw
	Z54B1Q9UNORe6uBFd99fTSyunIDnF6UPF4z0N8I67Wo+7yyF8pdmO7KT1t8NsrD+eYcLP7TO2IS+V
	Vk6a8XAep3ud4O/j5xJC8u77yCM+4lyKUysR2/okt7miIy2J3zXZuyFm4R0P89bo6aOT5ILWNTUkJ
	kAVrL3yr483vHj15VEjU6FeQuyW5AUqn1XVHSq3a8nDGDRt9HbRe1roSNokhd/g6fpeYNUIAzeftP
	OCZwTWVxj7kv3hES28P+JLHWjfRgwRlFHUQtcKsbp+fg29A6JXt680oi0n3s38Ryq6Eds2t7+A3ju
	ZDq1fBcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjGB-00000001IyO-0J40;
	Thu, 09 Jul 2026 07:33:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjG7-00000001IwW-0qsv
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:33:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whjG1-0005ve-C3; Thu, 09 Jul 2026 09:33:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] partitions: efi: validate complete GPT entry array
Date: Thu,  9 Jul 2026 09:33:14 +0200
Message-ID: <20260709073316.522048-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_003323_239987_73D91C31 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Fedora-Workstation-Live-44-1.7.aarch64.iso image advertises
    248 slots, which exceeds the 128 partition limit that the barebox EFI partition
    parser enforced because of the MAX_PARTITION macro. The enforcement is not
    only for creating actual partitions, but also for computing the CRC, so valid
    GPTs with a larger entry array are rejected, even though they have fewer
   actual partitions. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E86172006EE
X-Stat-Signature: qqmyuki4gxyobe6j8r8wyb3xjjcsgn4y

The Fedora-Workstation-Live-44-1.7.aarch64.iso image advertises 248
slots, which exceeds the 128 partition limit that the barebox EFI
partition parser enforced because of the MAX_PARTITION macro.

The enforcement is not only for creating actual partitions, but also
for computing the CRC, so valid GPTs with a larger entry array are
rejected, even though they have fewer actual partitions.

Read the complete entry array for validation while keeping the
existing export limit when partitions are registered.

Fixes: a576f2f7e5af ("partitions: efi: fix overflow issues while allocating gpt entries")
Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 18a8c4d56632..7ec54a98e335 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -142,7 +142,7 @@ static u32 compute_partitions_entries_size(const gpt_header *gpt)
 {
 	u32 nb_parts, sz_parts, total_size;
 
-	nb_parts = min_t(u32, MAX_PARTITION, le32_to_cpu(gpt->num_partition_entries));
+	nb_parts = le32_to_cpu(gpt->num_partition_entries);
 	sz_parts = le32_to_cpu(gpt->sizeof_partition_entry);
 
 	if (check_mul_overflow(nb_parts, sz_parts, &total_size))
-- 
2.47.3



