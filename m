Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAwSa-00022C-Q9
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:04:21 +0000
Date: Tue, 13 Jan 2015 09:03:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150113080359.GY23940@pengutronix.de>
References: <1421131998-7614-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421131998-7614-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] kbuild: arm: Do not define "comma" twice
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 13, 2015 at 03:53:18PM +0900, Masahiro Yamada wrote:
> The definition of "comma" exists in scripts/Kbuild.include.
> We should not double it.
> 
> Note:
> This was already fixed in Linux Kernel too.
> See commit 226422d08c33 of Linux Kernel.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>

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
