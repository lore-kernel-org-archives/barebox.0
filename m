Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLIRt-0002aG-2y
	for barebox@lists.infradead.org; Sat, 14 May 2011 17:16:18 +0000
Date: Sat, 14 May 2011 19:16:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110514171607.GA30963@pengutronix.de>
References: <04EB6ACBB90C8844892BE0B9828F13C8018734BA036D@SRVSBS.airtag.local>
	<20110513172252.GZ30963@pengutronix.de>
	<87d3jlkbb0.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d3jlkbb0.fsf@macbook.be.48ers.dk>
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
Subject: Re: crc32 command
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, May 14, 2011 at 09:09:55AM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  >> How can I use crc32 to verify the files I transfer?
> 
>  Sascha> The algorithms differ, so cksum is not usable here. Got curious
>  Sascha> myself and looked around in the net. the zip tool is usable for
>  Sascha> this:
> 
>  Sascha> zip test.zip barebox.bin; unzip -lv test.zip
> 
>  Sascha> Ok, this sucks, but there is also a standalone program (haven't tested
>  Sascha> this). See here:
> 
>  Sascha> http://docwiki.gumstix.org/index.php/Calculating_32_bit_CRCs
> 
> The crc32 command is largely legacy from u-boot. Would there be interest
> in a cksum command (it's afaik just like the normal crc32 except it also
> uses the length) or md5/sha1/sha256sum? We have all the infrastructure,
> so it should be easy to add.

md5sum would be very useful. Would it add much to the binary space?
(If yes, that would be no reason to not have it, but probably more
boards will enable this when it's small)

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
