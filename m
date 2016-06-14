Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bChn0-0004ev-3t
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 06:25:31 +0000
Date: Tue, 14 Jun 2016 08:25:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160614062506.GO31666@pengutronix.de>
References: <20160613105152.28770-1-aar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160613105152.28770-1-aar@pengutronix.de>
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
Subject: Re: [PATCH RFC] common: env: handle var="" not as var=NULL
To: Alexander Aring <aar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 13, 2016 at 12:51:52PM +0200, Alexander Aring wrote:
> This patch changes the behaviour which I think is used everywhere in
> barebox code. Currently var="" and var=NULL will end in the same
> behaviour.
> 
> New behaviour is:
> 
> setenv(name, "")	-> sets name to ""
> \-> getenv(name)	-> ""
> 
> setenv(name, NULL)	-> deletes env
> \-> getenv(name)	-> NULL
> 
> It seems that barebox code already wants such behaviour, by run
> 
> $ grep -r "\"\"" | grep setenv
> 
> it finds most all related code sections which use "".
> 
> I detected the issue while commenting #ip="foo" in my env. The code
> part:
> 
> net/ifup.c:	setenv("ip", "");
> 
> Sets at first "ip" to "" but will end in the old behaviour as "delete".
> The getenv("ip") in ifup.c will not check on the NULL value and has a
> general handling for unknown ip env.
> 
> Note:
> Also check commit e7ed69d5 ("setenv: be robust against setenv(<var>,
> NULL") which says that hush will handle "" and NULL as the same.
> 
> Another check would be:
> 
> $ grep -r "NULL" | grep setenv
> 
> which should show the behaviour in case of deleting env.
> 
> Signed-off-by: Alexander Aring <aar@pengutronix.de>
> ---
> I test the ip env stuff only that barebox will not crash anymore but I
> think it will break some other setenv/getenv behaviour.
> 
> The question is "Shall we keep that "" and NULL ends in same behaviour"
> and fix the code which use it wrong, e.g. setenv("ip", ""); getenv("ip").

I'm not sure at the moment if a var="" should delete a variable or just
set it to an empty string. In any case we should fix net/ifup.c.
getenv() can return NULL and the code should be prepared for that.

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
