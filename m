Delivery-date: Thu, 28 Sep 2023 15:12:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlqoa-00F8Ui-R6
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 15:12:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlqoY-0000Fh-Ea
	for lore@pengutronix.de; Thu, 28 Sep 2023 15:12:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HZoDIRh+hB3xpKLUp4FLDEXXx8ZmtLpJTT1VQHnKkXs=; b=sbXdZ8kxdiXjEF6jxNrGOeDrhL
	ZZBSDfhr7hmOgAR2wD4JgfBgJ81uIYBsnMcUb8ZOBPlQoXiX8kTg2G6NCNMwJHNqUTjLyoYsusLsp
	YBQV44r6m3zMtrL86Ae0/SqFLpkqjn7lHrVA/NvFsAIZjYiYRTP4iHTQFgWncOmctAg3StjmJz0bJ
	+iNrrRPeVxqfrPUkhhSc/FgvPmAxvqEue6IeqsD4jDeLhIUdDJcQbhaHtP1796Pih9wcZoDczdSJS
	BueJmpH1bqqeoEbFOagvdYyTDDwLahes2LOpaJtj3XKAobY3E2BZrb1BamNJG3mxbDyQxSJKeoPa5
	M9TD+swg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqnK-0049FB-0Y;
	Thu, 28 Sep 2023 13:11:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqnD-0049CI-1o
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 13:11:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qlqnC-0008Ql-5W; Thu, 28 Sep 2023 15:10:58 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qlqnB-009acp-IF; Thu, 28 Sep 2023 15:10:57 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qlqnB-00Brxp-Fp; Thu, 28 Sep 2023 15:10:57 +0200
Date: Thu, 28 Sep 2023 15:10:57 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230928131057.GE637806@pengutronix.de>
References: <9282a3854372e58d9641993d5fb0bada29818415.camel@gmail.com>
 <20230926113653.GB637806@pengutronix.de>
 <a6e68c463cdc13eb4ce31b994ff252d58af65d92.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6e68c463cdc13eb4ce31b994ff252d58af65d92.camel@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_061059_597542_5F8BAB9E 
X-CRM114-Status: GOOD (  18.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] raspi: pass additional VC values via dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 28, 2023 at 02:57:32PM +0200, Denis Osterland-Heim wrote:
> Hi Sascha,
> 
> Thanks for your fixup.
> I use git-send-mail with a local transport and evolution to actually
> send the mail.
> Sounds like a HTML email "optimization".
> I will check my setup, maybe I find something in the preference.
> There is an option to reencode the mail before send.
> Hopefully this prevents gmail from reencode.
> 
> I reviewed the patches on next and there is a unintended change in the
> pr_err statement, which changes '\n' to 'n'.
> In the mail, this is part of the context.
> 
> Shall I try to send a fixup?

Yes please, seems like a good way to test if your new git-send-mail
setup works ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


