Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X45oN-00026d-Sy
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 10:06:16 +0000
Date: Mon, 7 Jul 2014 12:05:44 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
In-Reply-To: <53BA5442.6020708@ma-info.de>
Message-ID: <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
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
To: Florian Frede <florian.frede@ma-info.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

Hello Florian,

On Mon, 7 Jul 2014, Florian Frede wrote:

> Hello Rolf,
> 
> I used this Option already, but to be sure that there is no mistake I
> reconfigured the Barebox and Barebox_MLO again and use the new Version
> 2014.07.0. The result is the same.
> 
> 
> I also attached the config files may be there is an other error?
> 
thank you for the config files.

Please enable in both configs (barebox and barebox_mlo):
"Drivers" -> "Enable probing of devices from the devicetree".

Kind regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
