Delivery-date: Thu, 08 Jan 2026 16:50:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHl-002fSA-0P
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:50:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHk-00079X-Gz
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:50:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YNPulw9b4ErJFfJT+KPjwRIR8LbX53jFr15wBAJsQts=; b=EJklj7//E7jzQudkmbqXQZOrEb
	UdfYFJ7/YR/EC6Sv2X7xJ3E424SM76JdeAi3aypeVQsLK1IqNQHxt6OHXlxP7ZcGKYlbOY6Vosy59
	MHKDhU3AoN3llH7HdGfZXTXjm3eBBZeDg/59C7uvCrdpydGpZsIKMj/Gto1zN59Hos+9SXykcvwdZ
	CYcMkN/r+SO+L9QVkROZpMB6AgbTZlSRrXYFxhPVLX5ZR1AsBVKuzOvNXBk5NGtUBR/KGGaMSdDJH
	smiN8drMEUydcC7T++rpGZc+L2THTjs9HXPS2IRSphPYWZ9ViEfs08aaZi4Q+e0+RqIb9/Qt3ex2s
	/BHJ+YfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsH9-0000000HaMi-1A9V;
	Thu, 08 Jan 2026 15:50:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsH7-0000000HaLT-2Hx6
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YNPulw9b4ErJFfJT+KPjwRIR8LbX53jFr15wBAJsQts=; b=mpo8j2mJEnzF129TdFtf5WFzUn
	nf+isf4wZ6qMY6CPOPp49F5zqd2TkkkdmPOvg3X0JXy0Rbqvwg/CYQUTwwqgzPwmKEiKVdUmQVn0T
	yqPH3qDcQg/N/9mr35flCE/j3MhHNNxRh41sgtOHzsks+J89VKX03fbIMHFno4C9lKbeoCCdZD+D2
	2JURYvamLZg7k7+7G3Fsbj2DP60hjG/dm+qMBBoc5DE1Qmo3QwOAhGe8962nfWg4ylPfRwZ1kub/F
	G3qFQJv+Lz69zEM55YiPwbBxvBCkfnmBCwGGRNrAeXEq0pM1ZOdFdFb7Oa15qaPi4i/hix3X6vJAk
	yaiG2jaA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsH4-0000000DYfD-2h25
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hH-S7; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hV7-1P;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1KJ4;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:49:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-2-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=621;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=giHZnv3lupzW6T+rvKVmnyEckI0yV6FEhzAfDOUEv2U=;
 b=K9UbxYLbSUzISTScBt552wQTx47famjH/nJ11f/PVuQXtHMqmagYuVVJxsYBCAUO5bq3ermSb
 AMOpo19+tmCAlna9OLTxthb5FYAhL1htA4g8VKnEvPXBGe3EpK8FHv6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155010_812342_F280A19D 
X-CRM114-Status: UNSURE (   8.75  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/23] elf: only accept images matching the native
 ELF_CLASS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 18c541bf827e6077e64c15f62cb4abedc68cf278..a0e67a9353a12779ec841c53db7f6dba47070d8d 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -213,6 +213,9 @@ static int elf_check_image(struct elf_image *elf, void *buf)
 		return -ENOEXEC;
 	}
 
+	if (elf->class != ELF_CLASS)
+		return -EINVAL;
+
 	if (!elf_hdr_e_phnum(elf, buf)) {
 		pr_err("No phdr found.\n");
 		return -ENOEXEC;

-- 
2.47.3



