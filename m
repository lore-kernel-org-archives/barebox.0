Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmePh-0007FC-2Q
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 09:01:29 +0000
Date: Thu, 15 Oct 2015 11:00:37 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20151015110037.7bfef9ab@free-electrons.com>
In-Reply-To: <1444897136-25028-3-git-send-email-s.hauer@pengutronix.de>
References: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
 <1444897136-25028-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/3] scripts/kwbimage: Make BINARY files relative to
 config file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Sascha,

On Thu, 15 Oct 2015 10:18:55 +0200, Sascha Hauer wrote:
> The BINARY files given in the config files are expected to be relative
> to the place kwbimage is called from. This is bad since it breaks where
> kwbimage is called from the build directory and not the source
> directory.
> It makes more sense to make the paths in the config files relative
> to the config files which works with out of tree builds and is also
> more what a user normally expects.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

In practice those binary.0 files are not really part of the Barebox
source code. The binary.0 file has to be extracted from a vendor U-Boot
binary prior to doing the Barebox build, so it isn't exactly part of
the "source tree".

Though I agree it is probably easier to extract them once and keep them
around in the source tree (not checked-in, of course).

Note that U-Boot now has a fully open-source implementation of this
binary.0 thing, at least for Armada XP and Armada 38x. However, it's
basically copy/pasted from the vendor U-Boot, so it's not very pretty
to look at:

 - http://git.denx.de/?p=u-boot.git;a=tree;f=drivers/ddr/marvell
   for the DDR initialization code.

 - http://git.denx.de/?p=u-boot.git;a=tree;f=arch/arm/mach-mvebu/serdes
   for the SERDES lane initialization

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
