Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QMHuo-00064a-VW
	for barebox@lists.infradead.org; Tue, 17 May 2011 10:54:15 +0000
Date: Tue, 17 May 2011 12:42:54 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110517104254.GB2737@game.jcrosoft.org>
References: <6F2524F76379064FB8CB9CEE698D56DA8D40DE20D3@IN-MSG-01.amer.actel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40DE20D3@IN-MSG-01.amer.actel.com>
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
Subject: Re: help  -- barebox on ARM Cortex M3
To: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

	please do not write HTML e-mail use plain/text
On 14:07 Tue 17 May     , Murthy, Ramana wrote:
>    Hi All,
> 
>     
> 
>    I am new to barebox. Now a days I am trying to port a good bootloader onto
>    ARM Cortex M3 based board. The board has enough memory, Serial and
>    Ethernet interfaces.
> 
>    Only thing lacking in Cortex M3 is MMU. Instead there is MPU(Memory
>    Protection Unit).
> 
>     
> 
>    Does barebox support ARM devices without MMU? If Yes, please point me to
>    the related links.
Basicaly Barebox does not enable the MMU on ARM but actually the assembly is
not write to be 100% compliant with Thumb2. Otherwise you will not have big
issue to add the M3 support

To enable the MMU you need to enable CONFIG_MMU otherwise noMMU enabled by
default

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
