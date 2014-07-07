Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from v1423.vcdns.de ([88.80.200.154])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X46su-0005Lj-Sd
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 11:15:01 +0000
Message-ID: <53BA811B.5080403@ma-info.de>
Date: Mon, 07 Jul 2014 13:14:35 +0200
From: Frede Florian <florian.frede@ma-info.de>
MIME-Version: 1.0
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
In-Reply-To: <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Problems with pyhBoard-Wega-AM335x
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

Hello Rolf,

thank you very much...
after I selected the mentioned entry in the menu the problem was solved...
but the board do not prompt any thing on the UART1... so I do not know 
if barebox is loaded
from the sd-card or not...

Regards Florian

Am 07.07.2014 12:05, schrieb Rolf Evers-Fischer:
> Hello Florian,
>
> On Mon, 7 Jul 2014, Florian Frede wrote:
>
>> [...]
> thank you for the config files.
>
> Please enable in both configs (barebox and barebox_mlo):
> "Drivers" -> "Enable probing of devices from the devicetree".
>
> Kind regards,
>   Rolf
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
