Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL2TT-0006HA-Q5
 for barebox@lists.infradead.org; Tue, 22 May 2018 08:16:53 +0000
Date: Tue, 22 May 2018 10:16:37 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180522081637.b2mm4raotn5ggqsb@pengutronix.de>
References: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
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
Subject: Re: RaspberryPi 1/2(/3)
To: Pascal Vizeli <pascal.vizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 05:51:33PM +0200, Pascal Vizeli wrote:
> Hi,
> 
> I try to build a bootable barebox for raspberry with 2018.05.00 and buildroot:
> https://github.com/home-assistant/hassos/tree/dev/buildroot-external
> 
> I build the origin rpi_defconfig but I'm was not able to boot the
> 'barebox.bin' and become a output on UART. I can boot the linux kernel
> from rpi loader. If I try the barebox, it will be flash the green
> light and if I disable the LED support, only the red power light is
> seen.
> 
> I try also the RPi3 patches and end in same result.
> I follow also this guide:
> https://www.barebox.org/doc/latest/boards/bcm2835.html
> 
> Have anyone a idea what will be the problem or what I doing wrong?

Which version of the RPi firmware are you using? I wrote that section
while using the git tag 1.20171029, maybe they changed something
again...

What you can try to do is enable "low level debug messages" make
menuconfig under "Debugging",  and try to set the log level to something
higher and see if you get any output. I think you also need to set
"System Type" -> "Lowlevel debug UART" to the model you're using.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
