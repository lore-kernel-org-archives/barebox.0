Delivery-date: Tue, 16 Apr 2024 13:11:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgiS-003HDr-2T
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 13:11:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgiS-0006Ea-7C
	for lore@pengutronix.de; Tue, 16 Apr 2024 13:11:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tyt4cLZnxRJckoJILfXTChR9XLDXfQD2y7Y1sm5oq04=; b=kDRN+kLVgkjeM6lIEyPkY2pfY9
	f/Eu5pDh2OtzQ6J5u4LwhHtlINuJL26NdiQxKV+zCQg9ThqNKmlkzOg8hAZkbtKrhzVsR0px7kHFq
	ySgpZOzVatq3IWeFOTIuh6skQVnKZ7UCpM9PPD2z0QKxqJ7NoUOuUEACvFGB8DDliz+7aa/OK/KFj
	o/IB/pnruGEvA9SEs6+nGUulI1tmfljEzryMMuFHcWMXnSp9zNFSRTUolfnn0FGVFLutYGsdMX1Zm
	Jw7pWCyNmJj5uQx2LxV7GuaxLLnstHUWP+cBjWGbfmcQBeQDPC8ALjEsQtrby9W1gL9oSQrW1FVzu
	25pZ8+ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgi3-0000000BvaK-2oLB;
	Tue, 16 Apr 2024 11:10:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwghz-0000000BvZI-49hm
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 11:10:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwghy-0005cl-QJ; Tue, 16 Apr 2024 13:10:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwghy-00CbA6-Db; Tue, 16 Apr 2024 13:10:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwghy-00E4H1-0y;
	Tue, 16 Apr 2024 13:10:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: str@pengutronix.de
In-Reply-To: <20240415052734.366242-1-a.fatoum@pengutronix.de>
References: <20240415052734.366242-1-a.fatoum@pengutronix.de>
Message-Id: <171326583828.3352672.68177319447673987.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 13:10:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_041040_068616_932F15A0 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: core: don't fail MMC probe if HS200 isn't
 supported in HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:27:34 +0200, Ahmad Fatoum wrote:
> A MMC may support HS200 in theory, but it's unusable due to I/O
> voltage. Unlike Linux, barebox doesn't check the I/O voltage, so it
> will attempt enabling HS200 and get told no by the card.
> 
> This no currently triggered a failure of the probe:
> 
>   mmc1: detected MMC card version 5.0
>   ERROR: mmc1: mmc_select_hs200 failed, error -5
>   WARNING: mmc1: Card's startup fails with -5
>   Cannot set parameter mmc1.probe: I/O error
> 
> [...]

Applied, thanks!

[1/1] mci: core: don't fail MMC probe if HS200 isn't supported in HW
      https://git.pengutronix.de/cgit/barebox/commit/?id=75d6a1ce692d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



