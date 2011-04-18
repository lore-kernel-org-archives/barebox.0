Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod7og114.obsmtp.com ([64.18.2.215])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QBl9M-0001f5-LF
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 09:53:49 +0000
From: Greg Topmiller <Greg.Topmiller@jdsu.com>
Date: Mon, 18 Apr 2011 02:44:16 -0700
Message-ID: <F384D1288827C547A75DEBA2647D64BA172AE7EABC@MILEXCH1.ds.jdsu.net>
References: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>,
	<20110418072941.GH14770@pengutronix.de>
In-Reply-To: <20110418072941.GH14770@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: Imx51 processor hangs when we do an md 0xf0000000 (memory
	display) in u-boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Thank you for your response.

Is there any way we can put code in u-boot to handle the abort?

Thanks,

Greg

________________________________________
From: Sascha Hauer [s.hauer@pengutronix.de]
Sent: Monday, April 18, 2011 3:29 AM
To: Greg Topmiller
Cc: barebox@lists.infradead.org
Subject: Re: Imx51 processor hangs when we do an md 0xf0000000 (memory display) in u-boot

On Sat, Apr 16, 2011 at 11:14:13AM -0700, Greg Topmiller wrote:
> We're are using the Freescale release L2.6.31_MX51_SDK_0912_Image and
> it will do this on a Freescale Babbage board and our design.  It also
> does the same thing in Linux when we mmap the address 0xf0000000 and
> try to read from it.  It does not hang on the Redboot.bin image
> supplied with the Freescale SDK.  The Redboot dump command displays
> some data.  On the Freescale 3Stack board we get an illegal address
> error in Redboot, but it will hang in u-boot.  We realize this is a
> reserved physical address but would hope that an error of some kind
> would occur rather than locking up the CPU.  Could it be some sort of
> MMU initialization difference between Redboot and u-boot?

I have no idea how redboot maps the memory in the mmu, but barebox and
u-boot use a 1:1 mapping which results in the behaviour you see.
Accessing reserved memory can result in a abort.

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
