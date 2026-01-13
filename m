Delivery-date: Tue, 13 Jan 2026 12:07:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcFZ-000rJJ-1S
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:07:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcFY-00030m-GH
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FyBFbqG1xZ1wWFUEw+ngYU/HNKALvqFb5zDlaE7uax0=; b=yN49xjpvmKHlkIPSr+jHxWbOZo
	iEK64xxn+ccSguYLzJc1ZP9xfVnACnT6fHVddC1KvSjs+5usl6qRdqRQUiFTCHJV6+zzH1GMJLOAE
	pqJzZLS26bzNnXBaiNM9c7UsDakgWFJL8VFoiR70gDCA3ojesaW+WvJkFOgcat+ZImgp9B9updn+0
	BOhsYrxuoyeSk94Txt5ymD+qldDzIcZ36mzT/o28oBY2fC9rP2Z72is3GnbKDw/xqejv9/lfgb/os
	FFLCx+/jbDGjor8vm44qhY1Fe8M76orrX6XyNSAP/dFRfPAFw+Y+7LBukvekEEt7jDk6FNfJOWMTt
	SGhh7joA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcF9-00000006zUH-1cCK;
	Tue, 13 Jan 2026 11:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcF7-00000006zTv-1zum
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:07:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcF5-0002sl-Pn; Tue, 13 Jan 2026 12:07:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcF6-000PSS-0o;
	Tue, 13 Jan 2026 12:07:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcF5-00000006B9Q-27Ux;
	Tue, 13 Jan 2026 12:07:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Claude <noreply@claude.ai>
In-Reply-To: <20260112085548.2952525-1-a.fatoum@barebox.org>
References: <20260112085548.2952525-1-a.fatoum@barebox.org>
Message-Id: <176830243950.1472584.6618246521984040392.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:07:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030721_520672_80A6B587 
X-CRM114-Status: UNSURE (   9.17  )
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
Subject: Re: [PATCH master 1/3] virtio: ring: fix stale data in queue after
 reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Jan 2026 09:55:39 +0100, Ahmad Fatoum wrote:
> When resetting barebox for QEMU Virt or chainloading it, the log is
> spammed with:
> 
>   virtio_net virtio1: id 65536 out of range
> 
> This is because we have two ways to allocate the vrings, either via
> dma_alloc_coherent or memalign and the latter doesn't zero the queues.
> 
> [...]

Applied, thanks!

[1/3] virtio: ring: fix stale data in queue after reset
      https://git.pengutronix.de/cgit/barebox/commit/?id=40339821fad1 (link may not be stable)
[2/3] scripts: Makefile.lib: suppress graph_port warnings for overlays
      https://git.pengutronix.de/cgit/barebox/commit/?id=c28e8f55611c (link may not be stable)
[3/3] ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=b99251cf3c3e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



