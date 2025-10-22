Delivery-date: Wed, 22 Oct 2025 09:03:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSsA-00AWR4-0n
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 09:03:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSs9-00043a-O9
	for lore@pengutronix.de; Wed, 22 Oct 2025 09:03:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mY0ghbgNpGFeqypQ540c7rVDnEU1XoG+ObGOq2ZCyVs=; b=IXfWHfXt3UThJjuTO8hjJxvHN4
	yWwMsXgzcUfJkm92mANS45ssaIF04j2pIriwMDvtOco4ETX3o2qrxl0LQsuT19356wKrshZl+WhyT
	o34fEWGkqAQ3H6UeiUa8ZAOaYxtuSIyshITkk4UcyrDCO9AqDcR6jztSmYaX0uiRDkQ6pMmMYwKVH
	Qf8bYwspPByMnZOz9PaUyZ+EDkddWfkHkPVZK/+i+upZC4Zd2nnyKj+cFK/Q3Nn/DMHNhY61TXmF3
	f02jOeKvScxsbMC1T2c7tqosrOtGCqk8eR5F5XuveR3AIO+VUXCv+8l2qdtjhFZMlPHiXLYDChMR4
	4fnNZThw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSrk-00000001mZd-3A5V;
	Wed, 22 Oct 2025 07:02:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSri-00000001mYy-2TYC
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 07:02:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSrh-0003zE-3c; Wed, 22 Oct 2025 09:02:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSrg-004qgM-2c;
	Wed, 22 Oct 2025 09:02:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSrg-0000000H6RT-38bt;
	Wed, 22 Oct 2025 09:02:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <20251020-parted-v2-1-63b8490ec9f4@hotmail.com>
References: <20251020-parted-v2-1-63b8490ec9f4@hotmail.com>
Message-Id: <176111655274.4076322.11734683820876092762.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 09:02:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_000234_632843_1B6295DE 
X-CRM114-Status: UNSURE (   7.67  )
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
Subject: Re: [PATCH v2] parted: add max option to mkpart <end>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Oct 2025 19:34:06 +0200, Maud Spierings via B4 Relay wrote:
> Add the option to specify "max" as the end location, this will fill the
> block device up to the end of its available space.
> 
> A secondary effect is that it is now possible to use two different size
> units for start and end
> 
> mkpart root ext4 66MiB 3866111KiB
> 
> [...]

Applied, thanks!

[1/1] parted: add max option to mkpart <end>
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e03748aafd2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



