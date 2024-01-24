Delivery-date: Wed, 24 Jan 2024 14:59:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdnE-00GHW5-1C
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 14:59:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdnF-0007J2-2F
	for lore@pengutronix.de; Wed, 24 Jan 2024 14:59:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JEbYXQOmjrUcSSZkmyV46PcIuu0XA5sJDn44Jz57rdI=; b=IsuKGJovFjMnycMn2106vBstF2
	pBlA6xNFgKkw2oEl8q2qI1yPGpGgBkflCQyU3cvwU0xozj+e3PA0W2fNsiBsi/aZPQKg4ySDZ9+AM
	06dMf00wGg8TBQTbmcwUqQ3KiAVTxuogykKH3sgOMB3LhCIfeDCUTPLGPRaobnbwLWSw/AcjuDrw3
	FAUH9V2lgHixvaheMm7rfQiJFXUSrrSnYIQJy/gp/WveX+UcAs16L/iE6dcfbVWn0uZcI+6N+yjD9
	LZsDlMQgaVoU1+6qitA45ScdYRmHuIIX2/cvTOgnhzOIPoHZmeByxYRIb34HwD3jMgQcx03vopr8w
	ullmRLrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdmD-003Yq6-03;
	Wed, 24 Jan 2024 13:58:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdm9-003YpJ-2p
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 13:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSdm7-0007C6-BB; Wed, 24 Jan 2024 14:58:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSdm6-0024fb-Un; Wed, 24 Jan 2024 14:58:42 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSdm6-001ZIQ-SV; Wed, 24 Jan 2024 14:58:42 +0100
Date: Wed, 24 Jan 2024 14:58:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240124135842.pbpselwwytxri22q@pengutronix.de>
References: <20240124134738.133782-1-m.felsch@pengutronix.de>
 <20240124134738.133782-4-m.felsch@pengutronix.de>
 <12b6b0e6-25c6-4a63-ab0d-2cf1f8de23bd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12b6b0e6-25c6-4a63-ab0d-2cf1f8de23bd@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_055845_937043_752C2F0A 
X-CRM114-Status: GOOD (  17.91  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] uncompress: add detected file type debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-24, Ahmad Fatoum wrote:
> On 24.01.24 14:47, Marco Felsch wrote:
> > This can be useful for developers.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  lib/uncompress.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/lib/uncompress.c b/lib/uncompress.c
> > index e7a3ffde823e..48e8173501c6 100644
> > --- a/lib/uncompress.c
> > +++ b/lib/uncompress.c
> > @@ -97,6 +97,8 @@ int uncompress(unsigned char *inbuf, int len,
> >  		ft = file_detect_type(uncompress_buf, 32);
> >  	}
> >  
> > +	pr_debug("Filetype detected: %s\n", file_type_to_string(ft));
> 
> Not that I mind, but do you know about the filetype command?

I used it to check the kernel image within a fit container.

Regards,
  Marco



> 
> > +
> >  	switch (ft) {
> >  #ifdef CONFIG_BZLIB
> >  	case filetype_bzip2:
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


