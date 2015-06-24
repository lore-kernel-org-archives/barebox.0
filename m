Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7fAP-0007TO-V1
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 07:32:18 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 24 Jun 2015 09:35:05 +0200
References: <1435064284-8015-1-git-send-email-jbe@pengutronix.de>
 <1435064284-8015-2-git-send-email-jbe@pengutronix.de>
 <20150624063247.GR6325@pengutronix.de>
In-Reply-To: <20150624063247.GR6325@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201506240935.05611.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/5] Reset reason: add a scope value to the reset reason
 feature
To: barebox@lists.infradead.org

Hi Sascha,

On Wednesday 24 June 2015 08:32:47 Sascha Hauer wrote:
> [...]
> > +void reset_source_set(enum reset_src_type st, enum f_scope scope)
> > +{
> > +	if ((int)scope <=3D reset_source_scope)
> > +		return; /* just ignore this setting */
> > +
> > +	reset_source =3D (int)st;
> > +	reset_source_scope =3D (int)scope;
> > +	reset_source_update_global_info();
>
> This call is unnecessary. You can call globalvar_add_simple_enum()
> directly from the initcall.

It took me longer to understand your comment here... Yes, sure. =

globalvar_add_simple_enum() do all the necessary things in background.

Thanks, will change it.

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
