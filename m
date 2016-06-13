Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCMAr-0003Yz-Pb
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 07:20:42 +0000
Date: Mon, 13 Jun 2016 09:20:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160613072019.GH31666@pengutronix.de>
References: <1465555077-24572-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1465555077-24572-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: dts: add generated files to clean rule
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 10, 2016 at 01:37:57PM +0300, Antony Pavlov wrote:
> This commit is based on Sascha's ARM commits:
> 
>     commit a9e7e68279de3aec38b038211a15a80cfc612c4e
>     Author: Sascha Hauer <s.hauer@pengutronix.de>
>     Date:   Fri Dec 11 08:02:02 2015 +0100
> 
>         ARM: dts: Add *.dtb.lzo to clean files
> 
>     commit f5b552f1fe02a0a39ae859dbc7e7facefe022e3a
>     Author: Sascha Hauer <s.hauer@pengutronix.de>
>     Date:   Fri May 9 09:11:49 2014 +0200
> 
>         ARM: dts: Add generated files to clean rule
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/dts/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
