Delivery-date: Tue, 06 Jan 2026 08:40:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1fn-001oWk-26
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:40:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1fn-0005V8-49
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:40:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9h8yiQaBoc6qxZsorOA8IxTksUaWTfj/AiUHD7ovyeM=; b=ecnIGZDNnS/oUQLGqMTF2qEoC6
	dbvyZTK0ZcBev0sNx++NbDGsCW/e6iwXEnCeH9bk39KBjsuQHJO4lOhWawKDcZ7mr4rHg3GGd/Pvz
	7NXREX6silCc1+yBLT8IA9IDDNKucP0opmktOAMs1tMsHcAp7zCWknCrFyTppYpq2hZYrns/SXM85
	CF9DX7vCPs+/wEQ8mCIGec4GbQvhiFLHBoO39NWZh/EmXdr7J/+cp+iwf9ktQ/A1EDQWSwaPlvU8z
	K7FzMGTcU1u2xX7gWScE3LvZdFTkpEf7ex0NX00dlINKIsjRU8G0bKrHVZnABUoYYNM4HGwR/LmeH
	uVXm4cFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1fL-0000000CX6y-0ZmW;
	Tue, 06 Jan 2026 07:39:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1fH-0000000CX6U-2sKV
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:39:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fG-0005OW-2s; Tue, 06 Jan 2026 08:39:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fF-009JJF-2s;
	Tue, 06 Jan 2026 08:39:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fF-000000088cr-3TZy;
	Tue, 06 Jan 2026 08:39:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105083340.3254634-1-a.fatoum@barebox.org>
References: <20260105083340.3254634-1-a.fatoum@barebox.org>
Message-Id: <176768517782.1939766.10386118900914427294.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:39:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233939_727274_54CFE35F 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: elf: use strdup_const for symmetry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:33:37 +0100, Ahmad Fatoum wrote:
> The elf->filename is free'd by free_const, but it's always allocated
> with strdup. Change this to strdup_const to be able to avoid duplicating
> string literals.
> 
> 

Applied, thanks!

[1/2] common: elf: use strdup_const for symmetry
      https://git.pengutronix.de/cgit/barebox/commit/?id=2e47b5900193 (link may not be stable)
[2/2] common: elf: use memcmp for fixed-size comparison
      https://git.pengutronix.de/cgit/barebox/commit/?id=3dc2cad1a7e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



