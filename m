Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcNE6-0000Tz-Up
 for barebox@lists.infradead.org; Tue, 10 Nov 2020 06:33:59 +0000
Message-ID: <8df4ad110b83b139381e58bad3e7db82426f9371.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 10 Nov 2020 07:33:53 +0100
In-Reply-To: <907efaaf5e29ed99229c20ad2398e13b26965827.camel@lynxeye.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
 <20201109134430.21156-3-r.czerwinski@pengutronix.de>
 <907efaaf5e29ed99229c20ad2398e13b26965827.camel@lynxeye.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/8] mtd: cfi_flash: allow 0x0 mapping
To: Lucas Stach <dev@lynxeye.de>, barebox@lists.infradead.org

On Mon, 2020-11-09 at 14:52 +0100, Lucas Stach wrote:
> Am Montag, den 09.11.2020, 14:44 +0100 schrieb Rouven Czerwinski:
> > Annotate the different read and write functions with
> > zero_page_{access/faulting}. This allows the cfi_flash driver to be used
> > on the QEMU virt machine with an enabled MMU.
> 
> I don't like this zero-page access allow in a driver at all. If you
> have some free address space somewhere, you could also solve this issue
> by remapping the IO resource to somewhere else in the address space,
> deviating from the 1:1 mapping. The Tegra PCIe host driver does this,
> if you need some inspiration.

I totally agree, remapping the IO region sounds like a much better
choice.

Regards,
Rouven



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
