Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from v1423.vcdns.de ([88.80.200.154])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4r36-0006KH-D1
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 12:32:37 +0000
Message-ID: <53BD3649.6040408@ma-info.de>
Date: Wed, 09 Jul 2014 14:32:09 +0200
From: Frede Florian <florian.frede@ma-info.de>
MIME-Version: 1.0
References: <alpine.DEB.2.10.1407041514390.20194@9VTHT2J-D520>
 <53BA5442.6020708@ma-info.de>
 <alpine.DEB.2.10.1407071202460.2284@9VTHT2J-D520>
 <53BA811B.5080403@ma-info.de> <20140707120019.GN23235@pengutronix.de>
 <899032957.1340888.1404736162014.open-xchange@oxbsltgw04.schlund.de>
 <53BBBA05.6090403@ma-info.de> <1404813679.8953.12.camel@lws-gamez.phytec.de>
 <alpine.DEB.2.10.1407090838160.10300@9VTHT2J-D520>
In-Reply-To: <alpine.DEB.2.10.1407090838160.10300@9VTHT2J-D520>
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
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>, Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hello Rolf,

after I apply the Patch from Teresa I got the ">".
Yes the last barebox worked. Yesterday I configured the new barebox in 
the same way as the old one and got the ">" the size of my image is only 
93260 bytes so it should work but it do not work. So I will spend no 
more time with the phyWega and wait for the phyCore Kit and start there 
my next try.

Thanks for your helping

Florian

Am 09.07.2014 08:47, schrieb Rolf Evers-Fischer:
> Hello Florian,
>
> On Tue, 8 Jul 2014, Teresa Gamez wrote:
>
>> Hello Florian,
>>
>> I guess you having the default kit WEGA, which does have 256MB RAM. The mainline supported
>> phyCORE Kit does have 512MB. Thats probably why it does not start up.
>>
>> I'll have a look at it.
>>
>> Teresa
>>
> I'm not 100% sure, but I can imagine that the ">" should also appear when
> the SDRAM configuration is not correct. But nevertheless the correct
> SDRAM setting is important. Maybe, you can check the SDRAM setting of your
> previous barebox-2013.11. I assume, the old barebox was running properly,
> wasn't it?
>
>>> Sorry but I have no idea which information I can send you to help me
>>> with my problem...
>>>
> Florian, could you please check the size of your 1st stage bootloader
> (MLO) binary?
> It must not exceed 111616 byte! Otherwise it will not boot.
> You can shrink the size by removing all unnecessary stuff from the
> barebox_mlo configuration.
>
> Best regards,
>   Rolf
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
