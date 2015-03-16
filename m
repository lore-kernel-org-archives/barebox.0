Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXUVo-0002EH-AB
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 12:52:53 +0000
Date: Mon, 16 Mar 2015 13:52:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150316125229.GA4927@pengutronix.de>
References: <20150311165009.GP30554@ns203013.ovh.net>
 <1426092789-7708-1-git-send-email-plagnioj@jcrosoft.com>
 <1426092789-7708-8-git-send-email-plagnioj@jcrosoft.com>
 <1426503692.3330.41.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426503692.3330.41.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/8] command: add hmac sum supportfor md5, sha1, sha224,
 sha256, sha384, sha512
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 16, 2015 at 12:01:32PM +0100, Jan L=FCbbe wrote:
> On Mi, 2015-03-11 at 17:53 +0100, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> > diff --git a/include/digest.h b/include/digest.h
> > index a26848c..fd47a7e 100644
> > --- a/include/digest.h
> > +++ b/include/digest.h
> > @@ -54,11 +54,14 @@ struct digest *digest_alloc(char* name);
> >  void digest_free(struct digest *d);
> >  =

> >  int digest_file_window(struct digest *d, char *filename,
> > +                      unsigned char *key, size_t keylen,
> >                        unsigned char *hash,
> >                        ulong start, ulong size);
> >  int digest_file(struct digest *d, char *filename,
> > +                      unsigned char *key, size_t keylen,
> >                        unsigned char *hash);
> =

> This is already in next, but I'd like to know why you added the
> key/keylen args to each function instead of letting the caller use
> digest_set_key()?
> =

> In the patch "[PATCH 04/10] command: add generic digest command" you add
> another parameter (unsigned char *sig) to these functions, which is used
> instead of the key parameter when verifying.
> =

> Maybe we are overloading them with to much different functionality?

I agree here. For the caller of digest_file() it is equally simple to
call digest_set_key() beforehand.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
