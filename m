Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTdg-0001mN-EF
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:36:25 +0000
Date: Sun, 12 May 2013 12:36:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512103601.GY32299@pengutronix.de>
References: <1368214340-23493-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368214340-23493-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] tegra20: add Colibri T20 on Iris
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On Fri, May 10, 2013 at 09:32:20PM +0200, Lucas Stach wrote:
> This adds the initial devicetree files for the Colibri T20 module on an
> Iris carrier board.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

This (and the one before) do not compile since CONFIG_BUILTIN_DTB_NAME
is empty. Until we find a way to build multiple images (I'm working on
that) we still have to use one defconfig per board. With multiple images
support we could have a single tegra defconfig and just append different
dtbs and generate different board images from a single binary.

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
