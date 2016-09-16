Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bko7w-0002Nu-Um
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 08:04:06 +0000
Date: Fri, 16 Sep 2016 10:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160916080341.nfrgznzmi4hudotr@pengutronix.de>
References: <1473919406-19038-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473919406-19038-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] mtd: make sure address-cells/size-cells are set when
 adding partition nodes
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 15, 2016 at 08:03:26AM +0200, Michael Olbrich wrote:
> address-cells/size-cells can either be set to 1 or 2 for 32 or 63 bit
> addresses respectively. Barebox currently writes 32 bit addresses.
> This makes sure that address-cells/size-cells are both set and have the
> correct value.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
> 
> Hi,
> 
> this is just a minor fix. What is really needed it support for 64 bit
> addressing.

Looking at the code this is already implemented. It already creates the
reg property using of_write_number() and honouring of_n_addr_cells() /
of_n_size_cells(). This of course only works when the target device tree
already has the #address-cells and #size-cells properties with the
correct values. So instead of just setting them to hardcoded '1' you
should set them to the desired value, the loop below should do the rest
correctly.

> Also, the bindings documentation says that all partitions
> should be in a 'partitions' sub node. The main question here is probably
> which kernel version introduced these features and what should be supported
> by barebox.

The partitions subnode was introduced with 4.4, so we better do not rely
on the kernel being able to handle it.

What we can and probably should do is to look into the target device tree
if it already has a partitions subnode with compatible = "fixed-partitions"
and if does, use it.

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
