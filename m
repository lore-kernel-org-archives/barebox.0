Delivery-date: Thu, 18 Dec 2025 10:56:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWAki-00CmiH-1u
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 10:56:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWAki-00061p-3G
	for lore@pengutronix.de; Thu, 18 Dec 2025 10:56:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JxgBHmh9wXCPN/RwhsDg8zVLbFsl1iIMbSA8KfsgosI=; b=oMQGIcqq7daoJP0tjH7DRyXZ4D
	tOIHPvf42cE+QuoUqcbs4Zh5VipjW2Seqz8g8qo0lCEZoGS01wJ5q0/+kj98LPwkSo92Pic9j2ij+
	EuoD4EfT38GN55HqW/mvjBccCVaTRWtCjGzYMH0++yy9tD9Ehx3RMaNOLa6TiZHhtMja7lUlbW6xc
	stHXzrM7ONGamzZAeITTilvlorXsSBm4n+9DzMw6S74CEh9/kw/TsfujZwTtdxzwJ7p0DeeW8lSNp
	y5gqBlyktGjNg4+ONJyCI+4LwiMVzdJiDRlJg9tJCT1XZZPqfiMTvmZKqWnWQb8pVCwwaFt4jD7LZ
	asAmPtZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAkH-00000008BeV-1A7x;
	Thu, 18 Dec 2025 09:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAkF-00000008Be8-0o10
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 09:56:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWAkD-0005uc-8g; Thu, 18 Dec 2025 10:56:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWAkD-006Fx3-0G;
	Thu, 18 Dec 2025 10:56:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWAkD-0000000GZmO-01yG;
	Thu, 18 Dec 2025 10:56:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20251218094645.49668-1-a.fatoum@pengutronix.de>
References: <20251218094645.49668-1-a.fatoum@pengutronix.de>
Message-Id: <176605178500.3950089.802776548022539556.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 10:56:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_015627_261926_966D721A 
X-CRM114-Status: UNSURE (   8.73  )
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
      https://git.pengutronix.de/cgit/barebox/commit/?id=928a71e0d678 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



