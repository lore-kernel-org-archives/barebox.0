Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f67.google.com ([209.85.220.67])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgq9Q-0000uS-Ah
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 05:07:05 +0000
Received: by mail-pa0-f67.google.com with SMTP id fb11so145273pad.6
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 21:07:01 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Fri, 07 Dec 2012 13:05:39 +0000
Message-ID: <5693537.UlV3N7R00O@yiqingliang-pc>
In-Reply-To: <201212060909.10852.jbe@pengutronix.de>
References: <10036346.7roAWQEoPH@yiqingliang-pc>
 <201212060909.10852.jbe@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: about the dm9000 in mini2440
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

I got it finally, but not root cause.


reproduce:

1. connect jtag with openjtag(not the official openjtag, but 100ask.net produced 
based on openmoko's).
2. use ON/OFF switch on the board

then I got "Wrong databus"
but if I disconnect the power line, and reconnect it, everything OK.
and if not connect jtager, and use ON/OFF switch, everyghing OK.

what's the fuck problem?


On Thursday, December 06, 2012 09:09:10 AM Juergen Beisert wrote:
> Yi Qingliang wrote:
> > the address of dm9000 is 0x28000000, it should be cs5, but in function
> > "mini2440_devices_init", it set the cs4 instead, why??
> 
> Hmm, the schematics of the Mini2440 board tells me, the processor's GCS4
> (ball D3) is in use for the DM9000.
> 
> GCS5 is connected to the CON5 instead.
> 
> Regards,
> Juergen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
