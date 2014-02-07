Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBi4R-0001FT-LI
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:50:05 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6D832FFC3D9
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 10:56:21 +0100 (CET)
Date: Fri, 7 Feb 2014 10:50:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207095056.GJ9671@ns203013.ovh.net>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1391704854-3141-9-git-send-email-u.kleine-koenig@pengutronix.de>
 <20140207064857.GF9671@ns203013.ovh.net>
 <20140207085250.GE17045@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140207085250.GE17045@pengutronix.de>
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
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:52 Fri 07 Feb     , Uwe Kleine-K??nig wrote:
> Hello Jean-Christophe,
> =

> On Fri, Feb 07, 2014 at 07:48:57AM +0100, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > On 17:40 Thu 06 Feb     , Uwe Kleine-K??nig wrote:
> > > +#define ntohll(val)	__be64_to_cpu(val)
> > > +#define htonll(val)	__cpu_to_be64(val)
> > =

> > use the cpu_to and to_cpu directly
> > as if we have the standard define in any header later this will cause i=
ssues
> htonll isn't that standard. I doesn't exist neither in Linux userspace
> nor in Linux kernel space. I would prefer to put the macro into a global
> place already now. Or still better, define {ntoh,hton}{16,32,64} which
> have a more intuitive naming scheme.
yeah agreed
> =

> > > -	printk("NFS: returned filename too long: %u\n", count);
> > > +	printf("%s: returned a too long filename: %u\n", __func__, count);
> > can we use dev_xx for message
> I will check where I can get my hands on a good struct device_d*.
> =

> > > +static uint32_t *nfs_add_fh3(uint32_t *p, unsigned fh_len, const cha=
r *fh)
> > > +{
> > > +	*p++ =3D htonl(fh_len);
> > > +
> > > +	/* zero padding */
> > > +	if (fh_len & 3)
> > > +		p[fh_len / 4] =3D 0;
> > > +
> > > +	memcpy(p, fh, fh_len);
> > > +	p +=3D DIV_ROUND_UP(fh_len, 4);
> > > +	return p;
> > > +}
> > > +
> > > +static uint32_t *nfs_add_filename(uint32_t *p,
> > > +		uint32_t filename_len, const char *filename)
> > > +{
> > > +	*p++ =3D htonl(filename_len);
> > > +
> > > +	/* zero padding */
> > > +	if (filename_len & 3)
> > > +		p[filename_len / 4] =3D 0;
> > > +
> > > +	memcpy(p, filename, filename_len);
> > > +	p +=3D DIV_ROUND_UP(filename_len, 4);
> > > +	return p;
> > > +}
> > > +
> > what is the difference with the function upper?
> The function and parameter names and the type of the 2nd argument.
;)
> (OK, I guess that wasn't the answer you wanted to read. Yes, you're
> right, they could use the same function. Something like nfs_add_string.
> (Technically fh3 isn't a string<> but an opaque<NFS3_FHSIZE>, but that
> doesn't really matter here. I will think a bit about proper naming.))
> =

> > > +	npriv->rootfh_len =3D ntohl(net_read_uint32(p++));
> > > +	if (npriv->rootfh_len > NFS3_FHSIZE) {
> > > +		printf("%s: file handle too big: %lu\n", __func__,
> > > +				(unsigned long)npriv->rootfh_len);
> > > +		return -EIO;
> > really EIO?
> That's a protocol error and -EIO is what is returned in other places for
> protocol errors, too. Still if you have a better suggestion ...

-EPROTO no?
> =

> > > -	ret =3D rpc_lookup_req(npriv, PROG_NFS, 2);
> > > +	ret =3D rpc_lookup_req(npriv, PROG_NFS, 3);
> > =

> > so we loose nfs2?
> Right. Do you consider it a loss? I don't think it worth to implement
> both side by side. =


I see this as a compatibility issue
> =

> Best regards
> Uwe
> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
