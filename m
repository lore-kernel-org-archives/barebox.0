Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yd03B-0002ps-97
 for barebox@lists.infradead.org; Tue, 31 Mar 2015 17:34:06 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 765F1FF9F7C
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2015 19:33:32 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150331184428.cf4d380d942268a64a0fc0e4@gmail.com>
Date: Wed, 1 Apr 2015 01:33:26 +0800
Message-Id: <9AAF8238-8C67-47B4-9F68-7203842FA27C@jcrosoft.com>
References: <20150325115140.GD8125@ns203013.ovh.net>
 <20150331184428.cf4d380d942268a64a0fc0e4@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9 v3] digest: allow multiple implementation of digest
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


> On Mar 31, 2015, at 11:44 PM, Antony Pavlov <antonynpavlov@gmail.com> wro=
te:
> =

> On Wed, 25 Mar 2015 12:51:40 +0100
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> =

> Hmmm.
> =

> This new digest implementation have some Kconfig inconsistency.
> =

> E.g. I can configure barebox like this:
> =

>  CONFIG_CMD_SHA1SUM=3Dy
>  ...
>  CONFIG_SHA1=3Dy
>  # CONFIG_DIGEST_MD5_GENERIC is not set
>  # CONFIG_DIGEST_SHA1_GENERIC is not set
>  # CONFIG_DIGEST_SHA224_GENERIC is not set
>  # CONFIG_DIGEST_SHA256_GENERIC is not set
>  # CONFIG_DIGEST_SHA384_GENERIC is not set
>  # CONFIG_DIGEST_SHA512_GENERIC is not set
>  # CONFIG_DIGEST_HMAC_GENERIC is not set
> =

> And here is BUG log for this configuration:

normal you select none of the implementation

you have to select one it=92s your choice which one generic vs asm or hard =
if implemented
> =

>  barebox:/ sha1sum foobar
>  BUG: failure at commands/hashsum.c:61/do_hash()!
>  BUG!
>  no stack data available
> =

> Could we tune Kconfig somehow (e.g. add addition dependencies) to prevent=
 situations like this?

yes buy inverting the dependancy, no need a new one

SHA1 means we have at least one SHA1 implementation enabled

I would even drop the hashsum command for the new digest command as you wil=
l have less impact
in term of binary size and more features.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
