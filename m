Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvYxZ-0006zL-KL
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 18:43:10 +0000
Date: Thu, 9 Feb 2012 19:43:01 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120209194301.75adb5dc@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202091336340.2680@oneiric>
References: <alpine.DEB.2.02.1202091130540.14123@oneiric>
 <20120209174519.4d0ae559@eb-e6520>
 <alpine.DEB.2.02.1202091336340.2680@oneiric>
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

Le Thu, 9 Feb 2012 13:37:34 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :

> On Thu, 9 Feb 2012, Eric B=E9nard wrote:
> =

> > Le Thu, 9 Feb 2012 11:34:55 -0500 (EST),
> > "Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
> > >   so what exactly does one do to read those values?  i tried:
> > >
> > > barebox@Texas Instrument's Beagle:/ gpio_direction_input 171
> > > barebox@Texas Instrument's Beagle:/ gpio_get_value 171
> > >
> > > but what do i check?  the shell variable $?  i'm not sure what i
> > > should do next.
> > >
> > you can check the mux of the pins to be sure they are in GPIO mode.
> =

>   how do i do that from the barebox prompt?  i can see the
> gpio-related commands for setting direction and getting/setting
> values, but how does one check if those pins are properly in gpio
> mode?
> =

see the corresponding registers with md

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
