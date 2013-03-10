Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEhbd-0003LX-Gl
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 14:52:10 +0000
Date: Sun, 10 Mar 2013 15:52:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130310145206.GO1906@pengutronix.de>
References: <1362924823.394544173@f371.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362924823.394544173@f371.mail.ru>
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
Subject: Re: New dt-only arm/mach
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Mar 10, 2013 at 06:13:43PM +0400, Alexander Shiyan wrote:
>  Hello All.
> 
> I want to add new arch into barebox. n the kernel this arch is dt-only.
> I talking about mach-sunxi. So, how we should handle such platform
> in the barebox? We need always provide dtb to the kernel, then where
> it should be in barebox?

You asked me privatly whether we should put dtc and friends into
barebox, by that time I answered it needs some more time. Maybe this
time has come now. I currently have a branch in the making to add dtc
support and also integration into barebox.

With this we are able to compile a dts(p) and link the binary into
barebox, so...

> I think about dtb-file in /env, but not sure...

...you could provide a dtb in the binary *)

Furthermore you could probe barebox itself from the devicetree.

I'm still not sure whether we should add fullblown devicetrees into
barebox or stripped down versions with only the devices barebox needs.
I think time will tell.

Give me some hours time, I think then I can post a first version of the
patches.

Sascha


*) This of course shouldn't mean it can't be overwritten with another
dtb during runtime.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
