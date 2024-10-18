Delivery-date: Fri, 18 Oct 2024 11:07:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1iws-005p9U-36
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 11:07:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1iws-0003Rb-CM
	for lore@pengutronix.de; Fri, 18 Oct 2024 11:07:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HFd4RXi5u258WXgAvJqXrNMOGx3y/aEqSCn6d48MJqo=; b=yRAN6QsRCsSdvHhrZ7Hrx0UJ1G
	WkiyS5/Jg2RuU9bo/LI3loh//xpGpyN8fsYkTR2TFFFlxV9+4FKoDJ6FGxOQXYkg/YVxzFG48eWxh
	dpn5rvBP60STW8vHGfDw5jok+Ias69y9Ap8qSabA1aeuku5eRVmZjVM+gkTZLXlNun0EPmLncO4/Y
	FwDnyHQbQ9bOoKeB85ufz6KwVOLVnRquDlQSnRbPQBjDQg6mguJ9g26yxxIta5/o2EmjKSNUfolv/
	Voi/68SQgS7xQTkn3ec7Hg01aqQhwEv86JUue6wDbUkWwlbutzE2NY/u7E/rPYbGetC9JK2Hm0Dny
	Pm9SqlhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iwO-000000006yz-1cOR;
	Fri, 18 Oct 2024 09:06:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iw9-000000006w2-1hJj
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 09:06:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iw8-0003Ko-5l; Fri, 18 Oct 2024 11:06:20 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iw7-000BQF-2p;
	Fri, 18 Oct 2024 11:06:19 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iw7-000QCe-2Z;
	Fri, 18 Oct 2024 11:06:19 +0200
Date: Fri, 18 Oct 2024 11:06:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Yann Sionneau <ysionneau@kalrayinc.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZxIlC-56_P6aHIrg@pengutronix.de>
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
 <20241016085543.3961965-2-a.fatoum@pengutronix.de>
 <777ad095-34c5-43fd-bd52-a7ca938adcf6@kalrayinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <777ad095-34c5-43fd-bd52-a7ca938adcf6@kalrayinc.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_020621_460900_0BACAB86 
X-CRM114-Status: GOOD (  19.56  )
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
Subject: Re: [PATCH 2/2] sandbox: add cpuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 16, 2024 at 11:32:40AM +0200, Yann Sionneau wrote:
> Hi Ahmad,
> 
> On 16/10/2024 10:55, Ahmad Fatoum wrote:
> > We have stack dump support in sandbox via AddressSanitizer, if it's
> > compiled in. To make it easier to test proper operation, let's a cpuinfo
> Small typo in the commit msg
> > command like we already do on ARM and give it the same -s option.
> >
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >
> > +BAREBOX_CMD_START(cpuinfo)
> > +	.cmd            = do_cpuinfo,
> > +	BAREBOX_CMD_DESC("show info about CPU")
> > +	BAREBOX_CMD_OPTS("[-s]")
> 
> It seems the -s option here is mandatory, maybe remove the [ ] brackets? Not sure if it means "optional" here...

The ARM cpuinfo command shows information about the CPU when called
without options, so on ARM -s is really optional and I think Ahmad
wanted the same behaviour here. It's a bit unfortunate that the sandbox
command doesn't have any information to show when called without
options.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


