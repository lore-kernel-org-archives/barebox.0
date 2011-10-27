Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from aa001msb.fastweb.it ([85.18.95.80])
 by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RJNFw-0001vP-0o
 for barebox@lists.infradead.org; Thu, 27 Oct 2011 10:32:17 +0000
Message-ID: <4EA9331D.9090004@selea.com>
Date: Thu, 27 Oct 2011 12:31:57 +0200
From: Omar Pighi <pighi@selea.com>
MIME-Version: 1.0
References: <4EA7C424.2030901@televic.com>
 <20111026115234.GZ23421@pengutronix.de>
In-Reply-To: <20111026115234.GZ23421@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: different NAND type.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

on imx25 evaboard there is a samsung nand flash, now I'm using a micron
on our board (with different size),
is there any kind of dependence on redboot? something to change ? (the DCD?)
because it is not booting any moe with the new flash...
suggestion are welcome.

Thanks
Omar

Dott. Ing. Omar Pighi
R&D Selea s.r.l.
Via A.Moro 69
46015 Cicognara (MN)
ITALY
tel +39-0375-889091
fax +39-0375-889080
web:www.selea.com


Il 26/10/2011 13:52, Sascha Hauer ha scritto:
> Hi J=FCrgen,
>
> On Wed, Oct 26, 2011 at 10:26:12AM +0200, Lambrecht J=FCrgen wrote:
>   =

>> Hello,
>>
>> When our DHCP server crashes, Barebox DHCP client tries forever.
>> Is there a way to set a time out to let it fall back to a default IP =

>> address?
>>     =

> Not currently, no. Our dhcp server does not crash ;)
>
> Patches welcome
>
> Sascha
>
>   =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
