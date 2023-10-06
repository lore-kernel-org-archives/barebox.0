Delivery-date: Fri, 06 Oct 2023 13:46:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojHa-008NNe-7n
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 13:46:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qojHW-0004r4-Ha
	for lore@pengutronix.de; Fri, 06 Oct 2023 13:46:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CHx6c7/gyPxaLLwytmxcZnP8eVH8aS+mkd+ClA0lT4U=; b=leRxqdInZJlJ+cs42kK4VSW99q
	PPapSAeemUS+uvo5zRq/OjJzRyvoYilqeage75xnjDIdeiZT36VbSi8fRlkRsf1nSEiWwW9q5FY6y
	cp5YIa760ZSZ0UYD2kUu+CYu44jY4WtQen6DVgD1VyOgCafXag1mdYGLx271e6mFONN15m4LKJ3Zu
	Oul1OVZ49f4UVIZFRUue4pYFNoTwEErS7GfX/M9p7SMD3DU3cScg0zdQTlrNhIn0sNj5wwuiZneUn
	XZ6ikcz1OZY6MMSrBxJH1uUw2CPo3ledjMatA74Q+mx4KYaNgKVNXO/ftFSiAkHDiQhN2GjyBC5Zg
	SoKrcz2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qojG5-005iCJ-2S;
	Fri, 06 Oct 2023 11:44:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qojG1-005i90-2E
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 11:44:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojFq-0004Xz-4f; Fri, 06 Oct 2023 13:44:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qojFp-00BVLF-OM; Fri, 06 Oct 2023 13:44:25 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qojFp-00D47i-Lv; Fri, 06 Oct 2023 13:44:25 +0200
Date: Fri, 6 Oct 2023 13:44:25 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20231006114425.GC3033385@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
 <20231002101654.2373000-10-o.rempel@pengutronix.de>
 <20231004064156.GG637806@pengutronix.de>
 <6eab50a1-e490-3abf-5009-e1b8165c1cbb@pengutronix.de>
 <20231005070717.GA3069731@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005070717.GA3069731@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_044437_728870_C43DCBD8 
X-CRM114-Status: GOOD (  19.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/10] net: lib: add ether_addr_inc() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 05, 2023 at 09:07:17AM +0200, Oleksij Rempel wrote:
> On Thu, Oct 05, 2023 at 08:48:46AM +0200, Ahmad Fatoum wrote:
> > >> +void ether_addr_inc(u8 *dst_addr, const u8 *src_addr, u32 increment)
> > >> +{
> > >> +	u32 value;
> > >> +	int i;
> > >> +
> > >> +	for(i = 0; i < 6; ++i)
> > >> +		dst_addr[i] = src_addr[i];
> > >> +
> > >> +	for(i = 5; i >= 0 && increment; --i) {
> > >> +		value = dst_addr[i] + increment;
> > >> +		dst_addr[i] = value & 0xFF;
> > >> +		increment = value >> 8;
> > >> +	}
> > >> +}
> > > 
> > > The Kernel already has eth_addr_add() and more helpers. How about
> > > adopting these instead?
> > 
> > I had copied them over here: https://lore.barebox.org/barebox/20230911155927.3786335-2-a.fatoum@pengutronix.de/
> > They got reverted along with patch 1/3 in that series, but they have no dependency, so could be reinstated.
> 
> Ok, it looks like two last patches need some more work. I'll drop them
> for now and respin it in a next time slot.
> 
> @Sascha, should I resend first 8 patches separately?

No, I just applied 1-8

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


