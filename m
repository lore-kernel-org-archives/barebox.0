Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X47qo-0000BB-5T
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 12:16:54 +0000
Date: Mon, 7 Jul 2014 14:16:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707121630.GP23235@pengutronix.de>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de>
 <20140707120019.GN23235@pengutronix.de>
 <alpine.LFD.2.11.1407070803160.7478@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407070803160.7478@localhost>
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
Subject: Re: Problems with pyhBoard-Wega-AM335x
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Rolf Evers-Fischer <embedded24@evers-fischer.de>, barebox@lists.infradead.org

On Mon, Jul 07, 2014 at 08:04:55AM -0400, Robert P. J. Day wrote:
> On Mon, 7 Jul 2014, Sascha Hauer wrote:
> 
> > On Mon, Jul 07, 2014 at 01:14:35PM +0200, Frede Florian wrote:
> > > Hello Rolf,
> > >
> > > thank you very much...
> > > after I selected the mentioned entry in the menu the problem was solved...
> > > but the board do not prompt any thing on the UART1... so I do not
> > > know if barebox is loaded
> >
> > When using mainline barebox please build the am335x_mlo_defconfig for
> > the MLO and the am335x_defconfig for the main binary. The images
> > are then found under:
> 
>   from memory, i noticed earlier that when i configured for
> am335x_defconfig, then did "make menuconfig", i was asked whether i
> wanted to build the MLO file as well. does that mean i can generate
> both the MLO and second stage from a single build? or am i
> misunderstanding what i saw?

The option has no effect when OMAP_MULTI_BOARDS is enabled which is the
case for the am335x boards. I just sent out a patch to hide the options.

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
