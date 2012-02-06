Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RuKxR-0001LR-3u
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 09:33:59 +0000
Date: Mon, 6 Feb 2012 10:33:48 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120206103348.4af1e0e1@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202051558230.17815@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
 <alpine.DEB.2.02.1202051026020.9491@oneiric>
 <20120205184340.1bddd53a@eb-e6520>
 <alpine.DEB.2.02.1202051257100.13319@oneiric>
 <20120205204443.60ee2afa@eb-e6520>
 <alpine.DEB.2.02.1202051558230.17815@oneiric>
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
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: barebox@lists.infradead.org

Le Sun, 5 Feb 2012 16:04:07 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>   but this isn't a small difference -- this represents potentially an
> entire subsystem (NAND) that i want the ability to de-activate.  in a
> perfect world, i want the ability to say concisely that i have a
> beagle but i have no NAND flash, period.  i don't want any of the NAND
> code compiled, i don't want it included in the binary, so obviously i
> don't want any of that code to run, only to realize it has nothing to
> do.
> =

well it obvious that is you don't want the NAND code to be compiled in,
you simply need to unselect the options which enables it !

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
