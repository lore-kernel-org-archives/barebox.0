Delivery-date: Sat, 18 Oct 2025 12:00:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3jg-0098zc-2c
	for lore@lore.pengutronix.de;
	Sat, 18 Oct 2025 12:00:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3jg-0008Ol-BQ
	for lore@pengutronix.de; Sat, 18 Oct 2025 12:00:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L8jfsT2jAl6yQ1iq5VohE3igR4S1k5EEbkuKqmla6NE=; b=A4TTs0xMr03FOb6mii11DNtCGe
	E73Ab1bgSTP7SWfTe6H7JUBVWvPFfIqDo/ccPK75U7Y2LXpeDmMIaoKAA4SnbEU9M7Vmzo7/nqLww
	eNeY90jCPxYRht5j6nMsm3RXGQMwXwfWlk+6TR78xpFv9iJdmF9+FtcsnuGROdZ+EpAGw9jSGnSMu
	JIGRqdp74EQeiyYRh38y/PFZa/F8TbUtHTxuxlvJqVan0bvu3Ss6r5+kP1M4roI8OtWXuPUOlCC6L
	qsJpELyj+hdXhj4PXiVvZ8iYMeUYP2THSXzTaQqSfADmNzIBN0LTQBLm9dLCnErj2NR+4E76Ja5b3
	F5hYlV8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j7-00000009mFg-2vBz;
	Sat, 18 Oct 2025 09:59:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j5-00000009mEy-3lKS
	for barebox@lists.infradead.org;
	Sat, 18 Oct 2025 09:59:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DE830416DA;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B734FC4CEF8;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760781590;
	bh=AjuJYAqdvRGQNNKhF1dbI2ZCG5noLDXzzqMsfPFTL88=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=mM+IS3+qV7TG6fyUFKd/XP2yPerHBpobdDGZmu1upuN9hZwl2GPS0Mu4v9wMY6XQO
	 To29YpxllEbjYUjSZrN3168C0mh3LFtBMUZZpLHJgPfCWkuKflN0GDX4J6gvzTKShX
	 S4MLl6CPxnhe+s8cfV6WlWctAMYKdiEUZrFPWwodzSbZ8vEkfZzgSff9+TQ2+KWs1Y
	 ULr650tQl5aBJsmy3E/it1SdtbR3+ynK5r0Ew8CaKiDjImf/gqZI2hkqLgoyG4QSXt
	 VUO/L5FnOsJ4tBUH8qpUflgmNDuPJs+h4KBJlnt892L0QcypEpeBWfVU0dPmmEK+9m
	 AOR52IqN0TAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53D8CCD195;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 18 Oct 2025 11:59:46 +0200
Message-Id: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABJl82gC/23M0QqDIBTG8VeJcz2Hulm0q95jxNA65oGVoSGN8
 N3nut7l/+Pjd0DEQBjhUR0QMFEkv5SQlwoGp5cJGY2lQXKpBBeK0by/ppU8u9doUWCjzXiDcl8
 DWtpP6tmXdhQ3Hz6nnMRv/YMkwThD1bRS2ZbXxnTOb7Om93XwM/Q55y+Qo8PNogAAAA==
X-Change-ID: 20251015-imx_gpio-46efe1e7abd3
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760781589; l=1076;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=AjuJYAqdvRGQNNKhF1dbI2ZCG5noLDXzzqMsfPFTL88=;
 b=wXhUi6cv8AVZwBg4QPO79V798U4hLAxwyxz89U7R1wlalVw6hp4zQZl+IDqvq7y8HIEI1jbau
 dp/hxdLd+QFBZDpxKlGoynuZ0rDxKhpvNUXjpAceWieemYYywho8sfq
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_025951_982679_30FCFE82 
X-CRM114-Status: UNSURE (   8.76  )
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
X-Spam-Status: No, score=-103.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/2] gpio: i.MX: make _get_value() able to read output
 pin state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make _get_value() read back the dr register instead of the psr register
when the direction is set to output. Now _get_value() can actually read
the state of an output gpio instead of being always low.

Also add a note in the migration guide file.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
Changes in v2:
- Move the extra commit comment into the commit [1/2]
- Actually add a note to the migration file [2/2]
- Link to v1: https://lore.kernel.org/r/20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com

---
Maud Spierings (2):
      gpio: i.MX: make _get_value() able to read output pin state
      Documentation: migration-2025.11.0: add note about new gpio behaviour

 .../migration-guides/migration-2025.11.0.rst          |  7 +++++++
 drivers/gpio/gpio-imx.c                               | 19 +++++++++++--------
 2 files changed, 18 insertions(+), 8 deletions(-)
---
base-commit: 8defba1d0ab1aef9dd5d57710e18d0d02e2c48e2
change-id: 20251015-imx_gpio-46efe1e7abd3

Best regards,
-- 
Maud Spierings <maud_spierings@hotmail.com>




