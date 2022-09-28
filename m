Delivery-date: Wed, 28 Sep 2022 11:31:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odTPQ-00HEEe-36
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 11:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odTPO-0002X1-Cl
	for lore@pengutronix.de; Wed, 28 Sep 2022 11:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tR60X1DJuV1P1mmcTMubi+B5caOyIHob4U1BHW0qwIo=; b=iWtdDIoutsFLnB3P+1p1HHT3It
	h4y+F+erWeWyqNnja8lU5KxT4S2ilcQ2BKmx2neJwpkHKokmiCZvsJFAdcEcefMfFh+Ncb7lhNDW4
	Yeml9dKwkyzzgc2pv5kGLfWfW48wmYqklx9Re3aCA56a3llJqHwz+rK4H6O/PEMNC2npFz3GQiYOy
	6LQy2T3HGIerMdN7wXUQtskT+1RpRa29QP9SQ+Cef8mf4RHaG70OJf/N5U95N1E7YyGCAV4wn3m1Z
	fbra9BwBrE+5I7OHOrPInZ+nuf/qKxtBsmsYDIQ5mqBpGZnl7J8mbJ8sw+96hUvUTxrQdSrDl/Jba
	uAGVqL1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odTNs-00FCru-Vp; Wed, 28 Sep 2022 09:29:41 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odTNn-00FCnd-6T
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 09:29:37 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28S9TPHY1091658
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 11:29:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1664357365;
	bh=tR60X1DJuV1P1mmcTMubi+B5caOyIHob4U1BHW0qwIo=; l=305;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=Q1GeDBpK6xrnpKto7Nx01o3WiNlgxr4ewePb96gdlX7emgwen0d7ti2H4Bf2bTM40
	 ZWCPLAl2C1mZTGSPRqf+mSe7ghDiiI+W6U0BmxiSQh2XvACA+cmm+eYwwef4vXekBs
	 YRP/ppNNBxXFh8P6iUjMVjIVuC0MnkN1sc4WvixR/iVqsfB3BiMCtTSWhRbtDUSccZ
	 lhRenrykGSWRVu1q+39EtJMFKOPb/eODg82WxXF1ZDN0WzWih4zOWLuS+cqg4LmypB
	 asMIiiO3PwxbTu6BcgOnJ5cTgVv+fOWMfbT395L9LAl7xpbs/FdWzbZBBYKcf3gtDJ
	 yBZgxO60THMMw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 28S9TN7D1353424
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Wed, 28 Sep 2022 11:29:23 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id PI6SZV7IIT; Wed, 28 Sep 2022 11:29:22 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 28S9TMST1044698
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 28 Sep 2022 11:29:22 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1odTNa-00BvVa-1o;
	Wed, 28 Sep 2022 11:29:22 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220927172217.662321-1-enrico.scholz@sigma-chemnitz.de>
	<20220928091141.GV986@pengutronix.de>
Date: Wed, 28 Sep 2022 11:29:22 +0200
In-Reply-To: <20220928091141.GV986@pengutronix.de> (Sascha Hauer's message of
	"Wed, 28 Sep 2022 11:11:41 +0200")
Message-ID: <lywn9nyhhp.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-REDDOXX-Id: 633413f2934b9d3e05358924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_022935_410890_39F10D49 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] zstd: fix assert() logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

> On Tue, Sep 27, 2022 at 07:22:17PM +0200, Enrico Scholz wrote:
>> It should warn when condition does **not** hold
>
> That fixes only the warnings, not the regression, right?

no; sorry.  I stumpled over it while looking at this regression.


Enrico


