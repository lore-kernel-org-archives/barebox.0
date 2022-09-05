Delivery-date: Mon, 05 Sep 2022 12:28:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Kn-007Na2-Rg
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:28:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9Kn-0004mS-B9
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:28:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ci49qqo268Bg7a+QLRCVf0Gu/s9FhwW2B68J+dgdXpA=; b=3Ft2t9hWoDFl0cqys8CQChHDj4
	pRsRlrvDBzDrbHOxsCHx1riAlLzd7EUS0B+wO9zqa4ZQKJo/9AdRNrUvHJCycmvveo1w+G15eUWro
	ghiBblI+hDQv1jPI3dEzohK8+hzNY7gLfg+CCVrOzAILm3Q0znU3zly3gea7QH39zFfebFixMwQoy
	/yWDMgprIp43W8TNdpklTqpx1j20tdayvr2rP6RQMhdbvqCTQ4KvdelI9sIKHoJZ9LBAOwvhzsLnv
	v2K9uFIR+cNX8hYsJjaev/FSfERGBPhR9a4g03MW3M+jbXPTTIRuqoWM7nMZut+Iy8WgErFdybsZ1
	xRp7IMbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9Iw-000CZe-W8; Mon, 05 Sep 2022 10:26:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV81k-00FRlb-3M
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ci49qqo268Bg7a+QLRCVf0Gu/s9FhwW2B68J+dgdXpA=; b=UZ9Qbu2Ib0x1iEkWQnhMpRBe9f
	rE9H7uRsNBORAWyYygKeDmIrYuwVCPeCyHKPPeDtSfSg/4iCpJ+aN3/pMpWYLbwo1uFH0U4caJ9bM
	AfdfwzVOeAXHYcWeDoBQzZ3ygNtFWb56ZMxUr4pWvPNPdrfH/98fFm0BS6XNfkJo+nRIet9ExS8PM
	L57xASCA3NZ6b00h3nXVwzC0qFDNRSbyW0q4Sf08yhnSC7l6BZG97a1ax2ZwhxaWOVga32QIHuyJZ
	ak27krpbZSyasf7R43Hm/AdmwlsdQmfyz6ZW9A9/d6btVw+YpF5enXtW/vtbBntWmfYJUcAUI62WT
	yrz8WbEw==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV81g-009U2K-24
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:04:18 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28593AFK865769
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 5 Sep 2022 11:03:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1662368590;
	bh=ci49qqo268Bg7a+QLRCVf0Gu/s9FhwW2B68J+dgdXpA=; l=544;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=gZewEklfgud6ipwRAJ5/avh0GmmzwBPwBfnd033KFb38jHdLOwEPegz3Kqp54m7tg
	 /QZWORv8ZwKcTYwOkwgXklsD/BSmLrtAHscpg2eY7D3kjcpriKmj2diKG+knXqFzz9
	 PzfmhBEOunLq/GKaopYC/KUmSvY9rKjdr/qZER9wRae/ARZWnu8qr00GriVEt77lgd
	 /eKl6tqa8JPAgEBSzznBsGgUz9phzRO8BSGFBOi2OCxX+YW9AA/12yIH2RKGiVybHU
	 ++mn6bycTcOqkv12FSPA6eq53EOB+wMrhvVn9O7Bi9PwoNinOczZH0/Fu9C2cDAVET
	 UTFEFKP5jVdhA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 285938uN3106968
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 5 Sep 2022 11:03:08 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 5BC172BAE5B; Mon, 5 Sep 2022 11:03:05 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 285935w91005646
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 5 Sep 2022 11:03:05 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oV80X-00GBmN-Ay;
	Mon, 05 Sep 2022 11:03:05 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220905070032.536912-1-a.fatoum@pengutronix.de>
Date: Mon, 05 Sep 2022 11:03:05 +0200
In-Reply-To: <20220905070032.536912-1-a.fatoum@pengutronix.de> (Ahmad Fatoum's
	message of "Mon, 5 Sep 2022 09:00:32 +0200")
Message-ID: <ly1qsq2nxy.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_100416_530056_E60236EA 
X-CRM114-Status: UNSURE (   9.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tftp: allocate at least 4096 bytes for FIFO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

> On one board, boots from /mnt/tftp currently fail for me with:
>
> ERROR: tftp: tftp: not enough room in kfifo (only 1376 out of 1432 written

Thanks for noticing that; I sent fixups for the recent patchset.

Perhaps, can you test it on your failing platform with changing

| #define TFTP_EXTRA_BLOCKS	2

to

| #define TFTP_EXTRA_BLOCKS	0

?

This should turn off the workaround of over-allocating memory and isolate
(and verify) the fix for the real problem.



Enrico


