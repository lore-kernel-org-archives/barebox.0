Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Qan-00054A-Iu
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 08:08:43 +0000
Date: Mon, 8 Oct 2018 10:08:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008080829.553vxruvmyfrjksb@pengutronix.de>
References: <20181008063518.18164-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063518.18164-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/4] Additional error checking for barebox_update
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2018 at 11:35:14PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This is a follow up to discussion [1]. Hopefull all of the patches are
> self-explanatory enough.
> 
> Feedback is welcome!
> 
> Changes since [v1]:
> 
>     - Move handler lookup out of barebox_update() in order to avoid
>       making calls to bbu_handler_by_*() twice
> 
> Thanks,
> Andrey Smirnov
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-September/034865.html
> [1] http://lists.infradead.org/pipermail/barebox/2018-August/034573.html
> 
> Andrey Smirnov (4):
>   bbu: Expose bbu_find_handler_by_*() functions
>   bbu: Add "handler" parameter to barebox_update()
>   bbu: command: Make sure specified update handler exists
>   bbu: Simplify bbu_find_handler_by_device()

Applied, thanks

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
