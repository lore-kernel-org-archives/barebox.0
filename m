Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRFi-0004PS-QV
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:19:47 +0000
Message-ID: <1354522782.3772.3.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 03 Dec 2012 09:19:42 +0100
In-Reply-To: <alpine.DEB.2.02.1212020418020.6898@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <alpine.DEB.2.02.1212011733350.24134@oneiric>
 <alpine.DEB.2.02.1212020418020.6898@oneiric>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore [ISOLATED]
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi,

On Sun, 2012-12-02 at 04:24 -0500, Robert P. J. Day wrote:
> i've isolated the commit that introduces the apparent booting
> problem on my xM:
> 
> $ git show 154496f
> commit 154496f736db54123c3f6daaba18809fab54ed9b
> Merge: 05d251f bd6d12b
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Fri Nov 16 14:02:49 2012 +0100
> 
>     Merge branch 'for-next/omap'

*snip*

>   so something in that omap merge is causing this.

The merge itself does not actually introduce new code.

Could you try finding the commit with git bisect?

~/git/barebox $ git bisect start
~/git/barebox $ git bisect bad 154496f736db54123c3f6daaba18809fab54ed9b
~/git/barebox $ git bisect good 05d251f
Bisecting: 3 revisions left to test after this (roughly 2 steps)
[663c466794382f803a69414c935cf0a13d4f0761] ARM OMAP4 panda: switch to new environment
~/git/barebox $

Then test this checkout and tell git using "git bisect good" or "git
bisect bad".

Thanks,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
