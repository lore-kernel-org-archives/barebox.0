Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXWMb-0003OC-Su
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 14:51:30 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 11A94FFA775
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 15:51:07 +0100 (CET)
Date: Mon, 16 Mar 2015 15:51:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316145102.GO26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
 <1426500945-31815-4-git-send-email-plagnioj@jcrosoft.com>
 <1426506548.3330.71.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426506548.3330.71.camel@pengutronix.de>
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
Subject: Re: [PATCH 04/10] command: add generic digest command
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:49 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 11:15 +0100, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> > +BAREBOX_CMD_HELP_START(digest)
> > +BAREBOX_CMD_HELP_TEXT("Calculate a digest over a FILE or a memory
> > area.")
> > +BAREBOX_CMD_HELP_TEXT("Options:")
> > +BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "digest to use")
> > +BAREBOX_CMD_HELP_OPT ("-k <key>\t",  "key as text")
> > +BAREBOX_CMD_HELP_OPT ("-K <file>\t",  "key file")
> > +BAREBOX_CMD_HELP_OPT ("-s <sig>\t",  "digest")
> > +BAREBOX_CMD_HELP_OPT ("-S <file>\t",  "digest flie")
> > +BAREBOX_CMD_HELP_END
> =

> We're mixing different terms here: digest and signature
> =

> Signature is usually used in the context of public key crypto, digest is
> mostly used with for hashes. The command uses both interchangeably.
> =

> How about:
> -a <algo>	hash or signature algorithm to use
> -k <key>	use supplied <key> (ASCII or hex) for MAC
> -K <file>	use key from <file> (binary) for MAC
> -v <hex>	verify data against supplied <hex> (hash, MAC or signature)
> -V <file>	verify data against <file> (hash, MAC or signature)

good for me

Best Regards,
J.
> =

> Regards,
> Jan
> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
