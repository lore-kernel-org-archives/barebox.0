Delivery-date: Tue, 19 May 2026 16:36:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLYx-001WfM-0g
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 16:36:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLYw-0005du-K8
	for lore@pengutronix.de; Tue, 19 May 2026 16:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k1TOESg/FejHnNhbSpdkgoP3SdZ8GICthE5cWjatLR4=; b=V/nGUdWZmjSSPN6MHtxijgMji9
	/RET0DO7/cP51vsjzc1AsDDYhkiyTJ/PXgTIjy1u0K7f9yHaOGQ234YnYDsoAzHWED2khgOgI3J5h
	euT4fbH3bXVYxk4FchxNIFdgbMMCvyKB0Hm6SBdbnXA3jcC14DUvrJyn1OkqdmhypwCyk4R5IXWaw
	aCBPiIcc/Gp9bjIm+k14dNQRSWrO4fW4vQKO8AirzyKzJS8IkBZcvIoDz8tGAjXIUTmvdUnD+/cbA
	5803i2wKXSr6Hq74BxN9uejTHQSmLLp1bXILLJCedfp7qE5ghzLWnPmI7dnJ2QzY9UGP2GChZ5f7J
	eX9c8vxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLXs-00000001qyz-3rm5;
	Tue, 19 May 2026 14:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLXk-00000001quq-0nbd
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 14:35:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXi-0005SJ-Ie; Tue, 19 May 2026 16:35:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXh-000mMe-35;
	Tue, 19 May 2026 16:35:34 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPLXi-000000062CK-1wKu;
	Tue, 19 May 2026 16:35:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260519053350.4061870-1-a.fatoum@pengutronix.de>
References: <20260519053350.4061870-1-a.fatoum@pengutronix.de>
Message-Id: <177920133445.1438321.12204404754670819585.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 16:35:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_073536_256506_31DE5BF1 
X-CRM114-Status: UNSURE (   5.19  )
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
Subject: Re: [PATCH master] serial: ns16550: add missing Linux console
 names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 May 2026 07:33:48 +0200, Ahmad Fatoum wrote:
> The OMAP earlycon and the regular jz4740 console names were not
> populated, which meant barebox couldn't fix them up correctly.
> 
> For example on a Beagleplay, global.bootm.earlycon=1 caused:
> 
>   commandline: earlycon=<NULL>,mmio,0x2800000 console=ttyS2,115200n8
> 
> [...]

Applied, thanks!

[1/1] serial: ns16550: add missing Linux console names
      https://git.pengutronix.de/cgit/barebox/commit/?id=7e2981532bb3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



