Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgtUi-0002OI-D9
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 08:41:17 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 7 Dec 2012 09:38:35 +0100
References: <10036346.7roAWQEoPH@yiqingliang-pc>
 <201212060909.10852.jbe@pengutronix.de> <5693537.UlV3N7R00O@yiqingliang-pc>
In-Reply-To: <5693537.UlV3N7R00O@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201212070938.35716.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Yi Qingliang wrote:
> I got it finally, but not root cause.
> reproduce:
>
> 1. connect jtag with openjtag(not the official openjtag, but 100ask.net
> produced based on openmoko's).
> 2. use ON/OFF switch on the board
>
> then I got "Wrong databus"
> but if I disconnect the power line, and reconnect it, everything OK.
> and if not connect jtager, and use ON/OFF switch, everyghing OK.
>
> what's the fuck problem?

Good question. The DM9000 uses the EED0 pin to decide if a 16 or 32 bit data 
bus is in use, when the reset signal is gone. Maybe your system does 
not "see" a correct reset.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
