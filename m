Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RzjlU-0006Kr-1X
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 07:03:57 +0000
Date: Tue, 21 Feb 2012 08:03:46 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120221080346.1501ec1f@eb-e6520>
In-Reply-To: <20120221034835.GD9343@game.jcrosoft.org>
References: <1329784059-6006-1-git-send-email-eric@eukrea.com>
 <1329784059-6006-2-git-send-email-eric@eukrea.com>
 <20120221034835.GD9343@game.jcrosoft.org>
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

Le Tue, 21 Feb 2012 04:48:35 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> > +static struct mc34708 *mc_dev;
> > +
> > +struct mc34708 *mc34708_get(void)
> > +{
> > +	if (!mc_dev)
> > +		return NULL;
> > +
> > +	return mc_dev;
> > +}
> > +EXPORT_SYMBOL(mc34708_get);
> no please do not export the current as it will not alloe multiple chip on
> board
you can't have more than one of this chip on the board connected to
the same CPU.

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
