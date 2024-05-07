Delivery-date: Tue, 07 May 2024 09:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FNN-000TnQ-1Q
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 09:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4FNL-0003WY-Ux
	for lore@pengutronix.de; Tue, 07 May 2024 09:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ko4VTecqhobgnYrDZB5eqz2Xvp5EGN/dD+PiLqLo4g0=; b=4DalcisHmWWoqM+UDYdaeqdycJ
	w+5R3RqtHaP8Rn4zBsw7bdxsJLafcWO8Pu0VNLX+pzyHvt190WzDPj9IZVXrdyxc/IJhpkiqMo1EP
	ZQ+LRXZbC17D5YCgOhd5rZFyZVhBgkN4P2Ex2oHGnLXJ7NYypdpamcioHKP/cCY0LVONGcr0xPZNl
	QQPbAyU0kSlSIpvdvgCvbHY29v17entXRAyqiJD6uOLP2ZlH9VGZEbeEU4V70o94eyulllHwx8jYa
	86PZkCp6fJPJaGThyMvHu9ZHCFDA5Ls5RVnUHQ50XwuYm8aLYmJFm4DggEZ+UyGNnCxRqTmdwf8FT
	+29rP2tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FMp-0000000A07C-1T3e;
	Tue, 07 May 2024 07:36:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FMm-0000000A06e-1cPb
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 07:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FMl-0003Oc-56; Tue, 07 May 2024 09:35:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FMk-0003Qz-Or; Tue, 07 May 2024 09:35:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s4FMk-00407u-2H;
	Tue, 07 May 2024 09:35:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240430105310.3149242-1-s.hauer@pengutronix.de>
References: <20240430105310.3149242-1-s.hauer@pengutronix.de>
Message-Id: <171506735870.953785.17772523027343750250.b4-ty@pengutronix.de>
Date: Tue, 07 May 2024 09:35:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003600_461430_995832C7 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] add PBL handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Apr 2024 12:53:07 +0200, Sascha Hauer wrote:
> We need to pass data from the PBL to barebox proper. Right now we do
> this with passing the data in registers which is quite limited. As the
> amount of information that has to be passed increases it's time to
> overcome this limitation.
> 
> This series introduces handoff-data which is a linked list of memory
> blobs that can be passed from PBL to barebox proper. Board and SoC
> code can append this list with their own entries and pick them up later
> in barebox proper. The ARM architecture is converted over to use handoff
> data, other architectures could follow.
> 
> [...]

Applied, thanks!

[1/3] ARM: move blob_is_arm_boarddata() to include
      https://git.pengutronix.de/cgit/barebox/commit/?id=c78e0862d540 (link may not be stable)
[2/3] add handoff-data support
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b17d1443632 (link may not be stable)
[3/3] ARM: pass handoff data from PBL to proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=637231379c32 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



