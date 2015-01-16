Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YC15S-0000s3-KP
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 07:12:55 +0000
Date: Fri, 16 Jan 2015 08:12:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150116071232.GC18220@pengutronix.de>
References: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] i.MX6: phytec: Separate SoM specific code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 15, 2015 at 06:32:33PM -0800, Andrey Smirnov wrote:
> Separate SoM(designator PFLA02) specific and base board(designator
> PBAB0x) code into two distinct functions. PHYTEC default environment
> for PHYFLEX references peripherals that may or may not be used on
> custom baseboards used with SoMs. Move the code appending it into a
> separate function that would have effect only for boards explicitly
> claiming compatibility with PHYTEC baseboards.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/phytec-phyflex-imx6/board.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

Applied all, thanks

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
