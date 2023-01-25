Delivery-date: Wed, 25 Jan 2023 09:20:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKb1Y-001I3p-Qw
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:20:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKb1V-0005hv-UQ
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:20:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iOrfSfDzFAfMVW1d0v/S8av5Y7V25BAmMNvkhUsEA40=; b=J6SQ+ZI8TdD/d8ua1gPJC2wLvU
	/rg/0iIhM4XkCPzAkuRNc2aWDhE5E77Ghf3/9sUIHOfoqQDJnFyJQliN44wlDqoAcB7LQ9AQvSVbe
	Gg73Ljqm0VALF0PjMVaY5pgfEIy1MYRILYW7q/ygxsNuW3TeSt8JiaaUPGnZ72o6yR+eHYRoEmsPz
	TbtLGHBdbNLkaOpG8dxpcp7rDfZTYJzPbvtWbPZlbpAH7ssFTlqnN7JyL7ZMUOT8gWPZpuVt8rp1K
	jEDGQmRx+ABOlY9hbNcz6SdzX2UHEutu//DweT4Jh+lKwpyOPEnCcVFd1la1/0ITxCCQp/NB9/Azg
	2xSDDWOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKb0G-006NCS-1a; Wed, 25 Jan 2023 08:19:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKb09-006N9b-OS
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:19:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKb08-0005S9-9b; Wed, 25 Jan 2023 09:19:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKb07-0002ja-Ly; Wed, 25 Jan 2023 09:19:23 +0100
Date: Wed, 25 Jan 2023 09:19:23 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125081923.GY24755@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9DkOI1yxte95PYg@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_001925_816461_88881531 
X-CRM114-Status: GOOD (  25.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 07:11:36PM +1100, John Watts wrote:
> On Wed, Jan 25, 2023 at 09:04:06AM +0100, Sascha Hauer wrote:
> > It looks like something is not initialized correctly yet. Normally
> > the usual suspects are pinctrl, clocks or regulators. Each of them
> > should be tied in by the deep probe mechanism as needed already, at
> > least when it's properly registered in the device tree. Clock looks
> > correct (66MHz), for the (pfuze) regulator I can't find anything in the
> > board code that configures something there later. You could verify
> > that the pinctrl has been configured already by activating the debugging
> > in drivers/pinctrl/imx-iomux-v3.c.
> > It could be something that pulls SDA low, but I don't have an idea why
> > it should work later.
> 
> My immediate guess is that it's the pinctrl, but shouldn't this be set up
> for me already? Or have I found a device tree bug?

Yes, normally it should be set up already, unless of course there is
some needed pinctrl configuration in an unrelated device tree node.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


