Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4lfT-0003fN-Fb
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 06:47:52 +0000
Date: Wed, 9 Jul 2014 08:47:19 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
In-Reply-To: <1404813679.8953.12.camel@lws-gamez.phytec.de>
Message-ID: <alpine.DEB.2.10.1407090838160.10300@9VTHT2J-D520>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de> <20140707120019.GN23235@pengutronix.de>
 <899032957.1340888.1404736162014.open-xchange@oxbsltgw04.schlund.de>
 <53BBBA05.6090403@ma-info.de> <1404813679.8953.12.camel@lws-gamez.phytec.de>
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
To: Teresa Gamez <t.gamez@phytec.de>
Cc: Rolf Evers-Fischer <embedded24@evers-fischer.de>, barebox@lists.infradead.org

Hello Florian,

On Tue, 8 Jul 2014, Teresa Gamez wrote:

> Hello Florian,
> 
> I guess you having the default kit WEGA, which does have 256MB RAM. The mainline supported
> phyCORE Kit does have 512MB. Thats probably why it does not start up.
> 
> I'll have a look at it.
> 
> Teresa
> 
I'm not 100% sure, but I can imagine that the ">" should also appear when 
the SDRAM configuration is not correct. But nevertheless the correct 
SDRAM setting is important. Maybe, you can check the SDRAM setting of your 
previous barebox-2013.11. I assume, the old barebox was running properly, 
wasn't it?

> > Sorry but I have no idea which information I can send you to help me 
> > with my problem...
> > 

Florian, could you please check the size of your 1st stage bootloader 
(MLO) binary? 
It must not exceed 111616 byte! Otherwise it will not boot.
You can shrink the size by removing all unnecessary stuff from the 
barebox_mlo configuration.

Best regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
