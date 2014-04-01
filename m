Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUtFg-0001HU-En
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 07:36:57 +0000
From: Christian Hemp <c.hemp@phytec.de>
In-Reply-To: <20140331084209.GO17250@pengutronix.de>
References: <1394610851-721-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20140313065458.GQ17250@pengutronix.de>
 <20140331084209.GO17250@pengutronix.de>
Date: Tue, 01 Apr 2014 09:36:29 +0200
Message-ID: <1396337789.2240.66.camel@lws-hemp>
Mime-Version: 1.0
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
Subject: Re: [PATCH] i.MX6: bbu: Barebox update support for NAND.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <g.milev@sam-solutions.com>, barebox@lists.infradead.org, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Hello Sascha,

I have tested the patch on three phyCARD-i.MX6 and three phyFLEX-i.MX6
modules without problems.


Christian


Am Montag, den 31.03.2014, 10:42 +0200 schrieb Sascha Hauer:
> On Thu, Mar 13, 2014 at 07:54:58AM +0100, Sascha Hauer wrote:
> > Hi Dmitry,
> > 
> > On Wed, Mar 12, 2014 at 10:54:11AM +0300, Dmitry Lavnikevich wrote:
> > > This patch implements updating barebox on i.MX6 NAND. In userspace
> > > similar task is performed by freescale kobs-ng utility.
> > > To use this bbu profile nand handler should be registered in board
> > > code with 'imx6_bbu_internal_nand_register_handler' function.
> > 
> > I have the very same patch in the queue, it seems we have duplicated
> > some work. As this version has some shortcomings I'll post my version as
> > an alternative implementation. Also I'll try your version on a board I
> > have here on which my version doesn't work (which is the reason I
> > haven't posted my patch yet)
> 
> The NAND boot on our board finally works. It turned out to be a silly
> bug in the DCD table. The DCD table turned off the GPMI clocks which
> of course prevented the ROM from loading the rest of the image.
> 
> I just resent my version of this patch, but included the missing check
> for a valid image and the confirmation question from your version.
> 
> Maybe you could give this a test on your board.
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
