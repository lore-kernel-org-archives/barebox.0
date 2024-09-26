Delivery-date: Thu, 26 Sep 2024 09:05:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stiZ1-002uD1-2b
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 09:05:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stiZ2-0003sr-4o
	for lore@pengutronix.de; Thu, 26 Sep 2024 09:05:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7wjQ7MqpzDCnIVFW5UWg9++YQkUmLwFxojEMwRPNCYI=; b=KRw1eCHSL87JnQsCakTw27gkvL
	UTXabtsPAXd9NyWuqALzO3cwE1PIGcO4vVR8j0Lobmq9HV39VyqcH5oSqYecpezPRW0EIL5lIltdq
	6TsEpoBHNTx0G5Xne5gg30YFSagfIYhPahevGibwiGx5S4322+/abQwTfjiAslhyScAIWwqqZ/OHR
	ZX9Ju8aRRMxm+2VKz6FguAOuozbS5TzeSOtszlT7Sh+NeIyCzHzcGLBPHUnDolIa5KO8j6BaPmzL/
	K/y2OmqClyMmYq0P+pohGl32kjK2o6m5lHO9lGH/E0qniH5uPbe6a0CnlnWtcNpdZ187JwQwhCFI8
	vghRzgHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stiYU-00000007RGH-0ZpQ;
	Thu, 26 Sep 2024 07:04:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stiJA-00000007O5c-0pGh
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 06:49:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stiJ8-0004Nq-R9; Thu, 26 Sep 2024 08:48:58 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stiJ8-001ctO-Ea; Thu, 26 Sep 2024 08:48:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stiJ8-00D6g2-1C;
	Thu, 26 Sep 2024 08:48:58 +0200
Date: Thu, 26 Sep 2024 08:48:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvUD2m_iUoOpECju@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
 <20240925-graphics-v1-2-f1fe5d2cceec@pengutronix.de>
 <3ca957de-45b3-4759-a0c4-7b85e5b309fb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ca957de-45b3-4759-a0c4-7b85e5b309fb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_234900_256675_D7FA848F 
X-CRM114-Status: GOOD (  21.36  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] commands: splash: honour line_length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 07:31:49AM +0200, Ahmad Fatoum wrote:
> On 25.09.24 16:34, Sascha Hauer wrote:
> > the splash command has an option for setting a background colour. This
> > doesn't always fill the whole screen as expected.
> > 
> > struct fb_info has a line_length field that specifies the length in
> > bytes of a single line. That length may be bigger than the actually
> > visible area as specified by xres. In this case filling the area as
> > calculated by xres*yres fills the invisible pixels between xres and
> > line_length, but it doesn't fill the whole visible area. Fix this by
> > iterating over the lines, filling the visible area of each line.
> 
> I have trouble understanding this. What is line_length if not
> bytes per pixel multiplied by xres?

Some hardware might have alignment restrictions on the address where the
new line starts. In that case line_length is longer than xres*bpp. Also
the picture in the framebuffer might be wider than the visible area.

In my case I allocate a framebuffer for the biggest resolution the
monitor supports. When changing the resolution to a smaller one I can
keep the framebuffer and still show something useful by keeping
line_length and just adjusting xres.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


