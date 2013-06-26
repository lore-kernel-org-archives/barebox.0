Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrjBb-0004QX-2s
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 06:26:36 +0000
Date: Wed, 26 Jun 2013 08:26:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130626062611.GN32299@pengutronix.de>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
 <1372157137-7602-2-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372157137-7602-2-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/8] common: DDR2 SPD checksum.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Tue, Jun 25, 2013 at 11:45:30AM +0100, Renaud Barbier wrote:
> This commit adds support to calculate the DDR2 SPD checksum as per
> JEDEC standard No 21-C Appendix X (revision 1.2)

This code is from U-Boot. Please say so in the commit message, possibly
also which commit you used. Also for the other patches. Wolfgang once
complained about not doing so for code we used from U-Boot.

> +uint32_t ddr2_spd_check(const struct ddr2_spd_eeprom_s *spd)

The function name is a poor choice as it doesn't give a clue about its
return value. Does it return 'Yes, the check failed" or "Yes, the check
is ok"?. Please rename to something like ddr2_spd_checksum_ok.

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
