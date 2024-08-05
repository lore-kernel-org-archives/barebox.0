Delivery-date: Mon, 05 Aug 2024 12:08:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saudw-006S9B-0S
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:08:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saudv-0006eA-HS
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:08:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJFsXkAwrgMZKObv7wRs1g/lWP6jQLWuxpInuoba9rY=; b=hiTwKfEPFK8zuQ+X1a0CYk8NH9
	S1F3bTdpCjSECNXIgcyVcjv+XJD/mnPr8zA9JVmsCpDEajaCKbpnUMP+kGkqgU62egQCgtMmA5dZD
	u+9TxQjwxSnyGiXENHZRXx3BzPuFuI5NQ5q4+I+bxXMv12KQkCmBMc/iR/pjNiLD8sV8Wj3tOROWR
	8c3aZT8qK0dNqEACG2piKhObRCq8Rt5RxylucqhcIAXte884LonWRC/uETp80OLPF1NotMpJdBWwy
	d4NHUEU5ycgVEqO47f4aMw9Xw7/YEK1KpzDWqTaiGM1/86UsQyaGpTVZr0X5jBOOYgiq43NvZBsNZ
	OXNn/R0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saudS-0000000FRHf-3PJU;
	Mon, 05 Aug 2024 10:08:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saudG-0000000FRFx-3qRK
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:08:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1saudD-0006Xp-P9; Mon, 05 Aug 2024 12:07:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1saudD-004gcG-C6; Mon, 05 Aug 2024 12:07:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1saudD-0031f9-0o;
	Mon, 05 Aug 2024 12:07:59 +0200
Date: Mon, 5 Aug 2024 12:07:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZrCkfwA5K4b5O3p6@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-8-s.hauer@pengutronix.de>
 <2a3f7bf2-a33a-4cf0-9f97-2370c9128b87@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2a3f7bf2-a33a-4cf0-9f97-2370c9128b87@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_030802_975762_4A12897A 
X-CRM114-Status: GOOD (  26.99  )
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
Subject: Re: [PATCH v2 07/19] rsatoc: cleanup error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 05, 2024 at 11:54:56AM +0200, Ahmad Fatoum wrote:
> On 01.08.24 07:57, Sascha Hauer wrote:
> > - In case of an error bail out immediately instead of continuing and
> >   just return an error at the end
> > - explicitly set 'ret' right before going to the cleanup label which
> >   makes the code more readable
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/rsatoc.c | 58 +++++++++++++++++++++++++++++++++---------------
> >  1 file changed, 40 insertions(+), 18 deletions(-)
> > 
> > diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> > index 0faf41bca2..22f0318298 100644
> > --- a/scripts/rsatoc.c
> > +++ b/scripts/rsatoc.c
> > @@ -167,15 +167,16 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
> >  	const BIGNUM *key_e;
> >  	uint64_t te;
> >  
> > -	ret = -EINVAL;
> >  	bn_te = NULL;
> >  
> >  	if (!e)
> >  		goto cleanup;
> 
> Won't ret be undefined here?

Indeed. This check is removed anyway in the next patch, so doesn't
matter much. I'll just swap this one with the next patch.

> 
> Also the return value is ultimately used only for an error message,
> gen_key's error is not propagated, but it should result in the utility
> aborting with an error code.

Fixed further down this series, but you noticed yourself already.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


