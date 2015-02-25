Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQWW6-0006KM-Dy
 for barebox@lists.infradead.org; Wed, 25 Feb 2015 07:36:23 +0000
Date: Wed, 25 Feb 2015 08:36:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150225073600.GT12209@pengutronix.de>
References: <1424789630-10461-1-git-send-email-m.olbrich@pengutronix.de>
 <1424789630-10461-2-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424789630-10461-2-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 2/3] friendlyarm-mini2440: add support for the W35 display
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 24, 2015 at 03:53:49PM +0100, Michael Olbrich wrote:
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
> 
> I'm not quite sure about the sync flags. I tried to match what the kernel
> does and it looks correct here.
> 
> Michael
> 
>  arch/arm/boards/friendlyarm-mini2440/Kconfig    |  6 ++++++
>  arch/arm/boards/friendlyarm-mini2440/mini2440.c | 17 +++++++++++++++++
>  2 files changed, 23 insertions(+)

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
