Delivery-date: Thu, 07 Nov 2024 09:46:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAD-005rC8-1t
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAE-0007Ay-6x
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Bkydaqdj0QKaqr+vlVUUTYmEBP2EMWlAwkMU6MI9dw=; b=3pNfVALWY+XJ9hmhdfe7rG1Tu1
	JOTOuexJExnQnA+Og7CN8eiUMrJFUBfp0tcvqWeS0QpkI0fUVFX6S28UTGOoGdXcpZQC8XxNZsCf1
	E76qxP9VDZZAFLW0mrh3wBYiYyV1saPIeoatwyIIx8LSDDBwedvHS3Z+tqRHkBC/OYHVE/R2HalVx
	kO4dy2SH4G9PX0DGFDnpK+aeL+u4bWIxJRkiPVyczjBSqG2rrUkPiVq+UBUzIxqJVt7l+KuLh+JQz
	VtoN/HSZd4IzXJTr70kA+ROFY2Og4s6OI614BZfNxfR9+/XQHpDdMdXrt3Fy6Ynm3Ikjn+imv43Uq
	evVw0MAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA3-00000006Ayf-2EKf;
	Thu, 07 Nov 2024 08:46:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wrg-00000005yX7-0WUA
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:23:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-0007zi-FH; Thu, 07 Nov 2024 08:23:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-002QOu-0r;
	Thu, 07 Nov 2024 08:23:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-006rNQ-0g;
	Thu, 07 Nov 2024 08:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 Nov 2024 08:23:29 +0100
Message-Id: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPJqLGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQwNz3bRi3ZK0kgLdRNNES4OUVCMLU/MkJaDqgqLUtMwKsEnRsbW1AOn
 E8zRZAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730964212; l=793;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Z0jFKpJWifgCePBp/J0LhdJM8EphTqWtmkcs8Lizu4Q=;
 b=neo/t2l9Lutra/kCTnTOQOyH4bmnTXAkXUH0yvFwMrqAHsoZ46c1Z9jmQHzymag865eGeCiyR
 o5SBwgjVZuVDbrQ+d96KQaHQayflN5H//wTpHMDRDzy6Xt5niDmthL3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232336_240520_B324983B 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] some fs/tftp updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some updates for the FS and TFTP code

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      fs: open loopback device before using it
      fs: tftp: cache dentries for some time
      fs: kill invalid dentries
      fs: tftp: Set default window size to 1

 arch/arm/configs/imx_v7_defconfig   |  2 +-
 arch/arm/configs/multi_v7_defconfig |  2 +-
 fs/Kconfig                          |  2 +-
 fs/fs.c                             |  8 +++++
 fs/tftp.c                           | 58 +++++++++++++++++++++++++++++++++++--
 5 files changed, 67 insertions(+), 5 deletions(-)
---
base-commit: 822f814ffd12a52b998df4017ca13553709853b2
change-id: 20241107-fs-tftp-a5a90de2857b

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



