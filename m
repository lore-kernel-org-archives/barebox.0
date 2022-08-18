Delivery-date: Thu, 18 Aug 2022 10:21:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOamn-002oL9-A8
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 10:21:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOaml-0005Vz-4s
	for lore@pengutronix.de; Thu, 18 Aug 2022 10:21:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AYNXjv8MCNeft2pPT++wd/bDoTQmKSOMLUnUurnAorY=; b=OK1FG52YTS8psfZq6FfbBc5V0D
	OKrzyg0vfDUX3H+4mLmXAQsvn/AkbLydXwHEMzTZJCGEnLCpCzXRW+ty24nBvkQKSMe2MY3tm7sIs
	VfKJykPf6T1xoRR0y5yNrI1/goiqlda5quog20KvnAjOk+/MnBY+YuIYLC+QuMorwlpJT371dRSdf
	XLgLShqrd+gbQlpA2eM42O4hfuY2whhYQiiCdxOVjsnp9ydTPQim8Wficlt52tG8wIDheD2yAVQmF
	0lst8VbSySGD4fFp0Zb1RR40082gyVlJJ7FDCeTcBG/w58a3FkGMS9YB3d5QCgcC7sW7kY+CPLRsS
	X/PsfTvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOal3-000jEB-AO; Thu, 18 Aug 2022 08:20:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOaky-000jAf-PG
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 08:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oOaku-000564-Mo; Thu, 18 Aug 2022 10:19:56 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oOaku-000Tax-0n; Thu, 18 Aug 2022 10:19:56 +0200
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oOaks-0002E1-Vh; Thu, 18 Aug 2022 10:19:54 +0200
Message-ID: <ceb58cd4e79f540e5036b15e545aa758df3aaeba.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de
Date: Thu, 18 Aug 2022 10:19:54 +0200
In-Reply-To: <20220818051955.2088238-3-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
	 <20220818051955.2088238-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_012000_860100_CA749690 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/10] driver: consult feature controller prior to
 device probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Do, 2022-08-18 at 07:19 +0200, Ahmad Fatoum wrote:
> The newly added feature controller framework has two goals: Avoid
> probing device in barebox that aren't indeed available

This specific wording makes me wonder why this isn't implemented inside
of_device_is_available().

This would also take care of other devices querying device node
availability, for example via of_graph_port_is_available(), if that
ever happens.

regards
Philipp


