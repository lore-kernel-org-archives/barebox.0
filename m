Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0kyP-0003fG-1y
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 06:51:38 +0000
Date: Mon, 23 Nov 2015 07:51:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123065112.GM11966@pengutronix.de>
References: <1447992968-14149-1-git-send-email-cobham.jason@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447992968-14149-1-git-send-email-cobham.jason@gmail.com>
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
Subject: Re: [PATCH v2] Add support for Digi ConnectCore ccxmx53 board.
To: Jason Cobham <cobham.jason@gmail.com>
Cc: barebox@lists.infradead.org

Hi Jason,

On Thu, Nov 19, 2015 at 08:16:08PM -0800, Jason Cobham wrote:
> Based on the i.MX53 SoC. Tested with a 512M and 1GB module on a JSK dev board.
> 
> This v2 patch addresses the suggested v1 comments:
> - device tree mmc bus width is configured correctly
> - ARCH_TEXT_BASE define is not necessary
> - fec phy reset pin configured in device tree
> - simplify board_init
> - single patch
> 
> Signed-off-by: Jason Cobham <cobham.jason@gmail.com>

Applied, thanks

I cleaned up several whitespace issues. Please run through
scripts/checkpatch.pl next time before posting.

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
