Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuKNQ-0004Od-Vj
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 09:29:11 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 26 Jul 2012 11:27:48 +0200
References: <002601cd6b08$37498d50$a5dca7f0$@cpdesign.com.au>
In-Reply-To: <002601cd6b08$37498d50$a5dca7f0$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207261127.48919.jbe@pengutronix.de>
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
Subject: Re: Way to clear nand bad block table
To: barebox@lists.infradead.org, marc@cpdesign.com.au

HI Marc,

Marc Reilly wrote:
> Is there a way to clear the nand bad block table?
>
> I'm not sure what happened, but I was playing around with barebox init and
> didn't register the nand device - then when I booted the kernel there were
> a stack of UBI errors.
> I assume this also did something to the bbt as subsequent barebox startups
> give a heap of bad block messages. Note not all blocks are bad - tested
> with nandtest and there's still some R/W going on.
> All the code I looked at seemed to indicate that once a block is marked bad
> you can't go back.
>
> Any ideas much appreciated.

The flash blocks which contains the "bad block table" are protected by 
the "bad block table" aware MTD layer.

So, the ugly way: run a bootloader which does not use the in-flash bad block 
table. Then the tables are regular blocks in the flash and can be erased. 
After that run again the bad block table aware bootloader and it will 
re-create the in-flash table. But be careful: In this case the generic 
functions scans all blocks in the NAND to collect the bad block markers in 
each NAND block's OOB. If this information is already destroyed somehow, this 
solution does not help.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
