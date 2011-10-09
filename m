Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCppH-0000VR-BF
	for barebox@lists.infradead.org; Sun, 09 Oct 2011 09:37:44 +0000
Date: Sun, 9 Oct 2011 11:37:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111009093738.GN31404@pengutronix.de>
References: <20111008141722.GG10459@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/5] Multi uImage support on ARM
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 08, 2011 at 04:17:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	This the final patch seires to add the Multi uImage support to
> 	barebox
> 
> 	This does not support yet the script type but allow us to boot a uImage
> 	with a kernel and an initrd inside
> 
> 	It will be easy to add the DT support too
> 
> 	And enable it on arm.
> 
> Jean-Christophe PLAGNIOL-VILLARD (5):
>       bootm: ensure the uImage is mapped first to allow option to used it
>       get_fake_image_handle: set nb_data_entries to 1 and update the header size
>       bootm: add -L option to specify the initrd load address
>       arm/bootm: enable multi uimage support
>       defaultenv: add bootm_opt var to allow the board to pass parameter to bootm

Applied to next.

Sascha

> 
>  arch/arm/lib/bootm.c |    5 -----
>  commands/bootm.c     |   42 +++++++++++++++++++++++++++++++++++-------
>  defaultenv/bin/boot  |    2 +-
>  3 files changed, 36 insertions(+), 13 deletions(-)
> 
> Best Regards,
> J.
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
