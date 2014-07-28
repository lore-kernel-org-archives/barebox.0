Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBdLZ-0003h2-0m
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 05:19:42 +0000
Date: Mon, 28 Jul 2014 07:19:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728051916.GQ23235@pengutronix.de>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140725072749.GH23282@pengutronix.de>
 <CABJ1b_RZ1oc1PC0cja7H_NSg5jdqKP_b+zqY9z-SyPeaTxmL4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABJ1b_RZ1oc1PC0cja7H_NSg5jdqKP_b+zqY9z-SyPeaTxmL4A@mail.gmail.com>
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
Subject: Re: [PATCH RESEND 6/6] pci: mvebu: Add PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox <barebox@lists.infradead.org>

On Fri, Jul 25, 2014 at 05:00:36PM +0200, Sebastian Hesselbarth wrote:
> On Fri, Jul 25, 2014 at 9:27 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Jul 23, 2014 at 11:26:08AM +0200, Sebastian Hesselbarth wrote:
> >> This adds a PCI driver for the controllers found on Marvell MVEBU SoCs.
> >> Besides the functional driver itself, it also adds SoC specific PHY
> >> setup required for PCIe. Currently, only Armada 370 is fully supported.
> >>
> >> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >
> > For now I applied 1/6 - 5/6. Are you happy enough with the driver so I
> > can apply it?
> 
> If you already took in the other patches, yes, then it is okay to pick up this
> one, too. It would be nice, if you fixup the one devfn line when applying.
> 
> I can send follow-up patches on whatever is the result of discussion on
> this and the other patches of this series.

Please resend the whole series then. I'll replace the patches.

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
