Delivery-date: Mon, 13 Nov 2023 12:23:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2V25-009ugC-2e
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 12:23:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2V25-0004Wy-So
	for lore@pengutronix.de; Mon, 13 Nov 2023 12:23:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AIhWLcCr/fEyRUhuTkIzSSQN2qDKlxw7oFDu5QXGCXM=; b=28jaxlxsLv82f243Ync6jfEqS7
	Y+MHMdMH6HfMVWtDhrfmvDPSrJPCsN9JHKy9nAfC82LitHi9T913MaB7KyLnUiLFoiqXRrPQ5lcXG
	+vs1UV7KnDWTa02iymWn+ZBxNfjwAECT94GqJjrR22ktnhq4jiIlfDXiaBC142k1Nmf7plwdLLZCn
	CuwoPVX8mFkaABwE+w5Vfy9Mjgr0U3/11RbowK+nNm96jD6HJ2gbyLTmy8NkCBjh6dj0uCpFo5Sos
	hWhY5TQJ1ARZMHnjROch7/zUYmRYpxzeAswPwZYYJaRbWeVuBZQyy0X3LqvxgrfFhXLv7F/ppH6bX
	wjuZ7QEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2V14-00DiiS-1O;
	Mon, 13 Nov 2023 11:22:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2V11-00Dii5-1U
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 11:22:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2V0y-0004Mt-UB
	for barebox@lists.infradead.org; Mon, 13 Nov 2023 12:22:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2V0y-008ipE-HJ
	for barebox@lists.infradead.org; Mon, 13 Nov 2023 12:22:00 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r2V0y-001oDV-F7
	for barebox@lists.infradead.org; Mon, 13 Nov 2023 12:22:00 +0100
Date: Mon, 13 Nov 2023 12:22:00 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20231113112200.tdasx43gp3eqkyk7@pengutronix.de>
References: <20231113111740.2119800-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113111740.2119800-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_032203_540664_8E04E318 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: bootrom: fix load image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

On 23-11-13, Marco Felsch wrote:
> Without the proper aligned image size we may encounter host load errors
> like:
> 
> | found i.MX8MP USB device [1fc9:0146]
> | No dcd table in this ivt
> | dl_command err=-1, last_trans=-1
> | 4 in err=-4, last_trans=0  00 00 00 00
> 
> The reason for this is that we asked only for the required bytes while
> the host tries to send the complete image which may contain alignment
> bytes at the end.
> 
> Fix this by request always 4K aligned sizes.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

please ignore patch [1] in favour of this patch.

[1] https://lore.barebox.org/barebox/20231113090438.1890680-1-m.felsch@pengutronix.de/T/#u

Regards,
  Marco


