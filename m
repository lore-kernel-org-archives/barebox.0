Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvgGw-0002jS-Eg
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 06:49:47 +0000
Date: Mon, 9 Nov 2015 07:49:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151109064924.GU8526@pengutronix.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH 00/10] Rework towards phytec-som-imx6 and new variants
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Fri, Nov 06, 2015 at 11:21:48AM +0100, Stefan Christ wrote:
> Hi,
> 
> the patchstack first refactors the phyCARD-i.MX6 and phyFLEX-i.MX6 to a common
> phytec-som-imx6. Then some phyFLEX-i.MX6 variants and the new phyCORE-i.MX6 are
> added plus some environment updates and one image rename patch.
>

The Phytec i.MX6 boards all have an EEPROM, right? Does it have the
memory setup encoded somewhere? It gets increasingly hard picking the
right image for the Phytec boards.

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
