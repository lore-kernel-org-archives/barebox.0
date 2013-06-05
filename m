Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkL3k-00079n-T9
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 21:15:58 +0000
Date: Wed, 5 Jun 2013 23:15:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605211535.GX32299@pengutronix.de>
References: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH/RFC 0/5] Another try for a new memtest implementation
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

On Tue, Jun 04, 2013 at 01:13:47AM +0200, Alexander Aring wrote:
> Hi,
> 
> this is a new try to get a new memtest implementation into barebox.
> 
> I removed the ADDRESS_IN_REGIONS macro, which was a very ugly solution.

Indeed, much nicer now.

> The new memtest command used a list and save all unused sdram_regions
> of each bank. Then running the mem_test routine on these regions.
> After that the memtest command will release the requested sdram_regions.
> 
> I removed the start and stop command arguments to make the implementation
> easier/understandable and it's not necessary anyway.

Specifying a region would be nice, but not really necessary.

> 
> Maybe it's better to remove the silent ALIGN and ALIGN_DOWN from the start
> and end address in the common mem_test routine, because addresses are already
> align.
> It is difficult to explain because a end address has the form of 0xXXXXffff
> and a ALIGN_DOWN on it with a mask of 3 we have a calculated end address of
> 0xXXXXfffA which is wrong. (0xXXXXffff - 4) - 1...
> 
> Another question is:
> Can someone test it with more than one bank, please? :-)

I gave it a test on a karo tx25 board which has two memory banks. It
works just like expected :)

Overall this looks really good now. I just applied it to -next.

Thanks
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
