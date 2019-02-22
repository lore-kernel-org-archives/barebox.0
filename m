Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5Ey-0006tM-2n
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:27:25 +0000
Date: Fri, 22 Feb 2019 08:27:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222072721.eoeqhmb2shsqognh@pengutronix.de>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/25] i.MX8MQ USB support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 11:29:05PM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This series contains changes I made while working on adding USB
> support for ZII i.MX8MQ boards. There are several distinct parts in
> this series:
> 
>  1. xHCI fixes, features and improvements
>  2. PHY driver deferral support
>  3. i.MX8MQ USB PHY driver
>  4. DWC3 USB support and related patches
>  5. USB251x USB hub and related patches
> 
> First four are neccessary for i.MX8MQ in general and last part is ZII
> specific only. Hopefully all patches are self explanatory.
> 
> Tested on ZII i.MX8MQ boards.
> 
> Feedback is welcome!

Nice work. That'll safe me some time when adding USB support for
Layerscape ;)

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
