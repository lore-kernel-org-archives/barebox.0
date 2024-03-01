Delivery-date: Fri, 01 Mar 2024 22:56:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rgAre-0036gJ-1u
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 22:56:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rgAre-0008RQ-1o
	for lore@pengutronix.de; Fri, 01 Mar 2024 22:56:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UHmVcB+g8NCSVzyonJGPZIGwIPDlt81Gr8PtZwn8rDI=; b=wNT2wfM1+PrIansmgLNsUiNnQF
	bjdU5TMTf1VqRVuL0Xt2oGxdL6wmD0FI2/KgX91Y+MKoBgVOMHVhpGdOfVM3C8tFVQwcwH0aYf1G3
	AczIu7HuAvL+DvjAseczOvPb48Crg7WTmBkRmpAnrUYOxq6+Q+C85MoqF7oOfWPEULy2h9olNrtqZ
	bKgdefLceHlu1hJuSXmFvjTI8SA6SFWFendZpTOIkFkufXGKLo0Ok3m6UZCRYFyC75NvB7giTS/dE
	/Hkg3SqyEtUBscULLYf+EiIc+8jbTe9E7nQEQJSNmQzLzCzLIE1r4MunDzjNvMFlKk/yVWXMgAhTe
	HfeAin+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgAr1-000000025A9-301Q;
	Fri, 01 Mar 2024 21:55:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgAqx-0000000259T-3JHd
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 21:55:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rgAqt-0008Ht-W1
	for barebox@lists.infradead.org; Fri, 01 Mar 2024 22:55:36 +0100
Message-ID: <423ef544-3e9a-4aec-8611-2b17aa7fc51d@pengutronix.de>
Date: Fri, 1 Mar 2024 22:55:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <7e61ecb1-aeb7-46d7-b55e-472ba9b1057f@pengutronix.de>
In-Reply-To: <7e61ecb1-aeb7-46d7-b55e-472ba9b1057f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_135539_863377_8C6A8EEB 
X-CRM114-Status: GOOD (  12.32  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Temporary outage of Git-over-https at
 https://git.pengutronix.de/cgit/barebox/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.03.24 10:53, Ahmad Fatoum wrote:
> Hi,
> 
> As some may have already noticed, the git-over-HTTPS upstream is currently
> non-functional:
> 
>   $ git clone https://git.pengutronix.de/git/barebox
>   Cloning into 'barebox'...
>   fatal: remote error: FATAL: R any barebox webserver DENIED by fallthru
>   (or you mis-spelled the reponame)

This should work again now.

> 
> This is being fixed. If you need to fetch the newest master or next state
> in the meantime, please use another protocol or the Github mirror:
> 
>   git clone git://git.pengutronix.de/barebox
>   git clone https://github.com/barebox/barebox
> 
> 
> Cheers,
> Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



