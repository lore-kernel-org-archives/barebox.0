Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8nlX-0005A6-L8
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 08:14:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U8nlW-0007YK-Bu
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 09:13:58 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U8nlW-0004Ix-Ai
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 09:13:58 +0100
Date: Fri, 22 Feb 2013 09:13:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130222081358.GE1906@pengutronix.de>
References: <1361456235-30969-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361456235-30969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] hush: expand variables before globbing in for loops
To: barebox@lists.infradead.org

On Thu, Feb 21, 2013 at 03:17:13PM +0100, Sascha Hauer wrote:
> The following does work:
> 
> for i in *; do echo $i; done
> 
> but the following does not:
> 
> a="*"; for i in $a; do echo $i; done
> 
> This is because globbing in for loops takes place before the variable
> is expanded. Fix this by explicitly expanding the variables before globbing.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I'll drop this one. While it makes the situation better in some cases,
it does not entirely fix this issue. I think hush is just too buggy to
fix this properly.

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
