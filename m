Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGX5L-0003Ta-SU
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 16:34:40 +0000
Message-ID: <5224BE03.40306@ge.com>
Date: Mon, 02 Sep 2013 17:34:11 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1377869669-27821-1-git-send-email-renaud.barbier@ge.com>
 <1377869669-27821-3-git-send-email-renaud.barbier@ge.com>
 <20130902084912.GP30088@pengutronix.de>
In-Reply-To: <20130902084912.GP30088@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ppc: add mpc85xx device tree fixup functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/09/2013 09:49, Sascha Hauer wrote:
> Hi Renaud,
> 
> On Fri, Aug 30, 2013 at 02:34:27PM +0100, Renaud Barbier wrote:
>> > +/* These properties specify whether the hardware supports the stashing
>> > + * of buffer descriptors in L2 cache.
>> > + */
>> > +static void fdt_add_enet_stashing(void *fdt)
>> > +{
>> > +	struct device_node *node;
>> > +
>> > +	node = of_find_compatible_node(fdt, NULL, "gianfar");
>> > +	while (node) {
>> > +		of_set_property(node, "bd-stash", NULL, 0, 1);
>> > +		of_property_write_u32(node, "rx-stash-len", 96);
>> > +		of_property_write_u32(node, "rx-stash-idx", 0);
>> > +		node = of_find_compatible_node(node, NULL, "gianfar");
>> > +	}
>> > +}
> Out of curiosity, why is this dynamically added and not part of the
> static dts file?
> 

I will have to quote the original comment from U-Boot as I cannot find
a reasonable explanation why it is done this way.


Original U-boot commit:
Date:   Tue Oct 7 08:09:50 2008 -0500
Have u-boot pass stashing parameters into device tree

Some cores don't support ethernet stashing at all, and some
instances have errata.  Adds 3 properties to gianfar nodes
which support stashing.  For now, just add this support to
85xx SoCs.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
