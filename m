Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIvYY-0003i3-0h
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 07:38:59 +0000
Date: Thu, 27 Feb 2014 08:38:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227073835.GD17250@pengutronix.de>
References: <CAO6XYUt7KaraGNUkTuEkQXKbh0f6MH4Ywn8dDJQpo1RkT2CaSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUt7KaraGNUkTuEkQXKbh0f6MH4Ywn8dDJQpo1RkT2CaSw@mail.gmail.com>
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
Subject: Re: i.MX6Q Boot from NAND
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 26, 2014 at 03:49:37PM -0500, Michael D. Burkey wrote:
> >Hi ANdreas,
> 
> PS...
> Out of curiosity, which SOM are you using that boots from NAND?
> I'm currently working with Variscite's SOM -- and life would have been
> much simpler if someone had just put a SPI NOR on it!

+1

Booting from Nand is always a pain, not only on i.MX. SoC vendors are
always very creative when it comes to bad block handling and ECC layout.
Since it's the ROM code that reads the initial portion you are forced to
put on Nand whatever the ROM code wants to have, even if you want to use
a completely different ECC layout / Bad block table on your Nand.

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
