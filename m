Delivery-date: Wed, 25 Oct 2023 10:26:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvZDo-003BJP-28
	for lore@lore.pengutronix.de; Wed, 25 Oct 2023 10:26:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvZDm-0008Vp-M0
	for lore@pengutronix.de; Wed, 25 Oct 2023 10:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aGYi8wMpEslSwls0SAPZKPGdMeo4guErsOm9j/skUik=; b=GImK2gPwDlZhQQIFQCREAB4m9W
	O3XaXWJKWT544RHOAOz7dvSC5B3YMmuSdQs4VqdcIPYEnK7KayCVTykFCG3TZFBFhQmpFQ2AE3UUN
	YhwwL+tG9byVNFOc0LI8ZZ0IQIGCQBrPk254pCumJC4BC3l5MknjfqCOsFo0fALPWCboPl7AUz7mO
	PdeNlEHmJY/BZvjm3FXRIUdxW9HCzFKuoSW7M8OpI0qEMw3sNYnoAe63AJpOlsFrRbNeqpR3IV+fU
	DymK0KnhW03WhVmXB2CQVOODN8wToKr6YA9h43tfx4ZJSadZ02ku0HFw9dxiiZAJdM4sjhRZPV+4g
	VmoKJwMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZCN-00BhfE-1b;
	Wed, 25 Oct 2023 08:25:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZCH-00Bhbe-2f
	for barebox@lists.infradead.org;
	Wed, 25 Oct 2023 08:25:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvZC7-0008Hg-Cw; Wed, 25 Oct 2023 10:24:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qvZC7-0048Rs-0e; Wed, 25 Oct 2023 10:24:51 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvZC6-00GFoc-UI; Wed, 25 Oct 2023 10:24:50 +0200
Date: Wed, 25 Oct 2023 10:24:50 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231025082450.GX3359458@pengutronix.de>
References: <20231024092904.GV3359458@pengutronix.de>
 <20231025105037.d22b218a917ef079bd5f6830@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025105037.d22b218a917ef079bd5f6830@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_012501_893878_3B8979AB 
X-CRM114-Status: GOOD (  14.65  )
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
Subject: Re: v2023.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Antony,

On Wed, Oct 25, 2023 at 10:50:37AM +0300, Antony Pavlov wrote:
> On Tue, 24 Oct 2023 11:29:04 +0200
> Sascha Hauer <sha@pengutronix.de> wrote:
> 
> > Hi All,
> > 
> > We finally have a release for October.
> 
> I see the v2023.10.0 tag in the https://github.com/barebox/barebox repo
> but no such tag in the git://git.pengutronix.de/git/barebox.git repo.

Oops, I accidently pushed the tag to github only. Try again ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


