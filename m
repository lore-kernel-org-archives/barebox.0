Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwuXd-0004md-U1
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:34:46 +0000
Date: Wed, 10 Jul 2013 15:34:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710133424.GG516@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
 <1373453528-3723-9-git-send-email-s.hauer@pengutronix.de>
 <14050E29-1044-43D1-B240-2AE619C18CA6@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14050E29-1044-43D1-B240-2AE619C18CA6@jcrosoft.com>
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
Subject: Re: [PATCH 8/9] Add configurability via devicetree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 09:17:03PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > +Required properties:
> > +
> > +- compatible: should be "barebox,partition"
> > +- device-path: should contain a nodepath to the physical device for which
> > +               this device provides a partitioning
> > +- #address-cells, #size-cells: number of cells for size/addresses in the
> > +                               partitions
> > +
> > +Partition properties:
> > +
> > +- reg: The partition's offset and size
> > +- label: The label/name for this partition
> > +- read-only: if present, the partition is read-only
> > +
> > +Example:
> > +
> > +nor-partitions {
> > +	compatible = "barebox,partition";
> > +	device-path = &flash;
> > +	#address-cells = <1>;
> > +	#size-cells = <1>;
> > +
> > +	partition@0 {
> > +		label = "barebox";
> > +		reg = <0x0 0x80000>;
> > +	};
> > +
> > +	partition@1 {
> > +		label = "barebox-environment";
> > +		reg = <0x80000 0x80000>;
> > +	};
> > +};
> 
> This is duplicate with the mtd partition, isn't?

It's the same binding, yes.

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
