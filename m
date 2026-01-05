Delivery-date: Mon, 05 Jan 2026 15:33:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vclds-001YC9-0j
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:33:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldr-0004e7-Kz
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:33:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kJk0sJ6y2Y5GJdoIXdeEIrWX9eDqb8fNLjK5Bhi3+6w=; b=U+cvFqJEbBY2Px
	u9plkWILVe34yUjFyBdqOoxgZehFoEUyxei++xioaeIQWqg/x8ZwpZkHXP6PhgdF6eZz8fSStCZ96
	esaZORoPuVLW0XVTx0BoX5+k2rNJ/dRQ1ao9V44KQbb9oz2A9QeNwOpW2bKqKIa5jbccKUd6KiNDl
	Idw7qW/ylin30pJ9BRtzXr2rosrprKDVW3GbYV9iGgJa3EIyNzY/CDAyIAsZRDqMuBZuj+QD1ZgA0
	pRoa5lh9tsgQ/RcJFAmn3LlHybWwZ3f7562Yk8kt2EO7nEgmB3VJkazm1zob+U6bfIphECEjMJlzO
	YMfDqNLzr5sfqp15MYag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldO-0000000BXf9-1UGO;
	Mon, 05 Jan 2026 14:32:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldL-0000000BXd6-2fZs
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:32:37 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vcldI-0004R0-56; Mon, 05 Jan 2026 15:32:32 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 05 Jan 2026 15:32:30 +0100
Message-Id: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH7LW2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwNT3aL85OzkjMwC3eLU5NKiVN2k/PwS3aQUo7REA/Ok5GQDYyWg1oK
 i1LTMCrCx0UpBbs5KsbW1AIjPr3RrAAAA
X-Change-ID: 20260105-rockchip-secure-boot-bd2fa07bcc03
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_063235_678969_F8B49771 
X-CRM114-Status: GOOD (  12.05  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 0/3] ARM: rockchip: add rockchip secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to enable secure boot on rk3588 SoCs via the Rockchip Secure
Boot PTA [0].

The OTP fuses for the secure boot configuration are only accessible from
the secure world. Therefore, the actual hardware access is implemented
in the aforementioned PTA. Thus, barebox is only able to enable secure
boot, if this PTA is available.

Patch 1 adds a helper script to calculate the Public Root Key hash, that
needs to be burned into the OTP fuses. The script accepts a PEM file
containing an RSA (public) key or an already signed rkimage, from which
the key is extracted.

Patch 2 adds a driver that interacts with the Rockchip Secure Boot PTA.
The API header between the PTA and the driver has been copied from
OP-TEE.

Patch 3 adds a shell command that a user may use to actually interact
with the PTA. The command options are inspired by the options for the
i.MX hab command.

This series is an RFC, because the Rockchip Secure Boot PTA is not
merged into OP-TEE, yet.

[0] https://github.com/OP-TEE/optee_os/pull/7661

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (3):
      scripts: rockchip: add script to calculate key hash
      tee: drivers: add driver for Rockchip Secure Boot PTA
      commands: implement rksecure command

 commands/Kconfig                       |   9 ++
 commands/Makefile                      |   1 +
 commands/rksecure.c                    | 155 ++++++++++++++++++++++++++
 drivers/tee/optee/Kconfig              |   7 ++
 drivers/tee/optee/Makefile             |   1 +
 drivers/tee/optee/pta_rk_secure_boot.h |  48 ++++++++
 drivers/tee/optee/rksecure.c           | 196 +++++++++++++++++++++++++++++++++
 include/rk_secure_boot.h               |  21 ++++
 scripts/rk-otp.sh                      |  70 ++++++++++++
 9 files changed, 508 insertions(+)
---
base-commit: f4e96a91debc5fadc5d6280505dea72dbdafe257
change-id: 20260105-rockchip-secure-boot-bd2fa07bcc03

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



