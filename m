Delivery-date: Tue, 12 Sep 2023 12:56:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg140-00CYBE-14
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 12:56:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg13y-0004ck-9k
	for lore@pengutronix.de; Tue, 12 Sep 2023 12:56:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hk6ymBM186ek5p9mt5wwUT0HcIQLQcvjlv8MbvD0w6s=; b=FYMGb/biQv2b1nDC8LEE+WtH/W
	WvISbipJRG9H0uRQ8Lil0hKQQOm0ScjBAo8TB4NpvkfDxdAcAu4voZ/ImLZ47lNUVjGuSDgdfUx8D
	H+QQrAuWHwE7996UfJEZ5Kzor6pRQZXuJ/uq3M6sBEeJLDW3w7OCkf7zKLT5IslVWqNxuHZTiKch3
	REytezfRFKpB0yL0oPEaawRWqDj/nGbDJMLVFPIAcjB6LCSls74Ap8saF/crUMp6drj8wxn1QYnjx
	CWs4uOBm5soj/e/iR0zQbDNJd0sx0hywITS9Bg/du4j06/grkCpAm9F21MVGkoCMxnNhkUBthBxeO
	JjtwniUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg12s-0031jX-1T;
	Tue, 12 Sep 2023 10:55:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg12p-0031gl-0V
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 10:55:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg12n-0004Iy-PO; Tue, 12 Sep 2023 12:54:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qg12m-005l0k-Rs; Tue, 12 Sep 2023 12:54:56 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qg12m-005bPH-Jp; Tue, 12 Sep 2023 12:54:56 +0200
Date: Tue, 12 Sep 2023 12:54:56 +0200
To: Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org,
	Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
Message-ID: <20230912105456.GB637806@pengutronix.de>
References: <20230801104417.8941-1-denis.osterland@gmail.com>
 <6bbc80679a4a24710e779989c6bcc4ab8278122f.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6bbc80679a4a24710e779989c6bcc4ab8278122f.camel@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_035459_193678_A021D626 
X-CRM114-Status: GOOD (  17.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] raspi: support to read vc values via dt-2nd boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Denis,

On Wed, Aug 02, 2023 at 12:49:54PM +0200, Denis Osterland-Heim wrote:
> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> 
> In case of boot via dt-2nd pbl does not copy dtb, because it is not
> executed. With this patch the values were read and registered as
> fix-ups. It also adds a inif function that only fix-ups the ethernet
> MAC address.
> 
> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 32 ++++++++++++++---------
>  1 file changed, 20 insertions(+), 12 deletions(-)

Sorry for not handling this earlier. I always forgot to trigger Ahmad to
have a look at this patch. Now I did and he looked at it, but I can't
apply as whitespaces are mangled.

Please resend with proper formatting.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


