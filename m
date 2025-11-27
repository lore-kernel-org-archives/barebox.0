Delivery-date: Thu, 27 Nov 2025 09:29:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOXNG-005MhG-2Y
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 09:29:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOXNG-0006ag-8p
	for lore@pengutronix.de; Thu, 27 Nov 2025 09:29:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJ3gjGf5n1LjwwIvX+F03X0izmpdCI3NiSzMQ5LhiMA=; b=Jq2elSNa5PoHD8YDs0uOvEjaGb
	+SMG1JloBtxcU/2EttMS057aUZAiyzDrC9PsWpPEd3iiD5H39LuNw+pYxOjBpGmGWC/dUoX998Iz0
	6VyckoMt2lKkjnCrMKAara4hgTC4uSKCZ2Jg6wRCwiOEak5m0XA8Q9ScdEnhfsTTQxSLjEJH38NUd
	XqWfZMEmgiY4vz7XxTWOYvK85XXKB1ReACJA2XjPJDyu038yAJMfVyS6EM+/OxmKk1VReS698LGUu
	M7Pxq5Z/N0c+k4rMFpq9kup0hSOzGQznbipi+BhzK48XzL8FG6TXNWFSozegK21fQ6lS6s/UHHUxp
	PAPBYLPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOXMn-0000000GChH-37vz;
	Thu, 27 Nov 2025 08:28:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOXMk-0000000GCgv-3O2e
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 08:28:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOXMj-0006X0-1M; Thu, 27 Nov 2025 09:28:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOXMi-002kxN-2l;
	Thu, 27 Nov 2025 09:28:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOXMj-0000000BaDK-0zQF;
	Thu, 27 Nov 2025 09:28:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Jan_L=C3=BCbbe?= <j.luebbe@pengutronix.de>
In-Reply-To: <20251126140914.4081895-1-a.fatoum@pengutronix.de>
References: <20251126140914.4081895-1-a.fatoum@pengutronix.de>
Message-Id: <176423211678.2760796.13380049404099065486.b4-ty@pengutronix.de>
Date: Thu, 27 Nov 2025 09:28:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_002838_851712_79F38608 
X-CRM114-Status: UNSURE (   8.96  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] boards: qemu-virt: drop fitimage-pubkey.dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 26 Nov 2025 15:09:11 +0100, Ahmad Fatoum wrote:
> CONFIG_BOOTM_FITIMAGE_PUBKEY was removed in v2025.09.0 and the device
> tree snippet that we merged at runtime into the DT we receive from QEMU
> is now empty and no longer serves a purpose.
> 
> Remove it as it's actually detrimental: of_merge_nodes is a low-level
> operation that doesn't handle duplicate nodes and when
> CONFIG_EXTERNAL_DTS_FRAGMENTS adds a state node of its own, the barebox
> barebox live device tree ends up with the state twice.
> 
> [...]

Applied, thanks!

[1/1] boards: qemu-virt: drop fitimage-pubkey.dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=f018a6e4606e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



