Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0Qso-0005vo-W8
 for barebox@lists.infradead.org; Thu, 13 Sep 2018 12:38:08 +0000
Date: Thu, 13 Sep 2018 14:37:46 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180913123746.GA18653@ravnborg.org>
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

Hi S.

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

I was hit by a do-not-boot issue as well after upgrading to 2018.05.
In my case this was due to a fix to get_runtime_offset()
It turned out that I had subtraced the value, not added.
Looks like an artifict from some code I copied some time ago.

Maybe this hint can help you, and maybe this is totally unrelated.

Good luck chasing it down.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
