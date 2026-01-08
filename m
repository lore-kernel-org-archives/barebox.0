Delivery-date: Thu, 08 Jan 2026 21:57:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4V-002kda-0Q
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 21:57:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4U-00054x-Kk
	for lore@pengutronix.de; Thu, 08 Jan 2026 21:57:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TSCTcVYNfxeRADsW9a1pPlWBYka0B4LxL3P9OSV1YOw=; b=pgoQzmkkO19vhrqXfyP4F3pnz9
	iwO1UAgd3i808F6AUB35DLzKX7SMM6HJeOho+fuxva3VC8FZyCJHI6BxoZuwMuCwBaqSpxgtJQfJR
	YLqlNN5s6Ub9NztcC3pq2x/lucTH5yhQUfQHbabb3Vq1kP+TXouShGv6U3OihwuKk9wODrE+bLIh4
	sqO3Juoqg+T6p9N0zrqlG+6nrRN+BMvAdQ8/cWfswBCRnYrK4Ug8FwMQKdNwd+b2nZD26HA0NeOGj
	YNGWJikzMCB8uQNaGkCTa7lZp6l38X7Wr47/r0mouJrv5j6huBEbZIlRAu7smI1gsmlJQpCMmrmKU
	TTybhcag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx3p-00000000rAl-1HE2;
	Thu, 08 Jan 2026 20:56:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx3j-00000000rA1-2UMV
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 20:56:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-0004uW-E1; Thu, 08 Jan 2026 21:56:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-009jiA-0m;
	Thu, 08 Jan 2026 21:56:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-000000024JO-0kHO;
	Thu, 08 Jan 2026 21:56:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20251218094645.49668-1-a.fatoum@pengutronix.de>
References: <20251218094645.49668-1-a.fatoum@pengutronix.de>
Message-Id: <176790580117.493211.15414417334564690670.b4-ty@pengutronix.de>
Date: Thu, 08 Jan 2026 21:56:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_125643_638169_B6627CB6 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: use partition table index for Linux mmcblkdev
 fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Dec 2025 10:46:35 +0100, Ahmad Fatoum wrote:
> If we have invalid PTEs, there will be gaps in the partition numbering
> both in barebox and in Linux, but if we only iterate through the
> partition list, we will not account for this.
> 
> Use the new cdev::partition_table_index to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] mci: use partition table index for Linux mmcblkdev fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=87a1de9cd6ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



