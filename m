Delivery-date: Mon, 27 Oct 2025 11:25:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKQ6-00CJ1f-26
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:25:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKQ6-0004Ym-52
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:25:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V9olgiXDPU6X52YEPDH2BtPxtrthZ5MMc7b+BOAA1Tk=; b=YvK94EDy0ljDe6ojFbUAbAmdmR
	RmKPt10PejZt9DEGsXgeBM9BpSHal+8myA2wYsbu/Kavqtzc7SN4w87fNLCNoaUa7DJLLOeTDumLn
	ZYIQqI5mGe12QsW+s0HQmlRTK+JTInG0t2wE3kmzPZ0HP8KgX4IJIItt71Tv2LuwNO4s7ydyFh4pH
	wN3npOC66QFn912/dw6BY0aAHcCB44A9Neag8YDnNK7RlFy1AJSXg0SFwoI0EJXr09Tue3D3FkwJ/
	yrZPAft41vUcdpPQFPpX3jYmdguDHaPMh2kIBKnWL1/vQSPmD50ZOQ4+XJyl7Aypx+Jt4ARujMKYF
	FHpSCabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKPd-0000000Dee3-11RM;
	Mon, 27 Oct 2025 10:25:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKPa-0000000Ded9-0Di0
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:25:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKPY-0004Qf-Ag; Mon, 27 Oct 2025 11:25:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKPY-005giM-0T;
	Mon, 27 Oct 2025 11:25:12 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKPY-00398M-0A;
	Mon, 27 Oct 2025 11:25:12 +0100
Date: Mon, 27 Oct 2025 11:25:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <aP9IiKis44az5DZy@pengutronix.de>
References: <20251020182841.590206-1-a.fatoum@barebox.org>
 <176120634786.1140879.1658847254082738843.b4-ty@pengutronix.de>
 <92aba6cf-cb36-4fc6-a0ec-17d5ff214b15@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92aba6cf-cb36-4fc6-a0ec-17d5ff214b15@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_032514_090396_037A552A 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] test: py: dm: skip test if veritysetup command is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 27, 2025 at 08:56:39AM +0100, Ahmad Fatoum wrote:
> On 23.10.25 09:59, Sascha Hauer wrote:
> > 
> > On Mon, 20 Oct 2025 20:28:36 +0200, Ahmad Fatoum wrote:
> >> The test depends on veritysetup being available, so skip it if this is
> >> not the case.
> >>
> >>
> > 
> > Applied, thanks!
> 
> Thanks, were they already pushed?

They are now.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


