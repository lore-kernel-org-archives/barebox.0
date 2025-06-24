Delivery-date: Tue, 24 Jun 2025 13:17:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eQ-00AaCQ-1o
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:17:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eP-0007FG-Vn
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:17:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZ0ofGe2mwXmRH1TDhXcqz8gc+xile8nnskh2ZgqOwU=; b=Q92YXO1ycrvS9UvF9S8TpeJTOl
	gvNXzysvDGwbWrNMNr633IwG1spVT53XByL2xIATIri4kxqpAgjiV0Iym8BysXUAuytbDtO2KPCpD
	50piJziuIwGTqI85LzozoXhyBtzivTrDG3xfpkVOsbTAcnxrDzb3Y8OTiIR8Zwhn3rKLBG+NM5Mf2
	rFSFfcvbkGhEOKEGEvSMj8c0vc+B5VGwc0T8F47f7q6HwRqRMIiAZlNxiQ00kixiqHEkaYO7tBLI6
	dlbL85VNnV1cf4luO/yq3o0DqTNhTcCGpW3zx+O7c1Xg/2AdlcdJADeqdfnS/dSGBoPcehS6xfc3k
	VX/PS3Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1e0-00000005PUz-1peC;
	Tue, 24 Jun 2025 11:16:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0uS-00000005JNN-1X8n
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:29:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0uQ-0001Su-VL; Tue, 24 Jun 2025 12:29:46 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0uQ-00563D-2X;
	Tue, 24 Jun 2025 12:29:46 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uU0uQ-00F8tl-2E;
	Tue, 24 Jun 2025 12:29:46 +0200
Date: Tue, 24 Jun 2025 12:29:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aFp-GsP5VXbjhb6B@pengutronix.de>
References: <20250624081712.4054548-1-a.fatoum@pengutronix.de>
 <aFpiFmyiNN6IL5UI@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFpiFmyiNN6IL5UI@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_032948_435742_A217FD5D 
X-CRM114-Status: GOOD (  19.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jun 24, 2025 at 10:30:14AM +0200, Oleksij Rempel wrote:
> On Tue, Jun 24, 2025 at 10:17:12AM +0200, Ahmad Fatoum wrote:
> > If CONFIG_DEBUG_PROBES is enabled, barebox will print an info log
> > whenever a device is probed. This breaks one test case in the newly
> > introduced nvmem tests, because running the nvmem command results in two
> > lines instead of one:
> > 
> >       probe-> rmem1
> >   rmem1
> > 
> > A better solution might be disabling stderr, but for now, let's just
> > have the test check all lines that appeared after running the command.
> > 
> > This fixes CI breakage in next.
> > 
> > Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> LGTM
> 
> May be better to keep it as separate patch, not as fixup? Since It provides
> important information.

I agree it provides important information, I just don't see how one
would find it when he needs it, so I decided to keep this as a fixup.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


