Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zydho-0005lp-NA
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 10:41:55 +0000
Date: Tue, 17 Nov 2015 11:41:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151117104122.GP8526@pengutronix.de>
References: <1447755851.430640730@f390.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447755851.430640730@f390.i.mail.ru>
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
Subject: Re: Shell loop bug?
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Nov 17, 2015 at 01:24:11PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> barebox@/ # for i in /dev/* ; do echo $i; done
> /dev/flash0
> /dev/full
> /dev/m25p0
> /dev/m25p1
> /dev/mem
> /dev/null
> /dev/ram0
> /dev/self0
> /dev/serial1
> /dev/zero
> 
> barebox@/ # for i in /dev/*1 ; do echo $i; done
> /dev/m25p1
> /dev/serial1
> 
> barebox@/ # for i in /dev/*2 ; do echo $i; done
> /dev/*2
>      ^^^^^^^^ Is this correct?

When there is no /dev/*2, then yes, this is correct.

Try the same under bash, it behaves the same. If there's nothing
matching the wildcard pattern then the wildcards are just passed
through.

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
