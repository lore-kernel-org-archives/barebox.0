Delivery-date: Tue, 01 Nov 2022 07:28:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkx-00APUT-4p
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:28:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkkv-00021Z-U7
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:28:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xcwVD8i8PLNTfVP6BkeAyJIYR9yIM3oW3X1RdPW8Vds=; b=RnstkZ032Tp3+00WCqIWKDZZPZ
	kld661dxdLM6qy6rcm6vjQjhvtOd+bLhZh+OrtUPXQrdJDSFvGif/Os4E4SgjtLCEJgupoW/Qdze+
	gWBL7lxDCQSZbG0ybavXGh6DD2x8WrTlv01VU0Ty9x5qPYR3IJQsqZDknbOo3LisFCzLpwdHPiuAG
	Bpm+6rwMnQRRtoJRW3P3CD9TY3reLBhVys2Ac48KqwTFhvtKZ0jxw67dIrh8zCPuJSnl1jM8Z1eAr
	q4VnNIFLwh14ZtmFJYtCE5vFf46FQfpp47Hrfd/VwSSP8SBZmEpojX3L7I5o1fAr8Hsjc3NUBtbQW
	Hn6sOQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjd-002Ppr-HB; Tue, 01 Nov 2022 06:26:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkjW-002PnA-J1
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:26:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-0001nS-7r
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 07:26:45 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjV-001cid-Ht
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 07:26:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkjT-00DSKe-8e
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 07:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  1 Nov 2022 07:26:38 +0100
Message-Id: <20221101062642.3207113-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232646_653201_7F9359B3 
X-CRM114-Status: UNSURE (   8.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/4] ARM: psci: client: unbreak hypervisor boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

PSCI fixup logic is useful when kernel DT contains just arm,psci and
expects firmware to update compatible as PSCI v0.1 doesn't have a
command for querying PSCI version. The fixup was too zealous though and
hardcoded the method to smc, breaking hvc boot. The result was also not
confirming to the current bindings, so fix that up.

This fixes boot on QEMU ARM Virt64, which previously crashed when smc
was executed.

Ahmad Fatoum (4):
  ARM: psci: of: fixup only version if node already exists
  ARM: psci: client: match most specific compatible first
  ARM: psci: client: always register OF fixup
  ARM: psci: keep older PSCI versions in compatible fixup

 arch/arm/cpu/psci-client.c | 12 ++++--------
 arch/arm/cpu/psci-of.c     | 39 +++++++++++++++++++++-----------------
 2 files changed, 26 insertions(+), 25 deletions(-)

-- 
2.30.2



