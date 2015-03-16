Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXSGE-0008Nj-Ao
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:28:38 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id BA735FF9B17
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:28:16 +0100 (CET)
Date: Mon, 16 Mar 2015 11:28:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316102804.GC26127@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <5502CB15.4070306@pengutronix.de>
 <20150313155423.GB24510@ns203013.ovh.net>
 <55030AF3.8050903@pengutronix.de>
 <20150313170032.GD24510@ns203013.ovh.net>
 <1426500251.3330.15.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426500251.3330.15.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:04 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Fr, 2015-03-13 at 18:00 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > While sha1 is considered broken.
> > it's broken and sha256 not yet but in 10 years strongly suspected
> > even in brut force
> > =

> > That's why FIPS work on SHA-2
> =

> SHA256 is part of the SHA-2 family [1]. Keccak is the winner of the
> SHA-3 competition.
Yeah tired when wrote that I was talking about Keccak.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
