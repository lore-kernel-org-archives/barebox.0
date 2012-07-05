Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Smsiq-0007Sz-29
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 20:32:41 +0000
Date: Thu, 5 Jul 2012 22:32:08 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120705223208.24dc9bad@eb-e6520>
In-Reply-To: <20120705190240.GY30009@pengutronix.de>
References: <1341483767-20487-1-git-send-email-eric@eukrea.com>
 <1341483767-20487-2-git-send-email-eric@eukrea.com>
 <20120705190240.GY30009@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] nand_base: add ONFI flash detection
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Thu, 5 Jul 2012 21:02:40 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > -	printk(KERN_INFO "NAND device: Manufacturer ID:"
> > -	       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id, dev_id,
> > -	       nand_manuf_ids[maf_idx].name, type->name);
> > +	printk("NAND device: Manufacturer ID: 0x%02x, Chip ID: 0x%02x (%s %s)=
,"
> > +		" page size: %d, OOB size: %d\n",
> > +		*maf_id, dev_id, nand_manuf_ids[maf_idx].name,
> > +		chip->onfi_version ? chip->onfi_params.model : type->name,
> > +		mtd->writesize, mtd->oobsize);
> =

> Do we need to output writesize and oobsize here? 'devinfo nand0' will
> give the same information.
> =

that's the way it's done in the kernel so I imported the log update.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
