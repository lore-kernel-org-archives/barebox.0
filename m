Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4S5C-0007bq-99
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 17:24:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1l4S59-0007q7-PA
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 18:24:47 +0100
References: <CAEuS4-0HDxrsvQ_2ONfXiLdVn8=xaxR=erz5vtH=km44+HpLTA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8fd72cdd-9d34-f6e3-6e80-46b00d11cb5d@pengutronix.de>
Date: Tue, 26 Jan 2021 18:24:47 +0100
MIME-Version: 1.0
In-Reply-To: <CAEuS4-0HDxrsvQ_2ONfXiLdVn8=xaxR=erz5vtH=km44+HpLTA@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: MAC address set in OCOTP but not visible from ETH0 - i.MX6
To: barebox@lists.infradead.org

Hi,

On 26.01.21 18:06, DEMIRDJIAN, Antoine wrote:
> Dear all,
> 
> I'm working on a custom board based on an i.MX6 Dual Lite.
> I've set a MAC address on OCOTP, and I can see it :
> 
> barebox@Main Board:/ devinfo ocotp0
> Parameters:
>   mac_addr: 70:82:0e:12:73:6f (type: MAC)
>   mac_addr0: 70:82:0e:12:73:6f (type: MAC)
>   permanent_write_enable: 0 (type: bool)
>   sense_enable: 0 (type: bool)
> 
> The issue is that I can't get it from eth0 :
> 
> barebox@Chrysalis Main Board:/ devinfo eth0
> Parameters:
>   ethaddr: 00:00:00:00:00:00 (type: MAC)
>   gateway: 192.1.1.100 (type: ipv4)
>   ipaddr: 0.0.0.0 (type: ipv4)
>   linux.bootargs: ip=0.0.0.0:192.1.1.46:192.1.1.100:255.255.255.0:::
> (type: string)
>   linux.devname:  (type: string)
>   mode: static (type: enum) (values: "dhcp", "static", "disabled")
>   netmask: 255.255.255.0 (type: ipv4)
>   serverip: 192.1.1.46 (type: string)
> 
> My operating system's driver does not see it neither ...
> 
> Am I missing something?

Yes: https://barebox.org/doc/latest/devicetree/bindings/misc/fsl,imx-ocotp.html

Check the other i.MX board in arch/arm/dts for an example.

Cheers,
Ahmad

> 
> Best Regards,
> Antoine
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
