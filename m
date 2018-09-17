Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1nzW-0000bC-Jb
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 07:30:44 +0000
Date: Mon, 17 Sep 2018 09:30:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180917073030.GH7949@pengutronix.de>
References: <1597963.4YffofffW7@think-future.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1597963.4YffofffW7@think-future.de>
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
Subject: Re: rk3188 (radxa rock pro) boot failure w/ barebox 2018-04 and later
To: perachet7@gmail.com
Cc: barebox@lists.infradead.org

On Thu, Sep 13, 2018 at 01:18:54PM +0200, perachet7@gmail.com wrote:
> Hey list,
> 
> Between 2018-04 and 2018-05 tar release, barebox stops booting on rk3188 
> (radxa rock pro).
> 
> A git bisect reveals (see end of mail for commit detail): 
> 	first bad commit: [2a94e821ba2e64890ac47b9ba177c7b6585b23be] ARM: For 
> relocatable image force TEXT_BASE 0x0.
> 
> As was suggested on #barebox, I tried setting TEXT_BASE=0x10 at this commit 
> but it's a no fix. 
> 
> It is however booting even later releases if the trailing "if !RELOCATABLE" is 
> removed. I have yet to have a deeper look at the code modified by 
> HAVE_CONFIGURABLE_TEXT_BASE and RELOCATABLE.
> 
> Furthermore, it seems the commit itself is only triggering a boot failure. The 
> proper code causing it is probably hiding someplace else.
> 
> Any direction, ideas or hints given is appreciated.

I just sent a patch. Could you please give it a test?

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
