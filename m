Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asP5L-00015t-22
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 06:24:32 +0000
Date: Tue, 19 Apr 2016 08:24:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160419062409.GN9102@pengutronix.de>
References: <1460962611-14084-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460962611-14084-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] ARM: board: phytec-som-am335x: RAM timings for
 phycore-r2 1GB
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, Apr 18, 2016 at 08:56:51AM +0200, Teresa Remmet wrote:
> Add new RAM Timings for phyCORE R2 with MT41K512M16HA-125IT
> 1024MB mounted.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
>  arch/arm/boards/phytec-som-am335x/ram-timings.h | 20 ++++++++++++++++++++
>  images/Makefile.am33xx                          |  6 ++++++
>  3 files changed, 27 insertions(+)

Applied, thanks. The usual question: Can't the new version be
autodetected using bootstrap pins or similar? ;)

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
