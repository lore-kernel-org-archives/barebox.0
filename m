Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtZHA-0002Z9-73
 for barebox@lists.infradead.org; Mon, 01 Jul 2013 08:15:57 +0000
Date: Mon, 1 Jul 2013 10:15:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130701081533.GV516@pengutronix.de>
References: <1372457390-20162-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372457390-20162-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] Split Multimage Makefile rule in explicit and implicit
 parts
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Jun 29, 2013 at 12:09:50AM +0200, Lucas Stach wrote:
> Fixes build with make version >=3.82
> 
> Frome the make 3.82 NEWS file:
> * WARNING: Backward-incompatibility!
>   In previous versions of make it was acceptable to list one or more explicit
>   targets followed by one or more pattern targets in the same rule and it
>   worked "as expected".  However, this was not documented as acceptable and if
>   you listed any explicit targets AFTER the pattern targets, the entire rule
>   would be mis-parsed.  This release removes this ability completely: make
>   will generate an error message if you mix explicit and pattern targets in
>   the same rule.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Squashed into the original commit.

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
