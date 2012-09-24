Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TG55k-0004Fn-22
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 09:36:40 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 98F4E102026C
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 11:42:36 +0200 (CEST)
Date: Mon, 24 Sep 2012 11:34:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120924093408.GE26553@game.jcrosoft.org>
References: <1348477176-25398-1-git-send-email-t.gamez@phytec.de>
 <1348478212.3491.1.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348478212.3491.1.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [PATCH 1/2] drivers gpio: Check for negativ gpio values
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:16 Mon 24 Sep     , Jan L=FCbbe wrote:
> On Mon, 2012-09-24 at 10:59 +0200, Teresa G=E1mez wrote:
> >  static int gpio_is_valid(unsigned gpio)
> >  {
> > -	if (gpio < ARCH_NR_GPIOS)
> > +	if (gpio < ARCH_NR_GPIOS && gpio >=3D 0)
> =

> For an 'unsigned gpio', gpio >=3D 0 is always true.
unsigned is wrong type gpio need to int

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
