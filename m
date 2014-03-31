Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUdqI-0003ox-5r
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 15:09:43 +0000
Date: Mon, 31 Mar 2014 17:09:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140331150920.GP17250@pengutronix.de>
References: <20140331130418.GA3113@radagast>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140331130418.GA3113@radagast>
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
Subject: Re: Building and booting Barebox on Pandaboard
To: Nur Hussein <hussein@unixcat.org>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Mar 31, 2014 at 09:04:18PM +0800, Nur Hussein wrote:
> Dear all,
> 
> I am using barebox-2014.03.0 to try to boot on a Pandaboard ES. I have followed the instructions in the docs:
> 
> http://wiki.barebox.org/doku.php?id=boards:omap
> 
> I could not however find a barebox.bin.ift file in the output, so I guessed and went with the barebox-flash-image linked file and named it MLO.

Yes, right. barebox-flash-image is the correct file to use. I updated
this in the wiki.

> 
> It did not work. The Pandaboard ES did not boot.

Due to updates the panda_*defconfig configs currently do not build for
the panda board. Please either manually call a make menuconfig and set
the config back to panda:

System Type  --->
  OMAP Features  --->
    Select OMAP board (Texas Instrument's Panda Board)  --->

Or apply the patch I just sent to the list:

ARM: Panda: Fix board selection in panda defconfig files

I'm not 100% sure the ES variant is supported. What was the difference
between the ES and the regular board again? Does the ES have a omap4460
whereas the regular board has a omap4430? If yes then the ES should be
supported.

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
