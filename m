Delivery-date: Mon, 17 Feb 2025 08:39:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjvio-003OQg-1r
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 08:39:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjvin-0002Dg-EX
	for lore@pengutronix.de; Mon, 17 Feb 2025 08:39:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0SNyFyiExzxsAIL4p0j0KABKa3Iy3OMP3251sItciqw=; b=GI2ulstc33r2ZTZrWDQzktBhnm
	/T/ooUDrW7WyF17kyQBRoOSu99LLxoq+0zUttAwkHb1B0YarAP3Wp4+g9OSWO8Eybm+GetTA+nBTZ
	Y1g9St9G5M/Z3G9tfjZdyqr5GaNe55WCBCiCJ7ZQun3xzd4elf7Qs2t6t7N70aJZ2Yk4Tkv9a053C
	uou73MkXBVcZZnPjWbVfmqgzrmFZFsayccWRfiufud2+VHuUzbM79SlzRUCTLbIa8E1rsIK4b5nrz
	95RvLKUMm9d8lj0vyYcbgL12dTlZXsQ8y4HqyK8bnv9Z78I0mSfdRI+TsMAhWbtz+bByFeF2xi1k5
	1BwnYhcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjviC-00000003crj-3AtV;
	Mon, 17 Feb 2025 07:38:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjvgA-00000003cbS-2Flu
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 07:36:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjvg6-0001p5-8k; Mon, 17 Feb 2025 08:36:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjvg6-001MwO-0H;
	Mon, 17 Feb 2025 08:36:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjvg6-009KcJ-04;
	Mon, 17 Feb 2025 08:36:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250216150718.2348520-1-a.fatoum@pengutronix.de>
References: <20250216150718.2348520-1-a.fatoum@pengutronix.de>
Message-Id: <173977779001.2224086.13654280587771881132.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 08:36:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_233634_621231_D8079DF3 
X-CRM114-Status: UNSURE (   7.75  )
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
Subject: Re: [PATCH 1/2] cdev: merge identical partitions despite
 DEVFS_PARTITION_CAN_OVERLAP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 16 Feb 2025 16:07:17 +0100, Ahmad Fatoum wrote:
> When a partition is created that's exactly the same size and offset as
> an existing partition, barebox will create the new partition as link to
> the existing partition.
> 
> Maintain this behavior, even if DEVFS_PARTITION_CAN_OVERLAP is set.
> 
> 
> [...]

Applied, thanks!

[1/2] cdev: merge identical partitions despite DEVFS_PARTITION_CAN_OVERLAP
      https://git.pengutronix.de/cgit/barebox/commit/?id=f7c38bec5baf (link may not be stable)
[2/2] cmdlinepart: refuse partitions with empty name
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d81df84033c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



