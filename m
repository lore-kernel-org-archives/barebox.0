Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tujot-00064g-LH
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 13:11:20 +0000
Date: Mon, 14 Jan 2013 14:11:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130114131117.GJ1906@pengutronix.de>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 0/9] reimplement memtest command
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org, marc@cpdesign.com

Hi Alexander,

On Sun, Jan 13, 2013 at 06:42:14PM +0100, Alexander Aring wrote:
> This patch series reimplement the memtest command.
> 
> Now it's support enable/disable caching on arm architecture
> and skip barebox regions.
> 
> In part of this patch series are the following changes:
> 	- Fix missing include in meminfo.
> 	- Fix some memory adresses issues.
> 	- Make remap_range globally accessable.
> 	- Add function to get cache/uncache pte flags.
> 	- Add new section data which is between text and bss.
> 	- Add function to check if address is in iomem regions
> 	  of ram.
> 
> Alexander Aring (9):
>   meminfo: fix missing include
>   memory: fix size address calculation
>   meminfo: fix display of allocated addresses
>   arm-mmu: remove semicolon in arm mmu.c

I applied up to 4/9 to master for now.

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
