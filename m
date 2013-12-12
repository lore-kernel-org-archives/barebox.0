Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr25v-00062c-OU
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 08:58:08 +0000
Date: Thu, 12 Dec 2013 09:57:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212085745.GK24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-6-git-send-email-eric@eukrea.com>
 <20131209133716.GM27628@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209133716.GM27628@ns203013.ovh.net>
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
Subject: Re: [PATCH 6/7] sama5d3xek: add NOR CFI support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2013 at 02:37:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +
> > +	clk_enable(clk);
> > +
> > +	/* configure chip-select 0 (NOR) */
> > +	sama5_smc_configure(0, 0, &cm_nor_smc_config);
> > +
> > +	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 256 * 1024 * 1024, 0);
> no put the right size or 0 for auto detect not 256MiB

'0' only works because the cfi flash driver completely ignores the
resource size. If 256MiB is the maximum flash size or the size of this
particular chipselect I see nothing wrong in assigning 256MiB to the
device.

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
