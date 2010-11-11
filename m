Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGPjb-0003hc-65
	for barebox@lists.infradead.org; Thu, 11 Nov 2010 05:30:07 +0000
Date: Thu, 11 Nov 2010 06:26:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101111052641.GG20823@game.jcrosoft.org>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: add i.MX51 Nand support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:53 Wed 10 Nov     , Sascha Hauer wrote:
> Hi all,
> 
> The following series is a respin of the series adding i.MX51 Nand support
> to the kernel for barebox.
> 
> The series reveals to problems in barebox. First the i.MX51 Nand controller
> needs two memory resources. Since I know that Jean-Christophe recently
> worked on adding resources to barebox I decided for a hack in the driver
> for now: I just hardcoded the second base address. Second the current
> implementation of dma_alloc_coherent stinks. The implementation simply
> maps the whole SDRAM a second time uncached. This way we can use the
> normal malloc function to allocate dma coherent memory and just add
> a known offset to the returned pointer. On i.MX51 boards with 512MB SDRAM
> we do not have enough space in the memory map to map the SDRAM twice, in
> my case the mapping shadowed the Nand register space. Be aware of this
> when you try to add Nand support to your i.MX51 board and use the babbage
> code as a template.
I'll try to push the code today for the ressource
because as for the i.MX51 I need multiple ressource for sh4 for USB as example

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
