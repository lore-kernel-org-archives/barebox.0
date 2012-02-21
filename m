Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RzpUp-0006gk-Vb
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 13:11:12 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7415EFFA842
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2012 14:13:40 +0100 (CET)
Date: Tue, 21 Feb 2012 14:03:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120221130318.GJ9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
 <20120221080346.1501ec1f@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120221080346.1501ec1f@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 08:03 Tue 21 Feb     , Eric B=E9nard wrote:
> Le Tue, 21 Feb 2012 04:48:35 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > > +static struct mc34708 *mc_dev;
> > > +
> > > +struct mc34708 *mc34708_get(void)
> > > +{
> > > +	if (!mc_dev)
> > > +		return NULL;
> > > +
> > > +	return mc_dev;
> > > +}
> > > +EXPORT_SYMBOL(mc34708_get);
> > no please do not export the current as it will not alloe multiple chip =
on
> > board
> you can't have more than one of this chip on the board connected to
> the same CPU.
except if you have 2 soc on the same board

here you use it to detect the presence of the device where we can detect it=
 by
the presence of the dev file

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
