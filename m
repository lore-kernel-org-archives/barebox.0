Delivery-date: Tue, 15 Oct 2024 10:19:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cm4-004adA-0C
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 10:19:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cm3-0000Y8-Fh
	for lore@pengutronix.de; Tue, 15 Oct 2024 10:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kVIdjmG9co6SGaJlps0MuK+dB3453kdYQAAH+TeZbX4=; b=UjFkCdI/tocHF6/RfC84cCMhW+
	SZTw+vu0yy5A/pq3MWHGeYO7tTpTk47BBxSdTezcrSyeVXOH9JKdHbB3vjIECMrijmbKvyH91OmV/
	ratR+ZpksSmBUgLLbFsDCQa/0d+XRAlmWoG38mzE1AQHQV9m/Q04xO37kZhhtKruGqA74ZHSQGCxA
	Fhb2UmuQuK+GGre56vlelJND5eRCEhISNoOtws60DG9F+R8Egt/4BT5Pjv9m5si4UyrQHtECf2F3j
	pnzedUQhGfr9q/3AIPBvEZzJZPo5qK8OMkxTLyHGMo0KkFe8Ltmpi1N7OY8Q0nOFTVfIjyajPkD9f
	X4rMCtjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0clW-00000007U5Z-1fjq;
	Tue, 15 Oct 2024 08:18:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ckL-00000007Thc-3V7P
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 08:17:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0ckK-0000IY-7K; Tue, 15 Oct 2024 10:17:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0ckJ-001zAd-KI; Tue, 15 Oct 2024 10:17:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0ckJ-00EUn8-1n;
	Tue, 15 Oct 2024 10:17:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rashidwi <rashidwinter@gmail.com>
In-Reply-To: <20241002160714.2423842-1-a.fatoum@pengutronix.de>
References: <20241002160714.2423842-1-a.fatoum@pengutronix.de>
Message-Id: <172898025555.3454570.12450317545956285473.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 10:17:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_011737_904437_E35206CC 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] uimage: fix CRC32 verification on NFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Oct 2024 18:07:15 +0200, Ahmad Fatoum wrote:
> Reading a file over NFS is prone to return short reads as the file
> content is split over multiple UDP packets and reads won't return
> more than the number of bytes that have gathered in the FIFO.
> 
> The uImage verification code didn't account for this and handled neither
> short reads or the file prematurely ending.
> 
> [...]

Applied, thanks!

[1/1] uimage: fix CRC32 verification on NFS
      https://git.pengutronix.de/cgit/barebox/commit/?id=5676b0b818d8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



