Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbBhz-0003eL-Ox
 for barebox@lists.infradead.org; Sat, 11 May 2013 15:27:40 +0000
Date: Sat, 11 May 2013 17:27:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130511152716.GR32299@pengutronix.de>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH v3 0/7] Basic support for Armada 370/XP SOCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Thu, May 09, 2013 at 11:52:44AM +0200, Thomas Petazzoni wrote:
> 
> Thomas Petazzoni (7):
>   scripts: new kwbimage manipulation tool for Marvell SoC boot images
>   scripts: add kwboot tool
>   arm: initial support for Marvell Armada 370/XP SoCs
>   arm: integrate kwbimage in the image generation
>   arm: add basic support for Armada XP OpenBlocks AX3 platform
>   arm: add basic support for the Armada 370 Mirabox platform
>   arm: add basic support for the Armada XP GP platform
> 

Applied all.

Regarding the commit id from which the kwboot tool has been taken from I
decided to ignore it since the tool hasn't been changed in U-Boot since
the original commit adding it.

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
