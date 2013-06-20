Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upb0s-0008Kv-Il
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 09:18:43 +0000
Date: Thu, 20 Jun 2013 11:18:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130620091820.GT32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371632991-1504-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371632991-1504-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 00/22] Barebox OF API fixes, sync, and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 19, 2013 at 11:09:29AM +0200, Sebastian Hesselbarth wrote:
> This is a quite large patch set to make Barebox OF API more behave
> like Linux OF API. Also, it prepares Barebox to reuse Linux OF address
> handling and drivers/of/of_* helpers soon.
> 
> The patch set is roughly divided into 5 sections:
> 
> (1) Patch 1 introduces case-insensitive string compare functions that will
>     be used later during import of Linux OF API functions.
> 
> (2) Patches 2 and 3 fix some bugs in existing OF API functions.
> 
> (3) Patches 4-8 synchronize existing OF API functions with Linux OF API
>     counterparts.
> 
> (4) Patches 9-18 import API functions from Linux OF API or introduce new
>     functions based on existing Barebox OF API functions.
> 
> (5) Patches 19-22 convert to new API functions and remove now obsolete
>     functions. Further, it cleans up existing OF include, by providing
>     OFTREE prototypes and !OFTREE bogus stubs.
> 
> v2 of this patch set takes care of comments made by Sascha Hauer with
> respect to Patches 7 and 13. A detailed changelog is given in the
> respective patches. Unfortunately, I have to resend the whole patch
> set, although only 2 patches really changed as the following patches
> need to be rebased on to that changes.
> 
> Also, this v2 is only compile-tested for CONFIG_OFTREE set and not set.
> 
> The v2 patch set applied to barebox/next can also be found at
> git://github.com/shesselba/barebox-dove.git barebox-of-sync-v2

I gave this series a test. With the fixes I mentioned the series
compiles on all boards. I did runtime tests on a few oftree enabled
boards, everything seems to work smoothly.

I think we are good to go for this series.

Good work, thanks.

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
