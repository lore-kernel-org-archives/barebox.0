Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWSxd-00016l-Dp
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 17:01:22 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 44AEBFFACFA
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 18:00:35 +0100 (CET)
Date: Fri, 13 Mar 2015 18:00:32 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313170032.GD24510@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <5502CB15.4070306@pengutronix.de>
 <20150313155423.GB24510@ns203013.ovh.net>
 <55030AF3.8050903@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55030AF3.8050903@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:06 Fri 13 Mar     , Marc Kleine-Budde wrote:
> On 03/13/2015 04:54 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >>> if you can break rsa4096, the chance you can break ECC are high too
> >>
> >> If you want to open the box, today you would probably not break
> >> rsa2048/sha1 (unless you have huge calculation power) but look for
> >> implementation weaknesses, like bugs or side channel attacks.
> > 
> > I alredy see it done on rsa1024 few years ago, today rs2048 is supposedly
> > secured but as you hw may have to run for 10 years rs2048/sha1 is considered not
> > strong enough
> 
> Some thoughts on 2048 vs. 4096:
> https://www.yubico.com/2015/02/big-debate-2048-4096-yubicos-stand/

I known about it already read it and work with yubico stuff

I disagre on the fact that rsa2048 is good for 15 years, with more and more
low cost power efficent SoC build a super calculator will be cheaper and
cheaper. I'd give it a go for less than 10 years.

It's always the same question what the hardware control. what damage can
happend if the software is tampered with.

A hw that control security door and co => high rist life issue.
Medical stuf ditto.
> 
> While sha1 is considered broken.
it's broken and sha256 not yet but in 10 years strongly suspected
even in brut force

That's why FIPS work on SHA-2

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
