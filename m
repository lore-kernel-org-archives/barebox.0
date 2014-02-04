Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAaD3-0005rP-20
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:14:17 +0000
Date: Tue, 4 Feb 2014 08:13:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140204071353.GO16215@pengutronix.de>
References: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/2] DA923RC: boot script and malloc size
To: Renaud Barbier <renaud.barbier@ge.com>, h@pengutronix.de
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2014 at 03:08:23PM +0000, Renaud Barbier wrote:
> A boot script is added to autoboot the system and the malloc size is
> increased in the configuration file to allow larger Linux debug images.
> 
> Renaud Barbier (2):
>   DA923RC: add boot script
>   DA923RC: increase malloc size

Applied, thanks

Sascha

> 
>  arch/ppc/boards/geip-da923rc/env/bin/boot |    9 +++++++++
>  arch/ppc/boards/geip-da923rc/env/bin/init |   10 ++++++++++
>  arch/ppc/configs/da923rc_defconfig        |    2 +-
>  3 files changed, 20 insertions(+), 1 deletions(-)
>  create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/boot
> 
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
