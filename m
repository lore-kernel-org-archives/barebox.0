Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwaOQ-0001xW-J3
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 12:18:03 +0000
Date: Tue, 30 Mar 2010 14:18:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100330121801.GL2241@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-2-git-send-email-s.hauer@pengutronix.de>
	<8739zjc6ci.fsf@macbook.be.48ers.dk>
	<20100330092024.GI2241@pengutronix.de>
	<87r5n2b01l.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r5n2b01l.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH 01/12] ARM zImage: do memmap if possible
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Tue, Mar 30, 2010 at 12:01:42PM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> Hi,
> 
>  >> Here you're rereading the header as well, instead of everything past
>  >> it like the normal case.
> 
>  Sascha> Yes, mostly because I was too lazy to calculate the offsets.
> 
> You could just have copied it from the line above ;)
> 
>  >> Does this give a significant boost? read() from something memmap'able
>  >> (like NOR) boils down to a memcpy as well, right?
> 
>  Sascha> Hmm, with memmap it's 149ms and with read 156ms in my case. I
>  Sascha> think this is because with memmap it goes down to a single
>  Sascha> memcpy whereas with read we memcpy in chunks of 4k. I
>  Sascha> implemented this out of reflex, but maybe it's really not worth
>  Sascha> the added complexity.
> 
> I imho don't think it's worth it. One of barebox' big advantages is how
> readable and clean the source code is.

Ok, I'll drop this patch.

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
