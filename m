Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6bTE-0003Xq-LP
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 07:14:17 +0000
Date: Tue, 6 Aug 2013 09:13:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130806071353.GZ26614@pengutronix.de>
References: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/5] JUST-FOR-FUN: run barebox on Canon digital camera
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 05, 2013 at 12:25:22AM +0400, Antony Pavlov wrote:
> Please don't commit the patches!
> 
> This patch series introduce minimal support
> for Canon DIGIC4-based cameras.
> 
> Supported cameras:
> 
>  * Canon PowerShot A1100;
>  * Canon EOS 600D;
>  * Canon EOS Magic Lantern qemu-based emulator.
> 
> After booting barebox starts compiled-in script
> that use 'mw' command to blink camera's LED.
> 
> Just now barebox for Canon cameras is a demo
> but after some improvements it can become very
> handy tool for CHDK and Magic Lantern development.

Very cool stuff.

I'll have to have a look what model my wifes camera is ;)

I'd be amazed if barebox could be used to help the magic lantern
project.

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
