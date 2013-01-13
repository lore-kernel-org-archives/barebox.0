Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f51.google.com ([209.85.220.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuFz0-0006uK-Ld
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 05:19:47 +0000
Received: by mail-pa0-f51.google.com with SMTP id fb11so1670113pad.38
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2013 21:19:44 -0800 (PST)
Message-ID: <50F243F7.4080009@acm.org>
Date: Sat, 12 Jan 2013 21:19:51 -0800
From: "Paul B. Henson" <henson@acm.org>
MIME-Version: 1.0
References: <50F228E8.8050000@acm.org>
In-Reply-To: <50F228E8.8050000@acm.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx23evk NAND support
To: barebox@lists.infradead.org

On 1/12/2013 7:24 PM, Paul B. Henson wrote:

> My understanding is that the SD card and the NAND chip cannot be used at
> the same time due to a pin conflict.

Hmm, it seems what I read on this wasn't entirely correct. I ended up =

booting the BSP linux kernel and root file system off of SD, and it was =

able to access the NAND device while simultaneously using the SD device =

(as the root filesystem source) so there doesn't seem to be any inherent =

hardware limitation preventing bareboot from accessing it.

Just for fun, I tried to use the kobs-ng freescale tool from within the =

linux environment to burn the bareboot bootstream to NAND. However, =

after trying to boot, I receive the error code 0x80501003 from the ROM =

loader, which evidently indicates "The file signature or file version is =

incorrect". The exact same bootstream on an SD card boots fine, so I =

don't think there's anything wrong with it. I also tried to burn the BSP =

linux kernel bootstream, with the same result. (Side question, what's =

the difference in the bootstream files that contain "ivt" in the =

filename? I used the non-ivt versions on SD, I tried both on NAND with =

neither working).

The board came from the factory with a working kernel on NAND, so I know =

it can work. Given I'm using the freescale supplied linux environment =

and their nand bootstream burning tool you'd think it would be fairly =

straightforward=85



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
