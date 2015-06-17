Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z59et-000496-Kh
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 09:29:24 +0000
Date: Wed, 17 Jun 2015 11:28:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617092857.GJ6325@pengutronix.de>
References: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
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
Subject: Re: barebox picotcp integration (2015.06.14)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: DI PEDE Michele <michele.dipede@altran.com>, barebox <barebox@lists.infradead.org>, LACAMERA Daniele <daniele.lacamera@altran.com>

On Mon, Jun 15, 2015 at 01:13:43AM +0300, Antony Pavlov wrote:
> Hi!
> 
> I have just published latest picotcp-enabled barebox.
> Please see my 20150614.picotcp branch in my github barebox repo
> (https://github.com/frantony/barebox/tree/20150614.picotcp).
> 
> This version is based on latest barebox-next and latest picotcp-development.
> Here is barebox picotcp network features:
> 
>        * network interfaces and the 'ifconfig' command to rule them;
>        * the 'route' command to see current picotcp route table;
>        * the 'picoping' command to use picotcp ping support (also now barebox responds
>          to ping requests);
>        * the 'dhclient' command to use picotcp dhcp client;
>        * picotcp-based tftp filesystem support.
> 
> Changes since 2015.03.31:
> 
>        * split patches (ifconfig, route, picoping and dhclient commands
>          are introduced in separate patches now);
>        * rework picotcp Kconfig stuff;
>        * fix formatting.
> 
> Here is note/todo list:
> 
>   1. tftp write operation is not supported;

Why are you using the picotcp tftp implementation? picotcp surely
supports sending/receiving udp packets, right? Wouldn't it be a good
first step to replace the barebox udp API with the one picotcp provides?
I mean I would expect that you replace only the network stack, not the
network stack including the applications. If at some point we decide
that the tftp implementation in picotcp is better than the one in
barebox that would be the time to switch it.

> 
>   2. with picotcp we can't easely use 'tftp' command with old syntax
>      (no $<current ethernet>.serverip anymore);
> 
>   3. just now picotcp-based tftp file transfer is 5 times slower than
>      old realisation (partialy it is my bad, e.g. extra memory copy operation
>      is used for code simplification);

An additional memcpy shouldn't make tftp 5 times slower. There must be
something else.

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
