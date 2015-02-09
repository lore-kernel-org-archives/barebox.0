Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YKixl-0004aa-6P
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 07:40:57 +0000
Date: Mon, 9 Feb 2015 08:40:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150209074034.GT12209@pengutronix.de>
References: <20150208232614.f704a8d152576f0c47ca9c50@gmail.com>
 <CAJfOKBz5UuqQJtcuPP8nLwLymje7+mPkKDgDSC8yHfj_pbvD+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBz5UuqQJtcuPP8nLwLymje7+mPkKDgDSC8yHfj_pbvD+w@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: openrisc build problem
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi,

On Sun, Feb 08, 2015 at 08:35:40PM +0100, Franck Jullien wrote:
> 
> Hi,
> 
> Yes I know :) Until now, the official openrisc toolchain was called or32.
> However, the new one (and maintained one)  is called or1k. So we need
> to change "elf32-or32" to "elf32-or1k" in barebox.lds.S.
> 
> Feel free to send a patch. Or I'll do that later.

Is there a binary toolchain somewhere for download? I'll need for my
build tests once this patch is in.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
