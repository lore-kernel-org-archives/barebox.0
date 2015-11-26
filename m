Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a1s4Q-0005ql-TI
 for barebox@lists.infradead.org; Thu, 26 Nov 2015 08:38:27 +0000
Date: Thu, 26 Nov 2015 09:38:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151126083804.GI11966@pengutronix.de>
References: <1448454202-1133-1-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448454202-1133-1-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH] MIPS: import optimized string functions from Linux
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, Nov 25, 2015 at 03:23:22PM +0300, Aleksey Kuleshov wrote:
> 10x performance gain according to simple test on QEMU malta:
> barebox:/ time memcpy 0xa0000000 0xa0001000 0x100000
> 
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>

Applied with Antonys Ack

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
