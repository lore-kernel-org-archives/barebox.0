Delivery-date: Wed, 04 Mar 2026 08:53:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3H-007uPT-2y
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:53:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3I-0006wF-6U
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:53:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1YXo7RXOewrUcMAR32oCNJ8pq0f+FVB2WdUwWjGpq9U=; b=sXSVJZttr6zJwP
	FcUSxPeKDAlH3eOHUsobLptNxzD93lIiwx2N+RlSTI7Dg4HjSNVRFVHTOhx1K0eiEMWOgpgBSo+eY
	7+Dr+5v0XOUMgVtDbP9F3sK0DwEbx9qVVeSIIDLBYaQ56ANG5XzM/9KKUKuVOPCD+1QuWBu7I3dhf
	OtuqQWYD5owucnwZzmFPE8Q+tPkx4EmiAq+WJY5xJRoRTGNbU/xMkhIdLWT3A37Mfd+cygLWM3Lwi
	eSX2QY/JkcxvALXLNyE7dXa+vqQyT1PS6Ib0OjZsrbe4p3b/Jhyx4F3vDZ0AgrJvh/27i53KiRtFD
	67lpbElF9NxVqU07qy2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh2u-0000000GfpX-2pn0;
	Wed, 04 Mar 2026 07:53:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh2t-0000000GfpM-2dPz
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=1YXo7RXOewrUcMAR32oCNJ8pq0f+FVB2WdUwWjGpq9U=; b=IOkysagrKyUU7bfiKho4oVgOAf
	8p+y+975UA4bahyLBzFbjlA+NYmY07uDvSJHpfzZY1CXmdxbExrgnAPtrkliLKKWykDgcV3hqJARz
	yAVROkOARevI+fmDn7qdnikcD9m23FJSGG4IkJZWd6DsZY3lN0n2cvj+5rayu3ddPhk57dHTvaRQJ
	iq0ffLpB7eV4cVHaIc8dmTyzWw8aut47mHuuy5vBNv2shl9y/FBmV+VlXsP5Xev15cHOruYR768w5
	Ztb9xIoZQKu+5CGG4POyVDA52g42DvuTlwRaNMyNrmDmgq+Nm17sjQkQJGyWTMLKTkJTys9m0c40h
	f3zamBZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh2q-000000043Rd-2Kz1
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:53:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0006n4-9n; Wed, 04 Mar 2026 08:53:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2n-003g4Y-2N;
	Wed, 04 Mar 2026 08:53:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0000000GMA8-044L;
	Wed, 04 Mar 2026 08:53:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 04 Mar 2026 08:53:20 +0100
Message-Id: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPDkp2kC/23MQQ7CIBCF4as0s3YMYKyNK+9hukAY2lkIDVBS0
 3B3sWuX/0vet0OiyJTg3u0QqXDi4FuoUwdm1n4iZNsalFC9UKpHHd+YKK8LGrwIJ6wx1tJNQns
 skRxvh/YcW8+ccoifAy/yt/53ikSB7qocDUSDfOnHQn5acwyet7MlGGutX0DHd8CrAAAA
X-Change-ID: 20260226-arm-setup-c-30f0dccdde71
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772610802; l=953;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vvVWT9A5dWzTXY5Fgr2mzjXHOpZUe85YdsRuLK7NKhM=;
 b=dg86uyf+9AaWZAxs1OfLztmiE0BTOub6zFsLj8Tzi9rctRWNM0gNbfNv710hCudQ9Pq7ELZwK
 D9Hxbk6CJiyAF595dde8uXIxPO1nNpPP+TRrQTwls/8WbFqFvVQdS/8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_075324_802004_6F00BA3D 
X-CRM114-Status: UNSURE (   8.06  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] ARM: Avoid to clear bss multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently we clear the bss everytime we call setup_c(). We can do better
and clear it only once which makes for example alloc_pte() in the PBL
MMU setup preserve its state and we can call mmu_early_enable() multiple
times without harm.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- Avoid to put the information if BSS is cleared into the BSS (Ahmad)
- Link to v1: https://lore.barebox.org/20260226-arm-setup-c-v1-0-f52fe8ee81ba@pengutronix.de

---
Sascha Hauer (2):
      ARM: setupc_32: remove relocation code from setup_c
      ARM: setup_c: avoid clearing BSS twice

 arch/arm/cpu/setupc_32.S | 38 ++++++++++++++++----------------------
 arch/arm/cpu/setupc_64.S | 14 ++++++++++++--
 2 files changed, 28 insertions(+), 24 deletions(-)
---
base-commit: bd5518cd7e34861706f87c8ca67b640d6257d5b8
change-id: 20260226-arm-setup-c-30f0dccdde71

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



