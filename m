Delivery-date: Mon, 07 Apr 2025 09:58:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hNK-009SsG-0t
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:58:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hNJ-0004E7-Mm
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:58:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JJIyMiSwfotfUw0cNzRsgWwR44U/1RqMSKVBFbOGqx0=; b=ZggIMoCAX77KeyO5rqO5ZwGpIZ
	fU+TfKCX+52nNxoPKhZVpuCjzoSdn8qfQiEpvMpB+p29TkK+etPX2slU62lHcp0xEYhWs/KVV4j3V
	yt5D1D0hLl7VGirdEWm4qdlPm9YfqnGetk1ZFx8QdWHin/eOn3Mmwb0Oj0SKlDaDheaBITAQLnvAF
	4O6rvqMsW6EWBMLaEAhz20HlNWYQCfJ3z+VewvjE7UPn3JKfdTYfDgBt+OGaRKqwksiVqVQZAW5DZ
	A3siIO5nrSWfzgxtb/oUsLk9kJrJuKd5jsxNwJKP1Q9GDPPIE+7tEDu7pybxoCfZLUekBG4MJEcEc
	XtRIjcMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hMv-0000000GtqU-1YHM;
	Mon, 07 Apr 2025 07:58:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1h6N-0000000Gopa-2rpx
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:41:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h6M-0001I5-HV; Mon, 07 Apr 2025 09:41:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h6M-003irJ-0e;
	Mon, 07 Apr 2025 09:41:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1h6M-004gGO-0R;
	Mon, 07 Apr 2025 09:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250403083236.29221-1-eagle.alexander923@gmail.com>
References: <20250403083236.29221-1-eagle.alexander923@gmail.com>
Message-Id: <174401166213.1115759.13127052276992222768.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 09:41:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_004103_722192_F704E5A6 
X-CRM114-Status: UNSURE (   7.45  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] spi: spi-mem: Partially update the driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 03 Apr 2025 11:32:35 +0300, Alexander Shiyan wrote:
> The patch partially updates the driver to add the
> spi_mem_default_supports_op() function.
> 
> 

Applied, thanks!

[1/2] spi: spi-mem: Partially update the driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=550d778fbd11 (link may not be stable)
[2/2] spi: atmel-quadspi: Updating the driver from the kernel repository
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e25b03366e8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



