Delivery-date: Wed, 12 Mar 2025 11:23:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsJF5-00D59l-1F
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 11:23:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsJF4-00086C-6v
	for lore@pengutronix.de; Wed, 12 Mar 2025 11:23:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CzVPpKQxTisKfq2k5YJXqq3dXZkaDHifx3M4yTKfW34=; b=bqXWbpS0I0fmOfrlCj2GVhlsZN
	tIe1qohGhujctSQHDlxzMI7T2YxpKfQ1ns38Fdwyhw+4LylT4lT36IGzHtlkkWW3O3d1V4StdoHbH
	zGrWH60paGhhamc+qwOyIKXSMl58upnbIR3ml3LTS9AvYUSgKIx52ilbmIN/VoEi6lVx+fhuODEvx
	IR5DbyLBJ7XerW0/RLMCDDCAfvEenxT4hHsgws3evBJ9pXJzoP3IlSiAfLRNMMY4++PPRrWxEeVte
	jXNa1v7y2/6UgZjB5XwwNuPrTu11qemFGYg6u+VcotdUBCaUCdyJfJZgcfpZJt/l5RY4uDLgreeYo
	QLMtBIUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJES-000000086Ht-20Ti;
	Wed, 12 Mar 2025 10:22:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJEP-000000086H6-0Rtr
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 10:22:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-0007yb-In; Wed, 12 Mar 2025 11:22:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-005LDx-13;
	Wed, 12 Mar 2025 11:22:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsJEM-003kff-0o;
	Wed, 12 Mar 2025 11:22:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20250310113626.2241630-1-m.felsch@pengutronix.de>
References: <20250310113626.2241630-1-m.felsch@pengutronix.de>
Message-Id: <174177495024.893398.9248321381901871386.b4-ty@pengutronix.de>
Date: Wed, 12 Mar 2025 11:22:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_032233_149606_F512A859 
X-CRM114-Status: UNSURE (   7.77  )
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
Subject: Re: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Mar 2025 12:36:26 +0100, Marco Felsch wrote:
> Current tests showed that fusing just the single field-return bit(0) on
> i.MX8MP SoCs brick the device.
> 
> All i.MX8M SoCs have a single field-return bit except for the i.MX8MP
> which requires a pattern. The pattern is not documented but was
> discussed here [1] and the final u-boot commit [2] added the support
> accordingly.
> 
> [...]

Applied, thanks!

[1/1] i.MX: HAB: fix i.MX8MP field-return fuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=51a10d4fd531 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



