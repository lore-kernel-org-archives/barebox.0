Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScgZF-0006R9-Oi
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 17:32:18 +0000
Date: Thu, 7 Jun 2012 19:32:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120607173213.GJ30400@pengutronix.de>
References: <1338998700-23012-1-git-send-email-js@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/5] minor SPI flash fixes
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

Hi Johannes,

On Wed, Jun 06, 2012 at 06:04:55PM +0200, Johannes Stezenbach wrote:
> Hi,
> 
> I'm playing around with barebox on an ARM926EJ-S based board
> with SPI flash.  I found a few minor but annoying issues
> with erase handling (I inadvertantly erased my boot loader).

Nice fixes. Applied to master.

Thanks

 Sascha

> 
> Johannes
> 
> 
>  drivers/nor/m25p80.c |    8 ++++++--
>  fs/devfs.c           |    3 +++
>  fs/fs.c              |   18 ++++++++----------
>  3 files changed, 17 insertions(+), 12 deletions(-)
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
