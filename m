Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUcgb-0006vl-I6
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 11:14:20 +0000
Date: Sun, 27 Nov 2011 11:57:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111127105740.GK27267@pengutronix.de>
References: <CAAfyv345QDLnUt4n7vTyBqmt-y5E9mOLuOgrb0VYBBENofwA=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv345QDLnUt4n7vTyBqmt-y5E9mOLuOgrb0VYBBENofwA=w@mail.gmail.com>
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
Subject: Re: next branch compilation errors
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 25, 2011 at 10:42:33PM +0100, Belisko Marek wrote:
> Hi,
> 
> today I update next branch and run MAKEALL for arm gives result that
> most of board aren't compilable because of:
> 
> barebox/common/memory.c:66:14: warning: 'sbrk' defined but not used
> common/built-in.o: In function `memalign':
> memsize.c:(.text.memalign+0xc): undefined reference to `sbrk'
> make[1]: *** [barebox] Error 1
> make: *** [_all] Error 2
> 
> or:
> 
> barebox/common/memory.c:66:14: warning: 'sbrk' defined but not used
> common/built-in.o: In function `malloc':
> memsize.c:(.text.malloc+0x3e4): undefined reference to `sbrk'
> memsize.c:(.text.malloc+0x474): undefined reference to `sbrk'
> make[1]: *** [barebox] Error 1
> make: *** [_all] Error 2
> 
> Not sure if I'm doing something wrong or miss something?

Works for me. This 'defined but not used' and then the linker error
looks like sbrk would be static, but it isn't.

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
