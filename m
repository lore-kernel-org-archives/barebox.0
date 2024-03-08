Delivery-date: Fri, 08 Mar 2024 08:04:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUH6-00DNUi-1A
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 08:04:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUH5-00079a-Qy
	for lore@pengutronix.de; Fri, 08 Mar 2024 08:04:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mSERd1tOvUjKXuBKOaTg5UEsVOHsjMLXyfU7kxdK5jM=; b=y6ls6uRNNuj3yT5BrLXfx8SdL9
	lj8WEBCnmdvet9il8YzIFLw70JHygS1aiDMlXYNCIgBbRckdsP+9UH2UTARoAs8+wfheB+OrI0Avr
	dyctnO/6jlWeZjiH+VIRVkWuaMqZ/nNWd0MzHLEctZHUNZI0SjSn6TeDABu9zDlsrKR0f7SiBpFlu
	RU7avLj574Bi0U+GebSJKOH/RT3NAxfWHUUH/2sWwtVmQg/X++kIeTCb+0NkTlL8HvjQ5xrxUPU0n
	Xklo/ULpl0nXpeYXsu+m3sMpecDdHwpZd3bqi6ye+S6TIjcTnOoLdJtC7xo3BihiDafMLx+KR0904
	iVvEU1QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUGi-000000084TI-2NKX;
	Fri, 08 Mar 2024 07:03:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUGU-000000084Jx-0iOX
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 07:03:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUGS-0006ja-If; Fri, 08 Mar 2024 08:03:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUGS-0055NC-6K; Fri, 08 Mar 2024 08:03:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUGS-006gYz-0R;
	Fri, 08 Mar 2024 08:03:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240306193936.712501-1-a.fatoum@pengutronix.de>
References: <20240306193936.712501-1-a.fatoum@pengutronix.de>
Message-Id: <170988141213.1593374.17562795969137122118.b4-ty@pengutronix.de>
Date: Fri, 08 Mar 2024 08:03:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_230335_229674_660ACC51 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: build common code depending on
 CONFIG_HAVE_OPTEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Mar 2024 20:39:36 +0100, Ahmad Fatoum wrote:
> There's a stub for optee_set_membase(), but it's only defined when
> CONFIG_HAVE_OPTEE is disabled. The out-of-line version is only linked
> when there's either PBL_OPTEE or BOOTM_OPTEE, both of which select
> HAVE_OPTEE.
> 
> HAVE_OPTEE can also be selected by OPTEE, which is the option for
> the driver communicating with OP-TEE. This leads to a linker error
> with the combination of CONFIG_OPTEE=y, CONFIG_PBL_OPTEE=n and
> CONFIG_BOOTM_OPTEE=n.
> 
> [...]

Applied, thanks!

[1/1] optee: build common code depending on CONFIG_HAVE_OPTEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f575583d798 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



