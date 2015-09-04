Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXmbv-0001oH-8J
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 08:44:40 +0000
Date: Fri, 4 Sep 2015 10:44:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150904084415.GU18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-4-git-send-email-antonynpavlov@gmail.com>
 <20150828063432.GA18700@pengutronix.de>
 <20150828184614.d0ec3d17f1800be9093f7fa3@gmail.com>
 <20150904062048.GT18700@pengutronix.de>
 <20150904102740.4a6f5b564126416e83c98a5b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150904102740.4a6f5b564126416e83c98a5b@gmail.com>
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
Subject: Re: [RFC 3/9] MIPS: add virt_to_phys() and phys_to_virt()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, Sep 04, 2015 at 10:27:40AM +0300, Antony Pavlov wrote:
> On Fri, 4 Sep 2015 08:20:48 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Fri, Aug 28, 2015 at 06:46:14PM +0300, Antony Pavlov wrote:
> > > On Fri, 28 Aug 2015 08:34:32 +0200
> > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > 
> > > > On Fri, Aug 28, 2015 at 01:24:04AM +0300, Antony Pavlov wrote:
> > > > > N.B. phys_to_virt() translates phys address
> > > > > to KSEG1 (uncached) address as barebox mips
> > > > > has no cache support.
> > > > 
> > > > What would it take to implement cache support for mips?
> > > lack of the cache support is critical problem for current barebox mips support.
> > > I'm planning to add cache support in several weeks.
> > > This task needs much test efforts for different boards.
> > > 
> > > Anyway I can't carry out cache adding work at one.
> > > But adding virt_to_phys and DMA support will help to add cache support one day anyway.
> > 
> > Looking at this again the virt_to_phys/phys_to_virt macros are not
> > necessary. dma_alloc_coherent() already returns both the virtual address
> > and the DMA address. It should be possible to replace DMA_ADDRESS_BROKEN
> > in the ehci driver with a real pointer and use it appropriatly in the
> > driver.
> 
> Here is a fragment of drivers/usb/host/ehci-hcd.c:
> 
>     while (td != (void *)QT_NEXT_TERMINATE) {
>            qh->qt_next = td->qt_next;
>            td = (void *)hc32_to_cpu(qh->qt_next);
>     }
> 
> 
> qh->qt_next contains physical memory address for EHCI controller,
> so after 'td = (void *)hc32_to_cpu(qh->qt_next)' contains physical address.
> 
> But latter we can use 'td->qt_next'. If physical address != virtual address
> then we will fail. So we need addition phys_to_virt() call here.

The problem with the ehci driver is that it uses qt_next pointers in the
driver to iterate over the TDs. qt_next is meant for the ehci hardware,
not for the software. What we need is an additional struct qTD *vqt_next
field in both struct qTD and struct QH for software iteration over the
list of TDs.

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
