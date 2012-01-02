Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgS1-0004r9-PI
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:53:14 +0000
Date: Mon, 2 Jan 2012 12:53:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120102115305.GN27267@pengutronix.de>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
 <20111231082920.GB16816@game.jcrosoft.org> <877h1cua95.fsf@free.fr>
 <20111231141352.GA945@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111231141352.GA945@game.jcrosoft.org>
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
Subject: Re: [PATCH V4 1/7] drivers/mtd: move nand.c into core.c
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 31, 2011 at 03:13:52PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:43 Sat 31 Dec     , Robert Jarzmik wrote:
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> > 
> > > On 22:30 Wed 21 Dec     , Robert Jarzmik wrote:
> > >> Move nand core into the global MTD core.
> > >> 
> > >> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> > >> ---
> > > the nand support is broken
> > Hi Jean-Christophe,
> > 
> > Sasha tested it on his pcm043 board, and everything worked fine.
> > Could you be more specific when you say "NAND support is broken" ? Which board,
> > which NAND, which barebox tree (today's next ?), and which commands do you input
> > that make you say "doesn't work" ?
> impossible to write on the bb file
> correctly

Is this fixed by the patch you sent?

mtd/core.c: fix MTDPGALG

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
