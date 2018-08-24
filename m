Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft7Cj-0002ra-M8
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 08:15:11 +0000
Date: Fri, 24 Aug 2018 10:09:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180824080936.d6a7ts2xjdhysvgl@pengutronix.de>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/24] i.MX BBU improvements and bugfixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 23, 2018 at 07:52:19PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series is the result simplification, bugfixing and adding
> features to some of the code in BBU subsytem:
> 
>   - Patches 1 - 13 are a number of code simplifications intended to
>     minimize amount of duplicated code as well as generic improvements
>     (IMHO)
> 
>   - Patches 14 - 18 are i.MX8MQ and VF610 related changes
> 
>   - Patches 19 - 24 are a result of discovering that a number of error
>     cases were silently ignored and not reported as update
>     failures. Patch 22 is technically not related to BBU at all, but
>     since I discovered the problem while working on this series, I
>     kept it as a part of this series

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
