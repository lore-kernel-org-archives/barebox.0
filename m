Delivery-date: Thu, 26 Oct 2023 16:28:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1LQ-004dZn-US
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1LP-0001uX-Q5
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u8VlTrNkA+YHAMmLhP/AAopE/BerILJGLusoizfq9DQ=; b=A5Ux1j+BnVSdlXBv6ymS1Dk8If
	+MkTk24K44FQgDmlojkPsgYsnIBSe3mTrX49gG9OpYVi6wsn8PXYDCUuwo6kuIMEU2JM0O5LtnJ7i
	qJM9dk/Wpr1iHyzxM8mps7ZKnljJU2uX3ygjesGhMM4V4jWzNC0Zp4VQe6JYkHMoDkMyqSKE8R5gp
	MD8mmxUx/mWghR60bEuY8JaCSTS9eWi4lTygjtYCJ1K2yPocEflF3Rn4LpUchUge+TOGre0JxHdDl
	1CKuC7HCaNaMB/jpo5gMQiIM91jh8OeV/J8gfIKTGfCDhmUSR0jYysRFtvztiV9V4k8iE/nVxcsur
	YTmHGgqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1KM-00EfTB-2n;
	Thu, 26 Oct 2023 14:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1KK-00EfSj-17
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:27:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1KH-0001M8-1Q; Thu, 26 Oct 2023 16:27:09 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1KG-004Ql2-LU; Thu, 26 Oct 2023 16:27:08 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1KG-00GT1f-JB; Thu, 26 Oct 2023 16:27:08 +0200
Date: Thu, 26 Oct 2023 16:27:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231026142708.wyz6vsgkb3lasyhz@pengutronix.de>
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
 <20231026124623.4054582-2-m.felsch@pengutronix.de>
 <177c9c80-df41-0e53-0613-929e7c3fa38f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177c9c80-df41-0e53-0613-929e7c3fa38f@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_072712_382289_BCB75E2B 
X-CRM114-Status: GOOD (  16.90  )
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
Subject: Re: [PATCH 2/2] scripts: get_maintainers: drop --status enforcement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-26, Ahmad Fatoum wrote:
> On 26.10.23 14:46, Marco Felsch wrote:
> > The status parameter is never used so drop it and stop bother the user
> > of the script.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Our get_maintainer.pl script doesn't have the same breadth of features
> as the kernel's and only --status is implemented, thus the check.

Where? I see only 'print << 'EOT' <text> EOT'

Regards,
  Marco

> 
> > ---
> >  scripts/get_maintainer.pl | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
> > index 7c0d50333400..a19c0e7305d0 100755
> > --- a/scripts/get_maintainer.pl
> > +++ b/scripts/get_maintainer.pl
> > @@ -2,8 +2,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  # Dummy get_maintainer.pl script for checkpatch.pl to use
> >  
> > -die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
> > -
> >  print <<'EOT'
> >  Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
> >  barebox@lists.infradead.org (open list:BAREBOX)
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


