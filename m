Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X47fh-0003ZA-Ax
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 12:05:25 +0000
Date: Mon, 7 Jul 2014 08:04:55 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20140707120019.GN23235@pengutronix.de>
Message-ID: <alpine.LFD.2.11.1407070803160.7478@localhost>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de> <20140707120019.GN23235@pengutronix.de>
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
Subject: Re: Problems with pyhBoard-Wega-AM335x
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rolf Evers-Fischer <embedded24@evers-fischer.de>, barebox@lists.infradead.org

On Mon, 7 Jul 2014, Sascha Hauer wrote:

> On Mon, Jul 07, 2014 at 01:14:35PM +0200, Frede Florian wrote:
> > Hello Rolf,
> >
> > thank you very much...
> > after I selected the mentioned entry in the menu the problem was solved...
> > but the board do not prompt any thing on the UART1... so I do not
> > know if barebox is loaded
>
> When using mainline barebox please build the am335x_mlo_defconfig for
> the MLO and the am335x_defconfig for the main binary. The images
> are then found under:

  from memory, i noticed earlier that when i configured for
am335x_defconfig, then did "make menuconfig", i was asked whether i
wanted to build the MLO file as well. does that mean i can generate
both the MLO and second stage from a single build? or am i
misunderstanding what i saw?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
