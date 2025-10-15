Delivery-date: Wed, 15 Oct 2025 20:04:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r8-008BOI-0z
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 20:04:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r7-0003Pi-R4
	for lore@pengutronix.de; Wed, 15 Oct 2025 20:04:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SbwZPh8+Vb6qaj4iLS95AAtmXEyXSPfdgys3jTHW150=; b=G/gFM8PDvvMKo/Ub4h8PSIbs8G
	Ly0F9t3FlUDIna9Pb229B3kJURUFkruNHr1g0DE4+bXRkPYIWalycWMc07M60pV/LENaEKW2cQcg/
	G9RFcN875dFUZrj8T4emjF5XZFiubxJl6irAg2f+I3oFZW6F2EJxPYtyBbXEhpsN7fXYz3Gtclwb3
	xanvOIbICIqXbNb7HrjWGXaWix5Fz+zX8pEn4f5/7kvNn5ZzxWm+G6gLizFXfgRyuka6886yLrIOD
	y6DB0P1BExRlmruwjiPYWTiir/gA0ljI1IuV0SgUVFEjbV4uMIrwbhMmDBttmXME132/D63Lcb+39
	rVt5ovig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qY-00000002V1c-2au9;
	Wed, 15 Oct 2025 18:03:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qV-00000002Uzz-3T2n
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 18:03:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 11D994A3A9;
	Wed, 15 Oct 2025 18:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DBCC4CEF9;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551410;
	bh=+rmbtiS6MvUdP3Jy0Wqn+k5Q93udyLmRCQmE6Mmj5SU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MwOgJ+hmXR/KWgIEJaYcWH2bMnUmT2gjlOAAxpDOrSYkuAY6WGO/8e05hzcGitx8s
	 DS3m24T9ZqIJjHNQJ+CPCkkWZCX3/LMADuEdXaoW9TTOPf7X95es/igHMfnXm2p+Bz
	 wMBS2ArF2TwqDKx6vCe8sN/s1WQKnrNXiJZlG6fS6TPD/bE4+kru/qakTKesRt2EX+
	 IBbBgDL9aaFtEV7cWFt2skUeRCosvhjidb466jKoOY4vlH1B6SQbPnf3GXsT6volFW
	 hV1GR4Jphgnf76fEkD7hpXgeHzLs7ih10rZMhFgTh3iIPWe76P/BgxT1Rx9EEu+yd4
	 +vjWLWOEDb+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80E6CCD19E;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Wed, 15 Oct 2025 20:03:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-imx_gpio-v1-2-e57925f906bb@hotmail.com>
References: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
In-Reply-To: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760551410; l=428;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=gW8TCPiEx6B8yJ+EHdrW4GHmjOlCnTVrBL5K+YZgGoQ=;
 b=xQaCI7t5r2yNJQ7TAqd7vydYqJ0+tAAXWxEuZC1sYRbzgNgzwG0Jq+prMl+ydXYc1FGOTohxT
 JipT4orQP5eAbUlSWkWJe/itRdQ9DQRTbXkWLIkgaMam/6o6ftchCBK
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_110331_891052_FAC46696 
X-CRM114-Status: UNSURE (   7.40  )
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] Documentation: migration-2025.11.0: add new empty file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

Add an empty file to hold any future migration notes.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 Documentation/migration-guides/migration-2025.11.0.rst | 0
 1 file changed, 0 insertions(+), 0 deletions(-)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
new file mode 100644
index 0000000000..e69de29bb2

-- 
2.51.0




