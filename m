Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9UNE-0007Hd-QS
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:20:34 +0000
Received: by mail-yk0-f173.google.com with SMTP id 131so4659518ykp.18
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:20:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53CCDE8A.8010608@ma-info.de>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de>
 <20140707120019.GN23235@pengutronix.de>
 <899032957.1340888.1404736162014.open-xchange@oxbsltgw04.schlund.de>
 <53BBBA05.6090403@ma-info.de>
 <1404813679.8953.12.camel@lws-gamez.phytec.de>
 <alpine.DEB.2.10.1407090838160.10300@9VTHT2J-D520>
 <53BD3649.6040408@ma-info.de> <53CCDE8A.8010608@ma-info.de>
Date: Tue, 22 Jul 2014 09:20:10 +0200
Message-ID: <CAOpc7mHYF7eRr7AbKQfUOtJgeVTs2=xz=jcRBjs=FK9Ay_QQ+g@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> * For NAND support it is important to enable *CONFIG_BUS_OMAP_GPMC*

If this is something that is mandatory for the board, maybe the board
should then select it in the Kconfig?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
