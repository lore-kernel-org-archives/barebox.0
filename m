Delivery-date: Tue, 24 Jan 2023 09:28:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEf8-000Hx7-UA
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 09:28:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEf6-0007WE-3S
	for lore@pengutronix.de; Tue, 24 Jan 2023 09:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FMMdh5l5PwQ3RQIpfIScK8aEbP40m9QnQfnSmeDgSJo=; b=fJMEzd+hxkBP8xJw6KOlrQY8RR
	+Viwze/pAzAtUHi/YoYmV6btdbiOy19mT5NWuK+TcfyAye/LbpZ+FHi9/CH6wMC+H0xiPhQPMLwSn
	u0YqQ0ZSquDxNotTkZP3DVXc6u+x2+sOoYE9508MKHpKGx6zqflyxg5sp2AzdWCWG6cexOZIGOvi7
	RNsLGuhH7BWpdpbc/TOVJ4WlaXohFnRza1MELMUH7xLoxWu9cgK6hIpimRZqK0Lhy+tfy3pFtPOb1
	gsC/nllet5rbGqAxVGr8FNQIa/fyAhDQdxPGp+dfuL2GkFNQUrupVEfdbxrjCiV5L6MjOJ1Lk0+E1
	jkJgbo6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEdY-002jqy-3x; Tue, 24 Jan 2023 08:26:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEdT-002jq5-6g
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 08:26:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKEdO-0007Fw-MP; Tue, 24 Jan 2023 09:26:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKEdO-00011T-10; Tue, 24 Jan 2023 09:26:26 +0100
Date: Tue, 24 Jan 2023 09:26:26 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230124082625.GU24755@pengutronix.de>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_002631_257740_9EA950B6 
X-CRM114-Status: GOOD (  19.59  )
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
Subject: Re: [PATCH 0/7] Support generating DIMM parameters on more systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jan 22, 2023 at 01:44:22AM +1100, John Watts wrote:
> Boards that with swappable RAM sticks need to read SPD data and generate
> useful parameters for the board's memory controller.
> 
> Currently the only board that does this is the ls1046ardb.
> This patch series modifies and re-organizes that code so it's usable by
> other boards.
> 
> I have used and tested this patch series on the i.MX6 and ensured the
> existing board still compiles.
> 
> There is one API change: spd_read_eeprom now takes a memtype parameter.
> This is required as the current code only supports reading DDR4 chips
> while the i.MX6 uses DDR3 chips.

Applied, thanks.

I added a sentence to the commit message of 1/7.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


