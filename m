Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9DEd-0000jz-PN
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 10:53:30 +0000
Date: Wed, 5 Sep 2012 12:53:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120905105323.GE26594@pengutronix.de>
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel>
 <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel>
 <504722D8.1050409@webware-experts.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <504722D8.1050409@webware-experts.de>
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
Subject: Re: MLO doesn't work, rest is ok
To: Norbert Roos <nroos@webware-experts.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 12:00:56PM +0200, Norbert Roos wrote:
> On 09/05/2012 11:41 AM, Jan Weitzel wrote:
> 
> >I just test it here it works.
> 
> Did another test - still doesn't work:
> 
> tar xfj barebox-2012.08.0.tar.bz2
> cd barebox-2012.08.0
> export ARCH=arm
> export CROSS_COMPILE=arm-linux-gnueabi-
> make pcm049_xload_defconfig
> make
> cp MLO barebox.bin <SD card>
> 
> >Did you use pcm049_xload_defconfig?
> 
> Yes
> 
> >SD card layout ok?
> 
> As described in various places. A downloaded MLO does work.
> 
> >Special nand mounted?
> 
> What is this? NAND is enabled in the config...

I think it even doesn't have to be enabled in the config. You won't be
able to boot the second stage barebox from Nand then of course, but
still you should see some output from the first stage.

What gcc version do you have?

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
