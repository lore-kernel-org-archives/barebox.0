Delivery-date: Tue, 27 Oct 2026 08:42:50 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbpa-003pQh-0J
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:42:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F6AD201CE0
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:42:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="oAbIb/B0";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086970; a=rsa-sha256;
	cv=none;
	b=Z9U3I+MhNkWJRf38RGSwhvE98zsvmHtM4R7cw0NiGVn4hUyUrw//E1w79AotEZv3tpHtJ8
	CenssG0XUYT9T6sIJRPyd/fiUcu8ka+Hje/r91/XGEnJl69+8vwTj7AlCblhTG6MJ7A1Oh
	XOU/qxHxNZnYfIHSHIo+fA7WiTi13veNXzPylwaRTwp7kyO+25j268AFITSZysOE+pyqSJ
	0hkV4Pcsqh4qkQwlN9GYDZdZWH0T2iyPeWiY//pTheymDV+SERywwZuXTz2z8HP4bYFeIf
	10XHsNwY5CCs8QU88sVden1aHH7qNeyKAHmBvBVWcR6sOcKJB/aXhAKqBCL1pg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="oAbIb/B0";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086970;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2p7umYOAp1BQxbh2N8GMBnY1wG61zzSxGyALDIaEBjQ=;
	b=DwyQn9zdeoXrz18bojdgLnPA+zzexEToUU62Uk1yu5+S5bL574QMHmL1oE6Vp/3RVIgodN
	PFMpHCaFgdndh6Dj3uWAryXi2SyrDHxvLVbKTx02iN+5ObhdQlaTlWcYfCKFOGRT2qhFmc
	yMUerp5/LpB/rqZmbgikuPFl3Bj3lN2WRQSby4Hn0x3qoRVduPFyDfgflzh9vZvXpASqWY
	CrS9VdvYRt4CYUVmwuyir13e7vvstrg5zk27v8jSqbYpEnjkjy1Fd2pz7ae/yGvN0KEAiq
	LV+6dMRFxixRmNhg8bGh1GOgZVSoIhfLrDiX+SkQ+R2ShBbuIxrKuuQ3CRy66w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=2p7umYOAp1BQxbh2N8GMBnY1wG61zzSxGyALDIaEBjQ=; b=oAbIb/B0TI755c
	vmcY/yKjyYeLGbC1FeAYwg63Gdv2Ug0x6K+VE9JGFq56etDQ9RRKmvWSuxuIq4fBDenUxTwUSWiG+
	wr+6AZP7WCtmvO6x7QeOyMPtxheaTQWbfNbsA0ykHcatViRHTre/RnQRaA6pRx41jN+Pxv0PVO3Uz
	4gXgG9G5v1y/BjRFS7j4xBojEug+hE9XTrMbK9NW1IWqPVLbG7svhza+s2c95rK9zxMfnoUajpATJ
	x8MFqOhUS2MRd/kqoyBdiL9+ga78iilO2RO4IPW6fxzn03VwhxWVwOzTf/80tD7aqpoybY4LObqd4
	cs9LJfvoJe1534HBPtoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnD-00000003uy4-3t7b;
	Tue, 27 Oct 2026 07:40:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003utw-1IGe
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn6-0003zV-Fj; Tue, 27 Oct 2026 08:40:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 03/17] RISC-V: implement relocate_to_adr_full()
Date: Tue, 27 Oct 2026 08:24:36 +0100
Message-ID: <20261027074014.3280396-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_407907_BD464C64 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In preparation for the new common PBL entry code that will
    make use of relocate_to_adr_full(), implement it for RISC-V as on ARM. Unlike
    relocate_to_adr(), which stops copying at __bss_start, the _full variant
   copies up to __image_end, so barebox proper can still be decompressed after
    the move. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 1F6AD201CE0
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: s1acra4prrrajb83zx5651j4ysk1qz1a

In preparation for the new common PBL entry code that will make
use of relocate_to_adr_full(), implement it for RISC-V as on ARM.

Unlike relocate_to_adr(), which stops copying at __bss_start, the _full
variant copies up to __image_end, so barebox proper can still be
decompressed after the move.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/include/asm/reloc.h |  1 +
 arch/riscv/lib/setupc.S        | 16 ++++++++++++----
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/reloc.h b/arch/riscv/include/asm/reloc.h
index 9a59326cad27..6b921ff702d7 100644
--- a/arch/riscv/include/asm/reloc.h
+++ b/arch/riscv/include/asm/reloc.h
@@ -7,6 +7,7 @@ unsigned long get_runtime_offset(void);
 
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
+void relocate_to_adr_full(unsigned long target);
 
 void setup_c(void);
 
diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index 938c78350c7c..68924f2f94df 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -39,13 +39,22 @@ bss_cleared:
 
 /*
  * void relocate_to_adr(unsigned long targetadr)
+ * void relocate_to_adr_full(unsigned long targetadr)
  *
  * Copy binary to targetadr, relocate code and continue
- * executing at new address.
+ * executing at new address. The _full variant takes the piggy data
+ * along, so barebox proper can still be decompressed afterwards.
  */
 .section .text.relocate_to_adr
-ENTRY(relocate_to_adr)
 					/* a0: target address */
+ENTRY(relocate_to_adr_full)
+	lla	a3, __image_end		/* include piggy data */
+	j	1f
+ENDPROC(relocate_to_adr_full)
+
+ENTRY(relocate_to_adr)
+	lla	a3, __bss_start		/* skip piggy data */
+1:
 	addi	sp, sp, -SZREG * 2
 	lla	a1, _text		/* a1: source address */
 
@@ -61,8 +70,7 @@ ENTRY(relocate_to_adr)
 	add	a2, a2, a0
 	REG_S	a2, (sp)
 
-	lla	a2, __bss_start
-	sub	a2, a2, a1		 /* a2: size */
+	sub	a2, a3, a1		 /* a2: size */
 
 	jal	__memcpy
 
-- 
2.47.3



