Delivery-date: Tue, 17 Mar 2026 11:22:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RZR-001lus-11
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 11:22:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RZQ-0001NP-PQ
	for lore@pengutronix.de; Tue, 17 Mar 2026 11:22:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0IjPySYnPnf1WRCE9+MDJuufHyxYunHArV8jKjNK2iM=; b=hRIWthJau6aVU7JtaVQMemvKQG
	rlQizS634EVY9ok2QxNtfuLhYp62Qt571LWe2cW9yDzefWFgS7N+RW/YBJezUiorRnR5nR/x9QaY4
	9amGX0uSC4qqn26MboNIYwZFR4opWPWW9G+FKM1gvUgnqvrZTW5z3kiSFna7ROKs/2t5gSKHiKXJW
	OAF9rJDpEh5vq7lEVPUMN4iOFgrUHR/WXac6mIM3LfeBLUE0RabcOSNA5zDojsKus4GO+jo2gTJ/H
	TxDYThsZphqipfmeyh85g/YZKVb6jQGcYlDIbVIU7y2h59dszMGC9t27xoDiJv+0gbHZBkBBAOyVS
	83xFSRZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RZ0-00000005yxe-25vB;
	Tue, 17 Mar 2026 10:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RYy-00000005yxG-3pVI
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 10:22:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RYx-0001Db-6u; Tue, 17 Mar 2026 11:22:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RYw-000iv9-2s;
	Tue, 17 Mar 2026 11:22:10 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2RYw-0000000DCqJ-3Tu0;
	Tue, 17 Mar 2026 11:22:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 David Jander <david@protonic.nl>
In-Reply-To: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
References: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
Message-Id: <177374293082.3147536.17619125567296156434.b4-ty@pengutronix.de>
Date: Tue, 17 Mar 2026 11:22:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_032212_954206_82462E79 
X-CRM114-Status: UNSURE (   6.76  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/4] ARM: i.MX8: add DDRC-ECC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Mar 2026 09:14:30 +0100, Steffen Trumtrar wrote:
> The i.MX8 DDRC controller supports using inline ECC with the DDR RAM.
> Inline ECC reduces the usable RAM size by 1/8: 7/8 RAM is for data and
> 1/8 RAM is for the ECC bits. Also, measuring random memory writes in
> linux with
> 
>     stress-ng --memthrash 4 --memthrash-method chunk1 -t 1m --metrics
> 
> [...]

Applied, thanks!

[1/4] ARM: i.MX: esdctl: fix spelling of ad(d)ress
      https://git.pengutronix.de/cgit/barebox/commit/?id=0826f8905b78 (link may not be stable)
[2/4] arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
      https://git.pengutronix.de/cgit/barebox/commit/?id=0651254b9450 (link may not be stable)
[3/4] drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
      https://git.pengutronix.de/cgit/barebox/commit/?id=101fcf16adf7 (link may not be stable)
[4/4] arm: boards: protonic-imx8ml: Add ECC + scrubbing
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8361ee96223 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



