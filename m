Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuL6f-0001fS-Q0
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 10:48:03 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Jan 2013 11:47:10 +0100
References: <50F228E8.8050000@acm.org> <50F243F7.4080009@acm.org>
In-Reply-To: <50F243F7.4080009@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201301131147.10661.jbe@pengutronix.de>
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
Subject: Re: imx23evk NAND support
To: barebox@lists.infradead.org

Hi Paul,

Paul B. Henson wrote:
> On 1/12/2013 7:24 PM, Paul B. Henson wrote:
> > My understanding is that the SD card and the NAND chip cannot be used at
> > the same time due to a pin conflict.
>
> Hmm, it seems what I read on this wasn't entirely correct. I ended up
> booting the BSP linux kernel and root file system off of SD, and it was
> able to access the NAND device while simultaneously using the SD device
> (as the root filesystem source) so there doesn't seem to be any inherent
> hardware limitation preventing bareboot from accessing it.
>
> Just for fun, I tried to use the kobs-ng freescale tool from within the
> linux environment to burn the bareboot bootstream to NAND. However,
> after trying to boot, I receive the error code 0x80501003 from the ROM
> loader, which evidently indicates "The file signature or file version is
> incorrect". The exact same bootstream on an SD card boots fine, so I
> don't think there's anything wrong with it. I also tried to burn the BSP
> linux kernel bootstream, with the same result. (Side question, what's
> the difference in the bootstream files that contain "ivt" in the
> filename? I used the non-ivt versions on SD, I tried both on NAND with
> neither working).

IIRC ivt/non-ivt is relevant for the i.MX28 firmware, not for i.MX23. On the 
other hand, for some i.MX23 based systems the encryption must be enabled for 
the bootstream, but with an empty key.

Hope it helps.
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
