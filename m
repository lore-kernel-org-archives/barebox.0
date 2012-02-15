Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxbCp-0005hY-Vs
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:31:25 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 15 Feb 2012 10:29:12 +0100
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
In-Reply-To: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201202151029.12926.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX27 clock settings
To: barebox@lists.infradead.org

Igor Trevisan wrote:
> Hi,
>
> I'm working on a custom board based on iMX27L. Initially I worked with
> Redboot as Linux bootloader but now, I'm happily working with Barebox
> (2012.01.0) having replaced Redboot with it.
>
> Everithing is fine (thanks to the guys in the list for helping me!) but...
> I noticed that my Linux apps run more slowly within my system if it's
> started by Barebox
> then if it's started by Redbbot.
> I think it's a matter of internal clocks settings.
>
> I see that Redboot, for example, set:
>         CSR=3D0x33F38107
> while Barebox does:
> 	writel(0x33F30307 | CSCR_MPLL_RESTART | CSCR_SPLL_RESTART, CSCR)
> That brings to CSR=3D0x33F30307 at the end of the PLLs restart procedure.
>
> Reading the Manual I can see that the differences between the two settings
> mean having an arm_clk that is 2/3 and an AHB_clk that's the half.
>
> Is there a particular reason for having these "slower configuration"?
>
> I tried to change the lowlevel_init.S to force 0x33F38107 into CSCR
> at startup but, after that change, my board starts, has time to write
> somenthing on the
> serial console:
>
> "barebox 2012.01.0-svn11070-dirty1 (Feb 14 2012 - 11:10:39)
>
> Board: Freescale i=FF"
>
> and then restarts... continuously.
>
> Can anybody help me to understand this and to make (if possible) my
> system faster?

a) you cannot change the PLL settings, when the system is already up and
   running (which means the SDRAM controller is running)
   This is due to the fact, the clocks are stopping until the PLLs lock
   again to the new settings. While the clock is stopped the SDRAM may lose
   data (no refresh for about 100ms).
b) one way to solve it is to re-program the PLL very early prior the SDRAM
   controller gets configured.
c) solution b) does not work if the default core power supply is to low to =
run
   the core at the full speed.
d) solution here is to re-program the PLL to its final values, but with hig=
her
   prescaler vale to keep the core clock at rates corresponding to the
   available core power supply value. Later on, when Barebox is up and runn=
ing
   and can re-program the core power supply to higher values, it is possible
   the change only the prescalers to run the core at higher speed (without =
the
   need to reprogram the PLL).

Regards,
Juergen

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
