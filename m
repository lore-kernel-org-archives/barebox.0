Delivery-date: Thu, 22 Sep 2022 12:11:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obJBL-00C5wz-Av
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 12:11:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obJBK-0002iH-4f
	for lore@pengutronix.de; Thu, 22 Sep 2022 12:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S4jZ8h/2J09VoJ/2kbePM8KSGucyx1hCVur6dpndOZ0=; b=qrL4LG6z65JR5cKZyVVQEHHb4b
	SMaQtxp3wb6xdP0uTRkVb17hqgs9P/lM5XKXNrOH//k9m99Okqxk0xJ+wZDJHEc0uyTgXArrBaCxc
	DJ/woQW5a085od75D4rtVGP/FsUWgurpXil9uhOEfu+qAwlYN30qjgsjPPWh/OPGIA8JhfYu5algr
	eNFETA4DxYXTuQj719XO+U348kSkNaySdTemggFQBWJXMnYJ+3WVaowIeD10EJLJGlGGVSSJKtC+Q
	qVUwToQYzmrjkO7WUZsu32lSvzvXGlEz3/6JwmnSTewBqrRHg93LgDvv7hLmPo85HhVKdnQgJq0KK
	wCKvQodw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJA2-00EooR-Tf; Thu, 22 Sep 2022 10:10:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obIuV-00EauP-Fe
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 09:54:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1obIuU-0007Cb-6i; Thu, 22 Sep 2022 11:54:22 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1obIuT-0000dO-Ta; Thu, 22 Sep 2022 11:54:21 +0200
Date: Thu, 22 Sep 2022 11:54:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220922095421.r4im3dbbmrz4ats2@pengutronix.de>
References: <20220921172052.2989506-1-m.felsch@pengutronix.de>
 <20220922095156.GL986@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922095156.GL986@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_025423_580150_7840A24A 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ddr: imx8m: write fsp_table entry automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-09-22, Sascha Hauer wrote:
> On Wed, Sep 21, 2022 at 07:20:51PM +0200, Marco Felsch wrote:
> > Currently the fsp_table must be set manually within the 'struct
> > dram_timing_info'. Since the 'struct fsp_msg' already has all
> > information needed for the fsp_table we can use it to set it
> > automatically. This approach is less error-prone and avoids information
> > duplication.
> 
> Is this really worth it? The whole dram timing code comes directly from
> the NXP DRAM tools, so the fsp_table comes back with each new board or
> with a DRAM timing update.

I had a problem with the missing fsp_table for the MX8MM-EVK and a buggy
TF-A. Therefore I would say yes, since it is not guaranteed that the
fsp_table is existing.

Regards,
  Marco


