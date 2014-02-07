Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBibB-00039j-Cx
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 10:23:54 +0000
Date: Fri, 7 Feb 2014 11:23:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140207102331.GI17045@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-9-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140207064857.GF9671@ns203013.ovh.net>
 <20140207085250.GE17045@pengutronix.de>
 <20140207095056.GJ9671@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207095056.GJ9671@ns203013.ovh.net>
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
Subject: Re: [PATCH 8/9] nfs: switch to nfs3
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 07, 2014 at 10:50:56AM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 09:52 Fri 07 Feb     , Uwe Kleine-K??nig wrote:
> > > > +	npriv->rootfh_len =3D ntohl(net_read_uint32(p++));
> > > > +	if (npriv->rootfh_len > NFS3_FHSIZE) {
> > > > +		printf("%s: file handle too big: %lu\n", __func__,
> > > > +				(unsigned long)npriv->rootfh_len);
> > > > +		return -EIO;
> > > really EIO?
> > That's a protocol error and -EIO is what is returned in other places for
> > protocol errors, too. Still if you have a better suggestion ...
> =

> -EPROTO no?
For the nfs-side EPROTO looks good, but for the caller of the fs
functions EIO seems more sensible because the caller didn't violate any
protocol. For that it's just a "failed to read" thing.

(BTW, I like my bike sheds being blue. :-)

> > > > -	ret =3D rpc_lookup_req(npriv, PROG_NFS, 2);
> > > > +	ret =3D rpc_lookup_req(npriv, PROG_NFS, 3);
> > > =

> > > so we loose nfs2?
> > Right. Do you consider it a loss? I don't think it worth to implement
> > both side by side. =

> =

> I see this as a compatibility issue
Sure it's a compatibility issue. But I guess it won't bite anyone. nfs3
exists since 1995 (the rfc that is). nfsd-v3 support is in Linux 2.4.0
(from 2003) and I bet that any distro-Kernel that has nfsd enabled also
knows about nfs3. So I think it's sane to drop nfs2 support from barebox
which will only bitrot otherwise.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
