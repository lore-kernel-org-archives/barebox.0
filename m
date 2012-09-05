Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9DaJ-0003Ji-1A
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 11:15:51 +0000
Date: Wed, 5 Sep 2012 13:15:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120905111549.GG26594@pengutronix.de>
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel>
 <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel>
 <504722D8.1050409@webware-experts.de>
 <20120905105323.GE26594@pengutronix.de>
 <50473122.90906@webware-experts.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50473122.90906@webware-experts.de>
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

On Wed, Sep 05, 2012 at 01:01:54PM +0200, Norbert Roos wrote:
> On 09/05/2012 12:53 PM, Sascha Hauer wrote:
> 
> >What gcc version do you have?
> 
> gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)

Maybe you could try an older toolchain. There are some dark memories in
my mind, but it could also be that my mind is fooling me...

> 
> Is there something which i could quickly check in the MLO, a
> checksum for example? Only if you know something, otherwise i can
> look it up in the OMAP manual, what he is doing to accept the MLO.
> 
> As i said, it seems he doesn't like the MLO, because he's skipping
> to the next boot source..

The MLO is generated from barebox.bin with the omap_signGP tool. It
seems the header is 520byte in size. You could compare these between
both images. I don't know though if this is enough for the OMAP ROM code
to detect a valid image.

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
