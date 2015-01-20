Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDSlH-00067D-3U
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 06:58:04 +0000
Date: Tue, 20 Jan 2015 07:57:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150120065741.GF18220@pengutronix.de>
References: <1421700968-758-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421700968-758-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] scripts/checkpatch.pl: don't search for CREDITS when
 checking top_of_kernel_tree()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 19, 2015 at 11:56:08PM +0300, Antony Pavlov wrote:
> The CREDITS file is removed in the commit
> 
>     commit 6570288f2d97d3a3dceb3e631b4e4f4305352dc8
>     Author: Masahiro Yamada <yamada.m@jp.panasonic.com>
>     Date:   Tue Jan 13 14:27:07 2015 +0900
> 
>         Remove the CREDITS file
> 
> But checkpatch.pl still trying to check it presence.
> There is not such CREDITS file and checkpatch.pl exits with
> 'Must be run from the top-level dir. of a kernel tree' message.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

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
