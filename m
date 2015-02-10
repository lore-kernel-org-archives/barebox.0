Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL7Es-0000AZ-OH
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:36:15 +0000
Date: Tue, 10 Feb 2015 10:35:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150210093551.GX12209@pengutronix.de>
References: <1423552496-8476-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423552496-8476-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] openrisc: barebox.lds.S: fix BFD format names
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 10, 2015 at 10:14:56AM +0300, Antony Pavlov wrote:
> Here is Franck Jullien's comment (see
> http://lists.infradead.org/pipermail/barebox/2015-February/022259.html):
> 
>   > Until now, the official openrisc toolchain was called or32.
>   > However, the new one (and maintained one)  is called or1k. So we need
>   > to change "elf32-or32" to "elf32-or1k" in barebox.lds.S.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Franck Jullien <franck.jullien@gmail.com>

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
