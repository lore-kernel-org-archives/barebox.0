Delivery-date: Wed, 15 May 2024 07:55:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77bj-00FOq3-0f
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 07:55:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77bi-0002H0-LA
	for lore@pengutronix.de; Wed, 15 May 2024 07:55:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Poecqqd2pg1kDQ96Hy2C0rbqT09EbkrffOb/DxZYOnY=; b=NcS2FzNx4ogpjUEDfYvZ+UYxeU
	HRuETs6wKXy6yNINVU7xYZXI/hFbjiodcsFHMZB8OGu6AaXJP5uB4ezCNJPYg8XMzWvc39Xaii6CO
	aAgcKmyoY+bItBM9sDHARINM/hHXn//YZhDWeAR4tC09SqicdkcjvUPsrIYkn07MSEKaY8y6XawyI
	UIjYbhFGubKYgvcCr/GMbVVbMLDQqBsccAaFITuvZ/bdHxph6f4cHdlvDmaPDhcjFKASdUBBM2+fi
	EHG6XbQzTpicEE23atTXs+uSJ0Kk4+J9xUicM8ydPwl/Xunp5enPlI7ziw4bT3SsDrqzkeXdfQWcG
	3rgELwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77b4-00000000YxC-13m6;
	Wed, 15 May 2024 05:54:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77b1-00000000YwQ-0Vpf
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 05:54:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77ay-00029d-VX; Wed, 15 May 2024 07:54:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77ay-001Tv9-Ie; Wed, 15 May 2024 07:54:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77ay-005ofj-1f;
	Wed, 15 May 2024 07:54:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
References: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
Message-Id: <171575247251.1386405.7976456509144699355.b4-ty@pengutronix.de>
Date: Wed, 15 May 2024 07:54:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_225435_210313_97D06553 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] mci: core: reset number of parttions on
 card probe failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 May 2024 11:58:45 +0200, Ahmad Fatoum wrote:
> mci_part_add records information about MMC hardware partitions and
> increments mci->nr_parts by one afterwards.
> If starting up the card succeeds, this information is then used to
> call mci_register_partition for each added partition.
> 
> If card start up fails, registration will be skipped, but mci->nr_parts
> is not reset. This means that repeatedly calling device_detect will
> overflow the mci->part buffer and overwrite subsequent memory.
> 
> [...]

Applied, thanks!

[1/3] mci: core: reset number of parttions on card probe failure
      https://git.pengutronix.de/cgit/barebox/commit/?id=c3ca560d93be (link may not be stable)
[2/3] mci: core: remove HS200 from mci_timing_is_ddr
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d8a81f83b59 (link may not be stable)
[3/3] ARM64: reloc: fix relocation error for big fat bareboxes
      https://git.pengutronix.de/cgit/barebox/commit/?id=fdb311841c61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



