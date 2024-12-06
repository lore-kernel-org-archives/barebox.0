Delivery-date: Fri, 06 Dec 2024 11:02:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVAp-004hL4-13
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:02:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVAp-0007sz-8B
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:02:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZtiB0DXDzDcYECn6y1ckaXtbXP15DAAyZfP3dGdfm9Q=; b=l8SQiL4VQmHLlxfvXdYU0DB8SY
	mCvzu92OK5xpPSFkHYCNzCmMRSXRs78Gy97toB9iSeqHY/RWEBtGqByeQpOMndNv80srumRVBBJqA
	vMem9magYYxOUzZ7MmdY6EZq74SJUqSNgnfTUde+8Tm614H+uR5/aT2WM4+FdvgDIrxXIi+Y2souQ
	OWmwt89tRB+ZWoxCP+E9TiSvUzla2h8TFaQd1Bzns6Hh3UohlLAUxMkkpqZy4dTet0YDNVDLW/22z
	U2Xa1lZfTjod2/3+jL4DcV72WeHjh/zWUx0uLB5KLM2+GCNf4f5lxVR1sYOlXNxrUWeHhrJImqTJ2
	qUS7txtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVAR-00000001Bck-1iEZ;
	Fri, 06 Dec 2024 10:02:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVAO-00000001Bbl-26V4
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:02:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVAN-0007l1-54; Fri, 06 Dec 2024 11:02:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVAM-001yZK-0Q;
	Fri, 06 Dec 2024 11:02:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVAM-000ZM9-2h;
	Fri, 06 Dec 2024 11:02:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
In-Reply-To: <20241203202447.587667-1-a.fatoum@pengutronix.de>
References: <20241203202447.587667-1-a.fatoum@pengutronix.de>
Message-Id: <173347935083.135892.2192591503237161572.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:02:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_020232_542270_4F808DD6 
X-CRM114-Status: UNSURE (   8.76  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: omap: fix NS16550 UART setup in
 omap_debug_ll_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Dec 2024 21:24:47 +0100, Ahmad Fatoum wrote:
> The NS16550 on the OMAP SoCs has a special mode register that contains a
> disable bit. In order to use the peripheral, this bit needs to be
> cleared.
> 
> We do that in ns16550_omap_init_port() and used to it for the DEBUG_LL
> case in omap_uart_lowlevel_init().
> 
> [...]

Applied, thanks!

[1/1] ARM: omap: fix NS16550 UART setup in omap_debug_ll_init
      https://git.pengutronix.de/cgit/barebox/commit/?id=f8debca379c0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



