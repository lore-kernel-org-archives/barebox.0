Delivery-date: Tue, 01 Apr 2025 11:17:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXkc-006w0B-1A
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 11:17:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXkb-0004Ku-O6
	for lore@pengutronix.de; Tue, 01 Apr 2025 11:17:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OrwalM16DBbWLmDX9aYyUB23JTczdZf8rs96TJE/JSM=; b=hwD5A0fgViYu4KeqcPTO8dnyob
	6o4yHOWgV4knkX+R/H5cDH+Fydeu1SOGDGV9glmb6bQuYBcqlMxhL/NAMKCjWJMfvPBi0WMPX4EDr
	pZllbdIZONHwut5iniXpr75//xMMIa7efYGCio/YhX9G2LfPJ1YkrKCVyO+GZW56ItrcMZo6++eZw
	D/T3Bu93gmlhNgvhi8XcXOMZ5yqfjq5ZnOKjj4qw8GZPglCKBX7YF2Lsa6lZx4rYYc25fUJ7ZFd7Q
	Lks98DqdGL0PVCRUKOhCK4Iht41ni/ZGO3C6queQjCn7CFzPSzvYBAX1nGdthehcg7Bqn/hH3jZah
	3bmi7PtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXk7-00000002RV3-1IQ5;
	Tue, 01 Apr 2025 09:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXYk-00000002PVK-2cO7
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 09:05:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzXYj-0002OJ-3M; Tue, 01 Apr 2025 11:05:25 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzXYi-002juo-2x;
	Tue, 01 Apr 2025 11:05:24 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzXYi-00B4Gf-2e;
	Tue, 01 Apr 2025 11:05:24 +0200
Date: Tue, 1 Apr 2025 11:05:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z-usVI_cB6bgsiRy@pengutronix.de>
References: <20250331122918.564304-1-o.rempel@pengutronix.de>
 <6f67de1f-b159-4190-bd31-ed2ef990f290@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6f67de1f-b159-4190-bd31-ed2ef990f290@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_020526_859674_DDAD340C 
X-CRM114-Status: GOOD (  20.04  )
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
Subject: Re: [PATCH v1] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 01, 2025 at 10:53:44AM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 3/31/25 14:29, Oleksij Rempel wrote:
> > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > Introduce support for the STM32F7 QSPI controller, compatible with
> > "st,stm32f469-qspi".
> > 
> > Validated on STM32MP133-based MECT1S r1 board, which includes an
> > F7-compatible QSPI peripheral
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> 
> [snip]
> 
> > +static int stm32_qspi_get_mode(u8 buswidth)
> 
> Is this ever called with a buswidth > 1? I think the spi_mem core in
> barebox never uses higher buswidths. Given that you are adding QSPI
> support, you will surely want to see quad buswidth actually working,
> right? :D

Sure :) I get it - every maintainer dreams of getting the most out of
each patch, and full QSPI support with quad buswidth would definitely be
nice to have.

But with this patch, we're going from “doesn't work at all” to “works,
just not at full speed yet.” That’s already a big step forward,
especially for bring-up and flashing use cases.

If we judged everything in Barebox by full performance, we’d probably
have to drop most of the networking drivers too - since Barebox usually
isn’t about maxing out throughput anyway ;)

So yes, proper quad support would be great - but for now, this patch
gets us something working, and that’s a solid starting point.

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


