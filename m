Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8w7-0005t2-WB
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:05:26 +0000
Date: Fri, 7 Jun 2019 09:05:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607070513.bnqmj2qds223tixk@pengutronix.de>
References: <20190604052003.3189-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604052003.3189-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/7] U-Boot environment data as a filesystem
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2019 at 10:19:56PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series adds code needed to expose U-Boot environemnt variable
> data partition as a regular filesystem in Barebox. It currently only
> supports the use-case where environment is stored on SD/MMC device,
> since that is the only use-case I have access to for testing, however
> adding support for other cases should be relatively
> straightforward.
> 
> Feedback is welcome!
> 
> Changes since [v1]:
> 
>     - ubootvar changed to not rely on struct resource
>     */mem_write/mem_read etc. and use a private pointer instead
> 
>     - ubootvar changed to handle the case of no valid environment data
>       by allocation parition 0 as empty/new
>       
>     - Added documentation for ubootvarfs as well as ubootvar DT
>       bindings
> 
> Thanks,
> Andrey Smirnov

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
