Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smgao-0001wk-3s
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:35:18 +0000
Date: Thu, 5 Jul 2012 09:35:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120705073505.GP30009@pengutronix.de>
References: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
 <1341472720-3248-3-git-send-email-s.hauer@pengutronix.de>
 <20120705092247.00cebe79@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120705092247.00cebe79@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] defenv-2: Add usage information for bootargs scripts
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Jul 05, 2012 at 09:22:47AM +0200, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Thu,  5 Jul 2012 09:18:39 +0200,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> =

> > +while getopt "m:h" opt; do
> >  	if [ ${opt} =3D m ]; then
> >  		mtd=3D${OPTARG}
> > +	elif [ ${opt} =3D h ]; then
> > +		echo -e "$usage"
> > +		exit 0
> >  	fi
> >  done
> >  =

> > +echo "huhu; $1"
> =

> is that huhu expected here ? ;-)

Just to check if someone actually reads my patches ;)

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
