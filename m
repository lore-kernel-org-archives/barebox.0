Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnfug-00022S-MX
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 08:03:20 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 9 Aug 2018 10:03:06 +0200
References: <20180809065420.6475-1-s.hauer@pengutronix.de>
 <201808090914.47846.jbe@pengutronix.de>
 <20180809072024.exh4oxrzyvy7onsw@pengutronix.de>
In-Reply-To: <20180809072024.exh4oxrzyvy7onsw@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201808091003.06483.jbe@pengutronix.de>
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
Subject: Re: [PATCH] scripts/dtc: Reenable fdtget
To: barebox@lists.infradead.org

On Thursday 09 August 2018 09:20:24 Sascha Hauer wrote:
> [...]
> >
> > You should add "fdtget" to the "clean-files" variable as well.
>
> Nope, it's not necessary to add that explicitly.

Hmm, then somewhere else?

$ make
[...]
$ git status
scripts/dtc/fdtget
$ make clean
[...]
$ git status
scripts/dtc/fdtget

I think that's why this issue wasn't noticed when the update to 1.4.6 was =

made.

jb

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0=
| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0| http://w=
ww.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
