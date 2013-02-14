Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5wyP-0003e6-8t
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 11:27:30 +0000
Date: Thu, 14 Feb 2013 12:27:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214112727.GM1906@pengutronix.de>
References: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
 <20130214100612.GA2152@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130214100612.GA2152@x61s.8.8.8.8>
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
Subject: Re: [PATCH] ARM pbl: move piggydata before bss
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2013 at 11:06:13AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> i am a little bit confused. I add in commit
> 
> 43afe67390697041d1d16d4e5c934d2bfa831399
> 
> the data section, but I forgot to change this linker script file.
> Does it work now?

Yes, it works.

> It seems that pbl doesn't uses pointers from
> asm-generic/sections.h or never includes this file.

The linker generated pointers to the data sections are only used to
request the corresponding sdram regions. The pbl does not request
regions.

> 
> Should I write a patch to add data section to this linker script file?

Not necessary.

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
