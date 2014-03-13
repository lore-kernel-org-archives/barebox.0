Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOCFG-0006mi-Tu
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 20:28:54 +0000
Date: Thu, 13 Mar 2014 21:28:10 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140313212810.4179d0c2@e6520eb>
In-Reply-To: <532207C7.9020206@icid.cu>
References: <532207C7.9020206@icid.cu>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problem booting with Micron MT29F8G08ABABAWP ...
To: raespi <raespi@icid.cu>
Cc: barebox@lists.infradead.org

Hi,

Le Thu, 13 Mar 2014 15:32:23 -0400,
raespi <raespi@icid.cu> a =E9crit :
> Hi ... I'm using barebox 2014.02.0 to boot with a clone of the mini2440 =

> board using the MT29F8G08ABABAWP NAND.
> =

> I'm getting the following error:
> =

> barebox 2014.02.0 #1 Thu Mar 13 15:28:57 CDT 2014
> =

> Board: <NULL>
> nand: ONFI param page 0 valid
> nand: ONFI flash detected
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron =

> MT29F8G08ABABAWP), 1024
> nand: No oob scheme defined for oobsize 224
> BUG: failure at drivers/mtd/nand/nand_base.c:3357/nand_scan_tail()!
> BUG!
> no stack data available
> DIVN_UPLL0
> MPLLVal [M:61h,P:1h,S:2h]
> CLKDIVN:7h
> =

> After this poing the board gets resetted back to the original point.  I =

> can never get to the barebox prompt.
> =

> Any ideas on how to fix this ??
> =

you may need to add support for 4k+224 page size to your nand
controller.
For example this was done for i.MX in comit
632c45795065e6a7471ab82be38e808eb6204341

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
