Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UrPWq-0004tL-4a
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:27:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UrPWT-0006uU-3P
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 11:26:49 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UrPWT-0007OH-28
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 11:26:49 +0200
Date: Tue, 25 Jun 2013 11:26:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130625092649.GG32299@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] barebox multi image support
To: barebox@lists.infradead.org

On Tue, Jun 25, 2013 at 11:20:40AM +0200, Sascha Hauer wrote:
> This series adds support for generating multiple images from a single
> barebox binary. This helps when for example boards come with different
> SDRAM setups. Instead of having a config for each SDRAM setup we only
> have a single configuration, but generate multiple images from it.
> 
> The basic idea behind this is using a PBL. As of now the PBL on ARM
> has a single entrypoint: barebox_arm_entry.

s/barebox_arm_entry/barebox_arm_reset_vector/

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
