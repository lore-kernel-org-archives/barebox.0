Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo69.mail-out.ovh.net ([46.105.50.32])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXqnC-0002qX-Ow
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 12:40:19 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 4E7AFFFB5CB
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 13:39:56 +0100 (CET)
Date: Tue, 17 Mar 2015 13:39:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150317123955.GR26127@ns203013.ovh.net>
References: <20150313102543.GA23879@ns203013.ovh.net>
 <1426243382.13791.121.camel@pengutronix.de>
 <20150313154928.GA24510@ns203013.ovh.net>
 <1426500022.3330.12.camel@pengutronix.de>
 <20150316102713.GB26127@ns203013.ovh.net>
 <1426505135.3330.55.camel@pengutronix.de>
 <20150316113306.GH26127@ns203013.ovh.net>
 <1426520527.3330.139.camel@pengutronix.de>
 <20150317104803.GP26127@ns203013.ovh.net>
 <1426594190.3330.173.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426594190.3330.173.camel@pengutronix.de>
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

On 13:09 Tue 17 Mar     , Jan L=FCbbe wrote:
> Hi Jean-Christophe,
> =

> On Di, 2015-03-17 at 11:48 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Could you explain your image format in a bit more detail? How your
> > > intend to defend against a mix-and-match attack?
> > =

> > One of the format we are using can only be one configure signed or/and
> > encrypted so no mix-and-match attack
> =

> Sorry, it's still not clear to me. Do you mean you would use FIT in that
> case (it supports signed configurations)? Or do you mean that you are
> using several formats, one of which uses signed/encrypted configurations
> of kernel/initramfs/dt?
yes sevral format FIT is just one of them
> =

> I want to understand how your image formats would be used in the larger
> context of a BSP or distribution. Please describe which image formats
> you want to support (in addition to FIT). How are they structured? How
> are they generated? Are they already supported by other software? =

Today we use a bpk formoat

in bpk format you can store different data for each hw_id, each data have a
specific type.

we add a new type for the signature.

we do a sha512 of the other data of one hw_id and signed it with a rsa4096
we use 1 unique rsa key per HW_ID

as soon as one of the file of a specific hw_id is open we check the signatu=
re

The code is no public yet but this is handled at FS level

and we allow only to open data that have been verified or decrypted if we u=
se
AES

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
