Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JeE-000745-TP
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 13:24:04 +0000
Date: Mon, 9 Sep 2019 15:23:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909132359.ecqgi4vuwtb62lru@pengutronix.de>
References: <20190909093130.30666-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909093130.30666-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v2 0/3] sandbox: add HWRNG driver for host /dev/random
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Sep 09, 2019 at 11:31:27AM +0200, Ahmad Fatoum wrote:
> This series is useful for testing/using barebox,state on sandbox and for
> use of host entropy while generating passwords for the target system.
> They are in the same series, because the first commit adds linux_open,
> which the last depends on.
> 
> v1 -> v2:
>   - split off example sandbox state device tree into seperate commit
>   - renamed device tree example to end with -example.dts
> 
> Ahmad Fatoum (3):
>   sandbox: hostfile: allow probing from device tree
>   sandbox: dts: add example for barebox,hostfile backed state
>   hwrng: add sandbox driver interface to host /dev/random

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
