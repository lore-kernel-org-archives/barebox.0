Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RzpgN-0007kc-SU
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 13:23:09 +0000
Date: Tue, 21 Feb 2012 14:22:55 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120221142255.547a4e67@eb-e6520>
In-Reply-To: <20120221130318.GJ9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
 <20120221080346.1501ec1f@eb-e6520>
 <20120221130318.GJ9343@game.jcrosoft.org>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] mfd: add mc34708 driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Le Tue, 21 Feb 2012 14:03:18 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> On 08:03 Tue 21 Feb     , Eric B=E9nard wrote:
> > Le Tue, 21 Feb 2012 04:48:35 +0100,
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > =

> > > > +static struct mc34708 *mc_dev;
> > > > +
> > > > +struct mc34708 *mc34708_get(void)
> > > > +{
> > > > +	if (!mc_dev)
> > > > +		return NULL;
> > > > +
> > > > +	return mc_dev;
> > > > +}
> > > > +EXPORT_SYMBOL(mc34708_get);
> > > no please do not export the current as it will not alloe multiple chi=
p on
> > > board
> > you can't have more than one of this chip on the board connected to =

> > the same CPU.
> except if you have 2 soc on the same board
> =

that's why I said "connected to the same CPU".
If you have 2 SOC, each SOC will have its own PMIC thus it's own
barebox, thus no problem.

> here you use it to detect the presence of the device where we can detect =
it by
> the presence of the dev file

in the future we will also use that to write to the PMIC (as done on
mx35-3stack for example).

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
