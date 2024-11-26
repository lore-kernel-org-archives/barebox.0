Delivery-date: Tue, 26 Nov 2024 16:34:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaH-000flZ-0P
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaG-0001dj-R9
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1YOtwwGjja0I0tWcM0uw4GeKO/0dwwojM3dBiGUlepg=; b=4w+8/5uSWrLTASYiCdv2bzKR3L
	UKcokCTP7aqA18aat6UE8r7atY1MXN2TpwuW0m6VDLTW7zUJMHenn8DhZCWSX4cFPiqFJGy2Z23wg
	8udZSmi/dhNAJLQPYnz9X2b5WjhzCSb14VQwHqBrF5xmlC0vlvFbt1MoKswTmcVkMNZZ6Ull1ACft
	jwoTmJd7kvTWxpuhIeTOKQvdOIGvZgQF9LrD5BfoP3HJCh7c5a2V6OUhdtGpvRE+7tIigVL2SRVy1
	GVQfRhDV3KbSmbkjHXo6EBAI1Xs3tgbvBZBNVw2grQQZ+fOxLlY+AVvGyP452sqH7QpQdmiIGTiHE
	ISLwRdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZn-0000000B10Y-32s9;
	Tue, 26 Nov 2024 15:34:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxYx-0000000B0p9-0Fko
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-0000vq-PT; Tue, 26 Nov 2024 16:33:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-000Gu2-2d;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-00Fme2-2q;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de
Date: Tue, 26 Nov 2024 16:33:07 +0100
Message-Id: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073315_095433_1A9FFEC3 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH 0/5] environment: upstream-NVMEM-compliant OF binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we have had our binding for a long time, it was never submitted
for upstream inclusion in the Linux DT bindings and it's unlikely to be
accepted as there are no other bindings that reference a fixed partition
in a property.

Linux has support for a u-boot,env binding, which is used by giving the
partition a compatible = "u-boot,env" property.

This series supports the same thing for barebox and allows barebox,environment
to be a subnode of a fixed-partitions node. We intentionally don't add
file-path support for now as the intention is to flesh out this binding
together with upstream.

Ahmad Fatoum (5):
  of: partition: don't parse nvmem-cells in legacy OF binding
  nvmem: probe nvmem-cells container via driver model
  environment: register barebox env OF driver regardless of /chosen
  environment: add support for a single node barebox,environment binding
  sandbox: switch to new barebox environment binding

 .../bindings/nvmem/barebox,environment.yaml   | 55 +++++++++++++
 arch/sandbox/dts/sandbox.dts                  |  8 +-
 drivers/nvmem/partition.c                     | 23 +++++-
 drivers/of/barebox.c                          | 77 +++++++++----------
 drivers/of/partition.c                        | 13 +---
 include/linux/nvmem-provider.h                |  6 --
 6 files changed, 118 insertions(+), 64 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/barebox,environment.yaml

-- 
2.39.5



