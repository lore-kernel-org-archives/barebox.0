Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X47b9-0002V8-2v
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 12:00:44 +0000
Date: Mon, 7 Jul 2014 14:00:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707120019.GN23235@pengutronix.de>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53BA811B.5080403@ma-info.de>
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

On Mon, Jul 07, 2014 at 01:14:35PM +0200, Frede Florian wrote:
> Hello Rolf,
> 
> thank you very much...
> after I selected the mentioned entry in the menu the problem was solved...
> but the board do not prompt any thing on the UART1... so I do not
> know if barebox is loaded

When using mainline barebox please build the am335x_mlo_defconfig for
the MLO and the am335x_defconfig for the main binary. The images
are then found under:

images/barebox-am33xx-phytec-phycore-mlo.img
images/barebox-am33xx-phytec-phycore.img

I diffed you config against the mainline config and the following
options are really crucial to let the binary work correctly:

-CONFIG_TEXT_BASE=0x0
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
+CONFIG_TEXT_BASE=0x402F0400
+CONFIG_STACK_SIZE=0x1600
+CONFIG_MALLOC_SIZE=0x1000000

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
