Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG2Yx-0006mv-IV
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 07:26:56 +0000
Date: Thu, 14 Mar 2013 08:26:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314072650.GA1906@pengutronix.de>
References: <CAM7q1LnK0K5btk7frN7ZC0=VtfX-jsvVjgEuftnDPQKi3ffbcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM7q1LnK0K5btk7frN7ZC0=VtfX-jsvVjgEuftnDPQKi3ffbcA@mail.gmail.com>
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
Subject: Re: Loading kernel from SPI NOR
To: Jeff Horn <jeff@everlook.net>
Cc: barebox@lists.infradead.org

Hi Jeff,

On Wed, Mar 13, 2013 at 04:28:33PM -0700, Jeff Horn wrote:
> Hi,
> 
> I have a custom board based on the i.MX53.  We are using barebox 2012.05.0
> and booting the Freescale 2.6.35.3 kernel.  Our board has SPI NOR (m25p32)
> and I saw there is a driver in a more recent barebox.  I pulled 2013.01.0
> and added our board files but I can't seem to get the kernel to load.  I
> used the uimage tool and the -i option reported back that it can read the
> kernel and the -v option reported ok.  When I try and boot I see
> arch_number and then nothing.
> 
> I'm continuing to dig in to see what I can find.  Any pointers to where I
> can look is much appreciated.

The first thing you should check is whether your kernel is stored
correctly on the NOR flash. try a:

erase /dev/nor0
cp /someimage /dev/nor0
crc32 -f /someimage
ls -l /someimage
crc32 -f /dev/nor0 0+x

(with x being the size of /someimage as output by ls -l)

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
