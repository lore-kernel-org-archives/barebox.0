Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTJs-00012j-WF
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 11:51:58 +0000
Date: Fri, 19 Oct 2018 13:51:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019115142.kc4vmfzct2uu4yrk@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
 <20181018065827.19973-20-s.hauer@pengutronix.de>
 <20181018153538.GC2206@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018153538.GC2206@ravnborg.org>
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
Subject: Re: [PATCH 19/20] ARM: i.MX: Add missing include
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 18, 2018 at 05:35:39PM +0200, Sam Ravnborg wrote:
> Hi Sasha.
> 
> While I am in nitpick mode...
> 
> On Thu, Oct 18, 2018 at 08:58:26AM +0200, Sascha Hauer wrote:
> > mach/generic.h provides protypes for functions that mach-imx/cpu_init.c
> protype => prototypes

Fixed all, thanks

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
