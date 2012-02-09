Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvX7e-0008Dv-QR
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 16:45:28 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 6BFA14B0074
 for <barebox@lists.infradead.org>; Thu,  9 Feb 2012 17:45:20 +0100 (CET)
Date: Thu, 9 Feb 2012 17:45:19 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120209174519.4d0ae559@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202091130540.14123@oneiric>
References: <alpine.DEB.2.02.1202091130540.14123@oneiric>
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
Subject: Re: how to read GPIO values from command line?
To: barebox@lists.infradead.org

Le Thu, 9 Feb 2012 11:34:55 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>   so what exactly does one do to read those values?  i tried:
> =

> barebox@Texas Instrument's Beagle:/ gpio_direction_input 171
> barebox@Texas Instrument's Beagle:/ gpio_get_value 171
> =

> but what do i check?  the shell variable $?  i'm not sure what i
> should do next.
> =

you can check the mux of the pins to be sure they are in GPIO mode.

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
