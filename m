Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvRfD-0000pO-BY
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 10:55:46 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 90BD94B00EC
 for <barebox@lists.infradead.org>; Thu,  9 Feb 2012 11:55:34 +0100 (CET)
Date: Thu, 9 Feb 2012 11:55:33 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120209115533.02df9dd6@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1202081718100.26281@oneiric>
References: <alpine.DEB.2.02.1202081718100.26281@oneiric>
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
Subject: Re: "panda" config and build doesn't work on panda ES at all
To: barebox@lists.infradead.org

Hi,
Le Wed, 8 Feb 2012 17:20:45 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :
>   just for fun, i configured and built MLO and barebox.bin for the
> panda, then tried to use that on a panda ES -- got no response
> whatever from minicom.  i did verify that i could boot to barebox just
> fine on a regular panda, though.
> =

>   this is different from the case of a regular beagle and beagle xM,
> for which the MLO and barebox.bin boot just fine on an xM, so there's
> clearly a significant difference between those two panda variants as
> far as barebox is concerned.  i haven't had any time to look at it in
> more detail yet.
> =

Panda ES has a OMAP4460 @ 1.2GHz Panda has a OMAP4430 @ 1GHz.
This patch series shows that some changes are really needed to switch
from the 4430 to the 4460 :
http://lists.denx.de/pipermail/u-boot/2011-July/096351.html

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
