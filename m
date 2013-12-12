Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr2xT-00079f-4d
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 09:53:29 +0000
Date: Thu, 12 Dec 2013 10:52:55 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20131212105255.2a49d5bd@e6520eb>
In-Reply-To: <20131212085745.GK24559@pengutronix.de>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-6-git-send-email-eric@eukrea.com>
 <20131209133716.GM27628@ns203013.ovh.net>
 <20131212085745.GK24559@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] sama5d3xek: add NOR CFI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Thu, 12 Dec 2013 09:57:45 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Mon, Dec 09, 2013 at 02:37:16PM +0100, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > > +
> > > +	clk_enable(clk);
> > > +
> > > +	/* configure chip-select 0 (NOR) */
> > > +	sama5_smc_configure(0, 0, &cm_nor_smc_config);
> > > +
> > > +	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 256 * 1024 * 1024, 0);
> > no put the right size or 0 for auto detect not 256MiB
> =

> '0' only works because the cfi flash driver completely ignores the
> resource size. If 256MiB is the maximum flash size or the size of this
> particular chipselect I see nothing wrong in assigning 256MiB to the
> device.
> =

256MiB is the maximul size this chip select can address

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
