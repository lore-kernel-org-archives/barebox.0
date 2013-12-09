Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpvDH-0005i8-Um
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 07:25:09 +0000
Date: Mon, 9 Dec 2013 08:24:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131209072438.GH24559@pengutronix.de>
References: <002001cef299$a8f06d10$fad14730$@gmail.com>
 <1386344776.713139290@f428.i.mail.ru>
 <002501cef29e$f44aa410$dcdfec30$@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002501cef29e$f44aa410$dcdfec30$@gmail.com>
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
Subject: Re: How much ram is needed to run barebox by default config?
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 07, 2013 at 12:19:31AM +0800, Kevin Du Huanpeng wrote:
> I am porting barebox to my router, ar9331 MIPS 24kc 400MHz, 32MB RAM, 4MB Flash.
> I don't know what is the proper size to set the stack and malloc.

8MiB for malloc space should be fine.

> - - -
> initcall-> 0x80068168
> INITCALL->
> initcall-> 0x80063f0c
> malloc space: 0x80020000 -> 0x8005ffff (size 2147876864.134217718 EiB)
> INITCALL->
> initcall-> 0x800640d8
> INITCALL->
> - - -
> Look at the LINE 4, it's strange.

This is indeed strange. size_human_readable takes an unsigned long long
argument, but it is passed an unsigned long argument. It looks like you
have garbage in the upper 32bits. I have no idea what happens there,
this should normally work.

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
