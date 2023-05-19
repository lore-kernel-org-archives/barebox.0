Delivery-date: Fri, 19 May 2023 09:45:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzuoK-006QwG-J3
	for lore@lore.pengutronix.de; Fri, 19 May 2023 09:45:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzuoH-0002dP-V7
	for lore@pengutronix.de; Fri, 19 May 2023 09:45:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/KoGER+oyHfvfZlM3K6PXte3D3j5o9l6OyouECmnNiY=; b=pUSopIOLQnHSv+5yECL6m6EOSD
	hehOMWzDppfeNNAhOkw08nm6iIzqPoWF73MTDb0y74StoqkIcg8KwHwCwD7rLXUaO3mfDeViZdNBe
	NFoNZvYnVJm0jD0Pk3L0eQk4GhjHCeoxEhbnA6cuGE3ZtBt0Lv1QhvI8xfqotjFtNO/j3J1K7GqCf
	ud7v0Uvp7HlRXEp9yNxQuih5R6nTs5ot/WWctaOmhWqgoaxmAIXIdYPak5trPEynK1FYj0NSWzhOl
	HLhZwllsG63Pnbi1tfmKtaEljs0VInayuuYKfupf5sxfwht+iNsS5PsQh6RgLPAoRvCb1YReH6E0/
	GfjCMypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzunB-00FPS8-0p;
	Fri, 19 May 2023 07:44:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzun7-00FPRL-2n
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 07:44:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzun6-0002B2-1b; Fri, 19 May 2023 09:44:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzun5-0004y0-6K; Fri, 19 May 2023 09:44:43 +0200
Date: Fri, 19 May 2023 09:44:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230519074443.GH29365@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-32-s.hauer@pengutronix.de>
 <aa3708dc-e7eb-ec08-8607-2eaf0780a5ee@pengutronix.de>
 <20230517143935.GB29365@pengutronix.de>
 <8d824d8d-91d2-e0dc-ddb5-f51b7ea9fccc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d824d8d-91d2-e0dc-ddb5-f51b7ea9fccc@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_004445_907485_1475333F 
X-CRM114-Status: GOOD (  22.92  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 31/34] ARM: mmu32: read TTB value from register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 19, 2023 at 08:53:34AM +0200, Ahmad Fatoum wrote:
> On 17.05.23 16:39, Sascha Hauer wrote:
> > On Wed, May 17, 2023 at 03:58:01PM +0200, Ahmad Fatoum wrote:
> >> On 17.05.23 11:03, Sascha Hauer wrote:
> >>> Instead of relying on a variable for the location of the TTB which we
> >>> have to initialize in both PBL and barebox proper, just read the value
> >>> back from the hardware register.
> >>
> >> Why not initialize on first call to get_ttb()?
> > 
> > get_ttb() doesn't have access to endmem which we would need to get the
> > address for the ttb.
> > 
> > Also we have the value in the hardware register, why not use it?
> 
> I meant initialization using the hardware register.

You mean something like:

static uint32_t *ttb;

static inline uint32_t *get_ttb(void)
{
	if (!ttb)
		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);

	return ttb;
}

If yes, I don't know what this is good for. If no, please explain, I
don't seem to understand what you mean.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


