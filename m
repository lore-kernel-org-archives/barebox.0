Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goj2Y-0006Zf-Vx
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 06:08:04 +0000
Date: Wed, 30 Jan 2019 07:08:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190130060800.kjizme7u36nwvflz@pengutronix.de>
References: <1548322649.666663534@f388.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1548322649.666663534@f388.i.mail.ru>
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
Subject: Re: initrd problem
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

Sorry for the delay. Has this been resolved in the meantime?

On Thu, Jan 24, 2019 at 12:37:29PM +0300, Alexander Shiyan wrote:
> I decided to change the size of the UBI volume for the root file system to 60 MB.
> Now I get a weird OOM error. Turning on debug information shows a conflict,
> but I do not quite understand where to look for the problem.
> Where is the starting point to try to solve this problem?
> 
> 
> malloc space: 0x95df8d40 -> 0x97df8d3f (size 32 MiB)
> 
> Loading ARM Linux zImage '/dev/nand0.system.ubi.kernel'
> __request_region ok: 0x92000000:0x922a244f

The Kernel documentation recommends putting the Kernel 32MiB into SDRAM
to avoid relocation. This is what we see here.

> __request_region: 0x923a3000:0x95e02fff conflicts with 0x95df8d40:0x97df8d3f

Now we try allocate space for the initrd above it which is 60MiB. This
conflicts with the malloc space.

So yes, you're out of memory.

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
