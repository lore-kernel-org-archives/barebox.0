Delivery-date: Wed, 13 May 2026 15:57:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5x-001H9R-2P
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:57:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5s-0000Ku-7C
	for lore@pengutronix.de; Wed, 13 May 2026 15:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5fXDzL5z8kx/ocbNLB295Rv9m4mG2Kq0sP3okFlRas0=; b=lxXmK5TdmnSenjWIX/x7TPrXWD
	MzU40WuVFrPC58au/UDWPzWSHcmbd6CCJOj42fLbdMj0ZZ8LDsHmPepSfDBN8kHHiM3DuOH20+0EE
	FKaYxo7zVNmzJ9M3yb1DvZLVFpOk0qfVJAzGy/HcMk6n0Jkraolq0CwHWxNtJJaSCeEvQzsYbsjHu
	aZy4NB8/BSu+UYDahgToKxapBVFPzj3TewJLMZTvYKibU7VLkP+ssOcXk/czT0D/0C2ye06b4sLQj
	7j5LzP91GiOdz/09PZDzj3JdLf09Awus/qp5fJtGd50s+RGus8Re2pk/eH/50uAdXRfs2PH8XrlSE
	T+ASsxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA45-00000002q2W-0Ect;
	Wed, 13 May 2026 13:55:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA43-00000002q1v-2mga
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 13:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=5fXDzL5z8kx/ocbNLB295Rv9m4mG2Kq0sP3okFlRas0=; b=QRydxtjeiu6UHMGh5oDuepDno7
	q94MDw27TsR8CFO6rzh0XczN/MMhJBd3krkJlD1EMYhluZ/WnlKSSg+jmK+f8vb8smCtQaxU2YqaF
	FKrXOF5bTcdZU4g23QO6tJV4EG/pEXe7ubUO0yVphIQBFSHcoPgyDXaYmzoA+FYFqR6o+NXH+I0CK
	tzlGMxpHo/ZBmaVq0k8xXr9bRaZRBY4E7vDUyJ3PQIX4iGarelBlyqYBsBdhHGKDt0h0mddl27d5a
	VId+9OWCkX5i1scky87VUNj27HzVly1jjsg5gEc1Jxw0qxFsrQbt68IxDilwHrGUSUVUC7lIC2Rms
	/go5xvYg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA40-000000005Mb-2Rux
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-0007xu-2e; Wed, 13 May 2026 15:55:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-000bi6-00;
	Wed, 13 May 2026 15:55:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3y-00000001CbW-3o0U;
	Wed, 13 May 2026 15:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:55:49 +0200
Message-Id: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOWCBGoC/x3LQQqAIBBA0avIrBM0LairRAuZphwCFYUIxLsnL
 R+fX6FQZiqwigqZHi4cQ4ceBKB34SLJRzeMapzVpI3MEW/0nOTJLxXpFkRlHFptHfQpZfpDf7a
 9tQ9Nqi9sYAAAAA==
X-Change-ID: 20260513-rockchip-fixes-a9cc03ac414a
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680550; l=836;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Fp6qPM9lRtPegAcCxYhynsZ8GhfxCXVJbL7V4kvRXHU=;
 b=cJMMEOd7Trj1T5x2ELkfkAlYwqMECCOYvVzUsMY5viM5i2MoLzKsh3DUgnGP/NMn9Hk3znoi1
 WGaA0OunyO8CDf6idSzM+w8iAK/MUIn2dPKsQtSSVmwCwR/yux1siyZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_145553_011724_CBC801CE 
X-CRM114-Status: UNSURE (   7.89  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ARM: Rockchip: regression fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series brings the Radxa Rock3A up again after several regressions
introduced after the last release. While I observed on Rock3A only,
none of the fixes is specific to this board, so others are likely
affected as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      ARM: rockchip: atf: only set OP-TEE address when starting it
      ARM: rockchip: dmc: substract ROCKCHIP_DRAM_TFA_CARVE_OUT from memory regions
      ARM: rockchip: atf: pass correct memsize to mmu_early_enable()

 arch/arm/mach-rockchip/atf.c | 7 ++++---
 arch/arm/mach-rockchip/dmc.c | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)
---
base-commit: f4da708a0ba2d8489832900b37343ac63dce16f0
change-id: 20260513-rockchip-fixes-a9cc03ac414a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



