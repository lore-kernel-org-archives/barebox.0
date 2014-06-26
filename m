Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X02bn-0007Iu-Ea
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 05:52:31 +0000
Date: Thu, 26 Jun 2014 07:52:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626055209.GU15686@pengutronix.de>
References: <CAOpc7mEx4SW8gCjmxB8kTFypgAbm8GbfaMk9UcZRj5jF3y4uvg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEx4SW8gCjmxB8kTFypgAbm8GbfaMk9UcZRj5jF3y4uvg@mail.gmail.com>
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
Subject: Re: How to disable console late?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jun 25, 2014 at 06:22:04PM +0200, Holger Schurig wrote:
> On my i.MX6 I have CONFIG_CONSOLE_FULL and CONSOLE_ACTIVATE_NONE
> defined. But still my serial is automatically activated as a console.
> 
> barebox:/ devinfo cs0
> Bus: platform
> Parameters:
>   baudrate: 115200
>   active: ioe
> 
> I'd rather active the serial port as a console only if a key is
> pressed during power on. Based on the help text of
> CONFIG_ACTIVATE_NONE, I actually thought that this would happen.
> 
> Any hints?
> 
> 
> I could remove chosen/stdout-path from my DTS and put it in
> on-the-fly? This sounds a bit ugly ...

Indeed you have to remove the stdout-path property from DTS. You don't
have to add it back, 'cs0.active=ioe' should do it. Note we currently
don't have persistent names for the console devices which means that
cs0 is whatever is probed first.

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
