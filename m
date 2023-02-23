Delivery-date: Thu, 23 Feb 2023 16:15:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDJi-00H0oD-47
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 16:15:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVDJg-0002xt-RB
	for lore@pengutronix.de; Thu, 23 Feb 2023 16:15:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UY2DrVBNkzuNMjNeTHqRdfeb9jmcjkVJzREdBbxdHDE=; b=EnmjTtxhCGFYov3TkqP3W6l7AS
	CMZaxzUsur7ziiQq7BM4nMdI6CNa8eWx+2Y5DryKB1mWFjGTzg+rX1jXzvk48UjhFjqjkg6ZfpbMk
	LJpzoS98+PNW6iXPDmrq+7EvDaBgOT8BpzdXNwD/nJxEvGPxG30h9bUP+OQvWM0Eq7Jm1dLc26nv+
	qWc2d5qoaQv3r003zQjhNpxCCSLyM12RojNEJ2DCKXYclA4+aj+fWkEctpOrsUA7FmtYbfswtaAks
	L9MSHfNB9mOfjHK+06gvrHdX/AC+4AjsBod8cKe0KOwau0wbO25U8hOtRDOmMoA+EiZ+F6QjyLQjU
	BWmWn3Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDIY-00Gyym-Kr; Thu, 23 Feb 2023 15:14:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVDIU-00Gyxh-CU
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 15:14:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVDIT-0002fO-64; Thu, 23 Feb 2023 16:14:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVDIS-0005ex-V0; Thu, 23 Feb 2023 16:14:12 +0100
Date: Thu, 23 Feb 2023 16:14:12 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230223151412.GG32097@pengutronix.de>
References: <20230223085555.GB32097@pengutronix.de>
 <20230223102131.GM23347@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230223102131.GM23347@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_071414_444127_5E86DDD1 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2023.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 23, 2023 at 11:21:31AM +0100, Sascha Hauer wrote:
> DON'T USE!
> 
> Unfortunately there is a nasty bug in this release which breaks console
> output on all boards that use the stdout-path device tree property
> without ':' to separate the port from the baudrate, which is what the
> majority of boards does.
> 
> There'll be a stable update soon.

And the stable update is there. Please use v2023.02.1 instead.

Sorry for the inconvenience.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


