Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4SDf-0006Hg-Oh
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 10:01:52 +0000
Message-ID: <1404813679.8953.12.camel@lws-gamez.phytec.de>
From: Teresa Gamez <t.gamez@phytec.de>
Date: Tue, 08 Jul 2014 12:01:19 +0200
In-Reply-To: <53BBBA05.6090403@ma-info.de>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de> <20140707120019.GN23235@pengutronix.de>
 <899032957.1340888.1404736162014.open-xchange@oxbsltgw04.schlund.de>
 <53BBBA05.6090403@ma-info.de>
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
Subject: Re: Problems with pyhBoard-Wega-AM335x
To: Frede Florian <florian.frede@ma-info.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

Hello Florian,

I guess you having the default kit WEGA, which does have 256MB RAM. The mainline supported
phyCORE Kit does have 512MB. Thats probably why it does not start up.

I'll have a look at it.

Teresa


Am Dienstag, den 08.07.2014, 11:29 +0200 schrieb Frede Florian:
> Hello Rolf,
> Hello Sascha,
> 
> I tried your hints... but I don't get the prompt ">" after a while my 
> Desktop-PC say that a Ethernet connection is established thats all I can 
> not ping or connect to the pyhBoard-Wega-AM335x. But nothing is 
> transmitted on the Evaluation Board (PEB-EVAL-01). Do I need some 
> patches or something else?
> 
> Sorry but I have no idea which information I can send you to help me 
> with my problem...
> 
> Thanks again
> 
> Florian
> 
> Am 07.07.2014 14:29, schrieb Rolf Evers-Fischer:
> > Hello Florian,
> >
> >> Sascha Hauer <s.hauer@pengutronix.de> hat am 7. Juli 2014 um 14:00
> >> geschrieben:
> >>
> >>
> >> On Mon, Jul 07, 2014 at 01:14:35PM +0200, Frede Florian wrote:
> >>> Hello Rolf,
> >>>
> >>> thank you very much...
> >>> after I selected the mentioned entry in the menu the problem was solved...
> >>> but the board do not prompt any thing on the UART1... so I do not
> >>> know if barebox is loaded
> >> When using mainline barebox please build the am335x_mlo_defconfig for
> >> the MLO and the am335x_defconfig for the main binary. The images
> >> are then found under:
> >>
> >> images/barebox-am33xx-phytec-phycore-mlo.img
> >> images/barebox-am33xx-phytec-phycore.img
> >>
> >> I diffed you config against the mainline config and the following
> >> options are really crucial to let the binary work correctly:
> >>
> >> -CONFIG_TEXT_BASE=0x0
> >> -CONFIG_MALLOC_SIZE=0x0
> >> -CONFIG_MALLOC_TLSF=y
> >> -CONFIG_RELOCATABLE=y
> >> +CONFIG_TEXT_BASE=0x402F0400
> >> +CONFIG_STACK_SIZE=0x1600
> >> +CONFIG_MALLOC_SIZE=0x1000000
> >>
> > in fact, these settings are essential.
> > If you still can't see anything, you can also enable the config item "Debugging"
> > -> "low level debug messages". With this option enabled, you should at least see
> > a '>' on UART1 right after power-on. This character will be output at the end of
> > function pcm051_board_init().
> > If you like to debug the further startup, you could also enable the "Debugging"
> > -> "Trace initcalls" option in barebox_mlo config.
> >
> > Best regards,
> >   Rolf
> >
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
