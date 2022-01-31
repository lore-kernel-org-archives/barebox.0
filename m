Delivery-date: Mon, 31 Jan 2022 12:13:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEUd0-001crf-SB
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 12:13:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEUcz-00072u-I8
	for lore@pengutronix.de; Mon, 31 Jan 2022 12:13:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnBNiY2yGQcTw3mAPEgoOx58u2ZZzRgghBOeWAQvZAk=; b=cbbO/tAGPDVXls
	RHcAs2+4wsmcBuI0oZlo6KiP3Bvp+fCYHHFlUsr75yskDxxKW9fmTgzuAO5SP0h1S+ZK8iNq2QASj
	Qa8uj8uw1xcYjfmbqOqq5ZPy3DqZrKgw/E0DcWvruffY8+wmypcukqS20BBi4VRW6wrXaKOfGCm5S
	H1xqVOy1HKyYKZwRpY9ecfGtsHx20BCnCz4WxztejVU5zQbXgN9pzy254MuafrCc7Q2Lzc64Cps+9
	Qr8ybbFf20hFZqiBOO36z+diAivkIvCUGXEwrO9iVHNxyq2GnajpVAIyyv5zqAg/Ox5GsyRdS8H38
	B4UjakTSCZiGtGlNHfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEUbg-0094X1-SI; Mon, 31 Jan 2022 11:12:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEUbN-0094ST-Fn
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 11:12:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nEUbM-0006WB-4u; Mon, 31 Jan 2022 12:12:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nEUbL-0005Kf-KC; Mon, 31 Jan 2022 12:12:03 +0100
Date: Mon, 31 Jan 2022 12:12:03 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220131111203.GF23490@pengutronix.de>
References: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
 <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:05:29 up 51 days, 19:51, 84 users,  load average: 0.66, 0.67, 0.51
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_031205_586536_D581BF72 
X-CRM114-Status: GOOD (  27.48  )
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
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RFC: Gitlab CI for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 31, 2022 at 11:39:45AM +0100, Ahmad Fatoum wrote:
> Hello Antony,
> 
> On 30.01.22 13:00, Antony Pavlov wrote:
> > Hi!
> > 
> > I have made simple Gitlab CI for barebox.
> 
> Nice.
> 
> > Gitlab CI runner setup instruction and
> > the source for Debian 11 docker image can be found at:
> > 
> >   https://gitlab.com/frantony/barebox-gitlab-ci-runner
> 
> I had tried something similar, but with Github actions
> 
> https://github.com/a3f/barebox/actions/runs/740206381
> 
> I didn't have the time to pursue this further. I am fine
> with Gitlab as well.
> 
> > 
> > Sample gitlab-ci.yaml config file:
> > 
> >   https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98cd1c6605b936cf2471
> 
> Here's how it looks for Github actions with emulate.pl:
> 
> https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/build-configs.yaml
> 
> 
> > Corresponding gitlab pipeline results:
> > 
> >   https://gitlab.com/frantony/barebox/-/pipelines/459422690
> > 
> > 
> > Some notes:
> > 
> >   * there are several "images size > maximum size" errors during 'build ARM'
> 
> Ye. IIRC Sascha disables these for his build tests..? Would be nice to get
> those resolved sometime.

Yes, I disable these checks for my build tests. Getting these issues
resolved only holds for a certain time. Overall bloat will break it
sooner or later anyway :(
It's fighting against windmills.

> 
> >   * fake firmware blobs for ARM are used
> 
> Could we just fetch them from the correct location? That way we could
> just provide the prebuilt binaries for download. But for a first step,
> fakes are fine.

I'm not sure we even have all binaries. I guess some of the mvebu
startup binaries would have to be extracted from the hardware and I
don't know if we are allowed to share them for download if we extracted
them.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

