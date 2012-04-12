Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIKqJ-0005TS-Cz
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 14:17:48 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EDFE3FF96FE
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 16:18:48 +0200 (CEST)
Date: Thu, 12 Apr 2012 16:00:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120412140012.GD11079@game.jcrosoft.org>
References: <20120412144642.6bcb52c6@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120412144642.6bcb52c6@eb-e6520>
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
Subject: Re: gpio_keys & gpio_request
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 14:46 Thu 12 Apr     , Eric B=E9nard wrote:
> Hi,
> =

> gpio_keys.c is using gpio_request which is only defined in
> arch/arm/mach-at91/include/mach/gpio.h
> so enabling this driver fails when we are not building barebox for
> an at91 : is that expected ?

gpio_request is normal so we need to fix the other gpio drivers

I've some patch to update the atmel gpio to implement the gpio_request to m=
ux
the pin as gpio.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
