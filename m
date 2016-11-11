Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c5767-0007Ek-8I
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 08:22:08 +0000
Date: Fri, 11 Nov 2016 09:21:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161111082142.kaagvvkly7alx4cc@pengutronix.de>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/28] Vybrid support in Barebox
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Wed, Nov 09, 2016 at 08:13:48AM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> It took me a bit more than a month, but I finally put together a
> second version (for v1 see [1]) of the Vybrid support patchset.
> 
> Some highlights of this version:
> 
>      - Various code/commit arrangement feedback for v1 is addressed
>      - Added commit to move all of the i.MX clock code to drivers/clk
>        (Sascha, we'd probably have to coordinate with your i.MX6ul
>        patches on this one)
>      - I2C commit split in two
>      - clock tree is reconciled with Linux code, since having a custom
>        version of it proved to be difficult to compare agains Linux's
>        implementation
>      - GPIO driver (tested on a custom Vybrid board)
>      - FEC support (tested on a custom Vybrid board)
> 
> Any feedback is, as always, very much appreciated.

The series looks mostly good, but I won't find the time for a deeper
review anytime soon, so I decided to just give it a try in -next.

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
