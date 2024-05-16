Delivery-date: Thu, 16 May 2024 13:50:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Zcz-00H6es-0s
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 13:50:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Zcy-0003RX-Nw
	for lore@pengutronix.de; Thu, 16 May 2024 13:50:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ez5FAVh5OGqNn1LDbBt3POEDutSaxc9RLQ1HMo+iw5s=; b=QxS+wouGE41Q0PgQC61jFE8lSk
	tfOvo/KIpOSYEbMox75e3ZARQwSPGftCm6IZsFaaUIfJrveiRRxO1Rz4WXbEixWz1+8ff914xtNct
	XwwWmHpKpcKAfXnQ6w/Qn0qw6cAadHeFCndv84ufA8PBkzgtTDisRpgnDwnLHA4zd7XBfKDD0xH2u
	5trq4ACI2AuQk2Ki5yUWNv+pKXuOIgClAUm5yaWblTw0PUHx1UCA6mtFU3APt/OKXq5aUqGDxg7Sg
	0x1Db7bTPbosr6kknQlbfqBZ0SzcUcuMMan61Vwx9UJPhsxpDzIskaJtOSimWm/KVk7jORF6HKEBT
	zU1deW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ZcO-00000004fv9-3Yxv;
	Thu, 16 May 2024 11:49:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ZcL-00000004fuT-17qc
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 11:49:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ZcI-0003F4-PO; Thu, 16 May 2024 13:49:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ZcI-001hhd-D8; Thu, 16 May 2024 13:49:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7ZcI-007uuw-15;
	Thu, 16 May 2024 13:49:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240516101052.4131491-1-s.hauer@pengutronix.de>
References: <20240516101052.4131491-1-s.hauer@pengutronix.de>
Message-Id: <171586018632.1886976.3455739527436687848.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 13:49:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_044949_337552_EF3B09EC 
X-CRM114-Status: UNSURE (   6.72  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga-xload_*defconfig: merge and disable
 unused features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 May 2024 12:10:52 +0200, Sascha Hauer wrote:
> The socfpga-xload_*defconfig have MC13xxx, AT25 and SPI support enabled.
> Disable these as they are unused. This makes the configs small enough so
> that we can merge the two existing configs into one.
> 
> 

Applied, thanks!

[1/1] ARM: socfpga-xload_*defconfig: merge and disable unused features
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4f47a86f197 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



