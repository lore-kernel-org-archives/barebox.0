Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrjJA-0004WN-EZ
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 06:34:24 +0000
Date: Wed, 26 Jun 2013 08:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130626063401.GO32299@pengutronix.de>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
 <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372157137-7602-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH v2 0/8] DDR2 memory initialisaion
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, Jun 25, 2013 at 11:45:29AM +0100, Renaud Barbier wrote:
> This patch set adds memory initialisation through SPD data for
> Freescale CPUs such as the mpc8544. It is based on U-Boot tree id
> a71d45d706a5b51c34
> 
> Support for DDR1, DDR3 and memory interleaving has been removed as
> the code is aimed at the GEIP DA923RC board. Support for this
> board will be submitted after approval of these patches by the
> barebox community.
> 
> In addition, early I2C read access has been added so that the SPD
> data can be retrieved from the I2C eeprom.

This code won't win beauty prices. However, since my main concern
of having lots of board specific defines in common code are resolved
and this code only touches architecture stuff I should be fine with
it.

There's still a lot of room for improvements. I could probably review
this code to death, but I think we both have better things to do ;)

So let's go for it with the little comment fixed I made inline.

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
