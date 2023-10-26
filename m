Delivery-date: Thu, 26 Oct 2023 16:35:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1SE-004dtf-6e
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:35:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1SC-0003N2-TQ
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:35:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kjs2TteldeGN6kVDR3xd4kl2ppbMEtyHbAjmyiDwRlc=; b=EYTy6jKpb4BWF64QWS0tkpgs2b
	aW6DvXtQoRsi+awZEIcO68/mBG46EtRn93Ts5ODR5F5qITE/0gjeTZNOdDh1pP+AJ0sITkj5iTXqf
	VDwak08fipJP6bIfp2FMyYkBsGHMDpOEHWZ4IyTWHFXjOnuS3g8QYmxDXGZp6GIe3dNKlBfhnWCLM
	daCrIx1hcziP5Jx3+2uu7f+uQRnnPAz6GvLx56E6NwF2NP/0FntqMJtn20dDaN+BN7MI5KRA4Eq3f
	srqj4FAAEuN6Xqed31nuvuDZ7LBzL62z6V1ZyOqyi6KbJJKcjat2JbFfTaaQy4iNGz6NLaJC7L3Hc
	EQY4ldPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1RA-00EhiU-35;
	Thu, 26 Oct 2023 14:34:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1R6-00EhgW-0Z
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:34:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1R4-0003BC-RC; Thu, 26 Oct 2023 16:34:10 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1R4-004Qm6-Er; Thu, 26 Oct 2023 16:34:10 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1R4-00GT4T-Cb; Thu, 26 Oct 2023 16:34:10 +0200
Date: Thu, 26 Oct 2023 16:34:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231026143410.7drcfir2k7juhwsd@pengutronix.de>
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
 <20231026124623.4054582-2-m.felsch@pengutronix.de>
 <177c9c80-df41-0e53-0613-929e7c3fa38f@pengutronix.de>
 <20231026142708.wyz6vsgkb3lasyhz@pengutronix.de>
 <f6245eb6-d2be-ab06-eccf-74714559efbd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6245eb6-d2be-ab06-eccf-74714559efbd@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_073412_216063_1D5516DF 
X-CRM114-Status: GOOD (  20.44  )
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
> On 26.10.23 16:27, Marco Felsch wrote:
> > On 23-10-26, Ahmad Fatoum wrote:
> >> On 26.10.23 14:46, Marco Felsch wrote:
> >>> The status parameter is never used so drop it and stop bother the user
> >>> of the script.
> >>>
> >>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >>
> >> Our get_maintainer.pl script doesn't have the same breadth of features
> >> as the kernel's and only --status is implemented, thus the check.
> > 
> > Where? I see only 'print << 'EOT' <text> EOT'
> 
> Ye, the output is similar to what you'd get with the kernel's --status.
> The script is just here, because checkpatch depends on it and calls
> it with --status.

You still can run it with --status, I just won't enforce it. At least to
me it's not clear why we need to enforce it and I use the script from
time to time and always forget the param.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>
> >>> ---
> >>>  scripts/get_maintainer.pl | 2 --
> >>>  1 file changed, 2 deletions(-)
> >>>
> >>> diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
> >>> index 7c0d50333400..a19c0e7305d0 100755
> >>> --- a/scripts/get_maintainer.pl
> >>> +++ b/scripts/get_maintainer.pl
> >>> @@ -2,8 +2,6 @@
> >>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>  # Dummy get_maintainer.pl script for checkpatch.pl to use
> >>>  
> >>> -die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
> >>> -
> >>>  print <<'EOT'
> >>>  Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
> >>>  barebox@lists.infradead.org (open list:BAREBOX)
> >>
> >> -- 
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


