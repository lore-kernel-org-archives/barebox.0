Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubs7u-0004TW-Ot
 for barebox@lists.infradead.org; Mon, 13 May 2013 12:45:15 +0000
Date: Mon, 13 May 2013 14:44:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513124452.GR32299@pengutronix.de>
References: <20130513045912.GB32299@pengutronix.de>
 <em693f4276-887c-4945-ba22-230c24dc89b1@plh001-think>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <em693f4276-887c-4945-ba22-230c24dc89b1@plh001-think>
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
Subject: Re: Error when starting kernel with devicetree on tx53
To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: barebox@lists.infradead.org

On Mon, May 13, 2013 at 08:43:58AM +0000, Dr. Patrick Langfeld wrote:
> Thanks Sascha,
> but whats wrong with the devicetree blob?
> I mean the same dtb is working, when I boot the board with uboot.
> 
> I use ptxdist to build the kernel image and to build the tx53.dtb
> from tx53.dts
> 
> Are there some special settings to build the dtb for use with barebox?
> 
> What can be wrong with the dtb.

A dtb must have 0xd00dfeed (big endian) in the first 4 bytes. Your dtb
seems to have 0x0000f085 instead so barebox doesn't recognize this as
dtb.

You could do a:

md -s /mnt/tftp/tx53.dtb

on the commandline. You should see the magic.

Then afterwards you can add the following to commands/bootm.c just below
the line printing "...is not an oftree but...":

	memory_display(fdt, 0, 0x100, 4, 0);

The result should be identical and both should have 0xedfe0dd0 as the
first value.

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
