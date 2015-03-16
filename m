Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXSFK-0007lD-38
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:27:43 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 1455DFF8A20
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:27:19 +0100 (CET)
Date: Mon, 16 Mar 2015 11:27:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316102713.GB26127@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-3-git-send-email-jlu@pengutronix.de>
 <20150312174740.GT30554@ns203013.ovh.net>
 <1426239335.13791.92.camel@pengutronix.de>
 <20150313095654.GA20624@ns203013.ovh.net>
 <1426241455.13791.103.camel@pengutronix.de>
 <20150313102543.GA23879@ns203013.ovh.net>
 <1426243382.13791.121.camel@pengutronix.de>
 <20150313154928.GA24510@ns203013.ovh.net>
 <1426500022.3330.12.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426500022.3330.12.camel@pengutronix.de>
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
Subject: Re: [RFC 2/4] Add rsa support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:00 Mon 16 Mar     , Jan L=FCbbe wrote:
> Hi,
> =

> On Fr, 2015-03-13 at 16:49 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > you just need to have a unique ID on the HW and then use a x509 object
> > to store it. then signed it with you CA. As only validated keys can be
> > used, you can easly give a generated key for a specific HW.
> > And this key will be valid only for this HW.
> =

> Yes, this sounds useful. So you'd have a board-specific way to check the
> unique ID constraint in an intermediate cert against the HW ID?
yes more or less but but at the key itself as you will have to upload the
key to the board. And the key will only be accepted to be stored as it will
be valid and have the HW ID.

And for the record remember if you want to use module in secured boot mode
for the kernel you will have to use x509 certificate anyway.

So why not to use the same principal.

u-boot way is not what is doing today on the market for authentication
format. Today it's x509 or PGP.

So I do prefer to stay as standard as possible, this does not mean we can n=
ot
support the FTD stuff. But IMHO it's not the right way.

We may have to even support the Microsoft format. Specially if we want to be
able one day (my personnal target) a real replacement for grub2 too.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
