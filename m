Delivery-date: Wed, 15 Nov 2023 16:23:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Hk8-00Cfcb-2N
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 16:23:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Hk8-00015o-Pb
	for lore@pengutronix.de; Wed, 15 Nov 2023 16:23:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfwS2w9M1gZ0Tqzd4ju9j0U/0bf3cnL3ZmmvHmVcvkk=; b=qBI4y37bOimfwwmLeqEtqheas5
	Ez76KfrKv+rOEGd4IcFKQmfUayjd5lP+BY8MPvWfFnM5hY2YOSYCI8S77kzLPpMrmNFDMIKAWTAmb
	EqbYibrii7AIxhn9qJrnqmFRDOAw7XtZfxEIHyrdHWok2aEkoIEJq7DOnVBk1eitle/MFErXtFz85
	q9Smt3HV5MkptcUmswhR6Np00iTp2OET/1vKWbsHJa6UAQ3YSY60keECF8jpGDuADhup8XjziXME4
	sX6/uQg3YpjNA7L2LXjgJU5FOtBpZ6nT4gx/ZVdeh8yISB4Gcynw0AnLYFT62FgJZ2ZnfOdQmQIGL
	+WA4tgfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Hid-001ACN-1I;
	Wed, 15 Nov 2023 15:22:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3HiZ-001AB7-2n
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 15:22:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3HiU-0000KY-Vg; Wed, 15 Nov 2023 16:22:10 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3HiU-009Flq-HR; Wed, 15 Nov 2023 16:22:10 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1r3HiU-002D6c-FE; Wed, 15 Nov 2023 16:22:10 +0100
Date: Wed, 15 Nov 2023 16:22:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231115152210.3co6fq7r74kzock3@pengutronix.de>
References: <20231113090438.1890680-1-m.felsch@pengutronix.de>
 <20231115131431.GC3359458@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115131431.GC3359458@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_072215_928732_8C85248A 
X-CRM114-Status: GOOD (  14.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: bootrom: fix load image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-11-15, Sascha Hauer wrote:
> On Mon, Nov 13, 2023 at 10:04:38AM +0100, Marco Felsch wrote:
> > Without the proper aligned image size we may encounter host load errors
> > like:
> > 
> > | found i.MX8MP USB device [1fc9:0146]
> > | No dcd table in this ivt
> > | dl_command err=-1, last_trans=-1
> > | 4 in err=-4, last_trans=0  00 00 00 00
> > 
> > The reason for this is that we asked only for the required bytes while
> > the host tries to send the complete image which may contain alignment
> > bytes at the end.
> > 
> > Fix this by request always 4K aligned sizes.
> 
> As discussed in mumble: This fix is not correct. It works with HABv4
> enabled images, but not on images without HAB support.

Yes, please ignore this patch. Patch [1] supersede this patch.

[1] https://lore.barebox.org/barebox/20231114133358.3746051-1-m.felsch@pengutronix.de/T/#u

Regards,
  Marco


