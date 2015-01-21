Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDwss-00063M-SV
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 15:07:55 +0000
Date: Wed, 21 Jan 2015 16:07:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150121150729.GK12209@pengutronix.de>
References: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
 <20150119113939.GD30554@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150119113939.GD30554@ns203013.ovh.net>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let gmac auto detect phy id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 19, 2015 at 12:39:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:54 Mon 19 Jan     , Bo Shen wrote:
> > On the SAMA5D33 and SAMA5D35 the GMAC PHY ID is 1 while not 7.
> > So, let the GMAC auto detect phy id, or else hard code to 7,
> > it can not work on these two boards.
> > 
> > Signed-off-by: Bo Shen <voice.shen@atmel.com>
> > ---
> > 
> >  arch/arm/boards/sama5d3xek/init.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
> > index 49d2b37..0b83147 100644
> > --- a/arch/arm/boards/sama5d3xek/init.c
> > +++ b/arch/arm/boards/sama5d3xek/init.c
> > @@ -123,7 +123,7 @@ static void ek_add_device_nand(void) {}
> >  #if defined(CONFIG_DRIVER_NET_MACB)
> >  static struct macb_platform_data gmac_pdata = {
> >  	.phy_interface = PHY_INTERFACE_MODE_RGMII,
> > -	.phy_addr = 7,
> > +	.phy_addr = -1,
> IIRC the auto detect do not work on all board
> NACK

Please give us some more information why this doesn't work or on which
boards this doesn't work. Rejecting patches with 'IIRC' just blocks the
patch without giving a clue what else should be done.

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
