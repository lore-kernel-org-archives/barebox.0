Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH5V0-0006WC-7R
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 11:14:23 +0000
Date: Mon, 29 Oct 2018 12:14:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029111410.ub2rp2hdxzavp6ze@pengutronix.de>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/11] Allow GPIOs to be referenced by label
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 26, 2018 at 06:31:46PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patch series is the result of my work on extending various gpio_*
> commands in Barebox CLI to allow referencing GPIOs by a label assigned
> to them via Device Tree or in any other way.
> 
> Sascha:
> 
> AFAICT majority of callers of simple_strto*() functions don't really
> do very strict error checking which seems really undesirable. With
> kstrto*() functions in place, and assuming there's no objections to
> that, what do you think about a separate patch series to replace all
> of the uses of simple_strto*() with kstrto*() and eventually drop
> majority of simple_strto*() implementation code?
> 
> Thanks,
> Andrey Smirnov

Applied 1-9 for now, see comment to 10/11.

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
