Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOYZl-0008Ub-Q7
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 20:19:31 +0000
Date: Fri, 14 Mar 2014 21:18:58 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140314211858.05897c4e@e6520eb>
In-Reply-To: <53234E31.2070300@icid.cu>
References: <532207C7.9020206@icid.cu> <20140313212810.4179d0c2@e6520eb>
 <53234E31.2070300@icid.cu>
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

Hello,

Le Fri, 14 Mar 2014 14:45:05 -0400,
raespi <raespi@icid.cu> a =E9crit :

> Hello again ... diving through the drivers/mtd/nand/nand_base.c code I =

> managed to boot with this little modification in the =

> nand_flash_detect_onfi() function just before exiting from it:
> =

>      if ( mtd->oobsize > 128 )
>        mtd->oobsize =3D 128;
> =

then you tell your flash has an OOB of 128 when it has more ...

> Apparently the only allowed oobsizes are 8, 16, 64 and 128 according to =

> the nand_scan_ident() function.  I followed Eric's advice in seeing how =

> the i.Mx manages it and it's something like this:
> =

> NFC_V3_CONFIG2_SPAS(((mtd->oobsize > 218) ?
>              218 : mtd->oobsize) >> 1)
> =

that's specific to the i.MX NAND controller : you need to adapt the
code of _your_ CPU's NAND controller to get it to properly support 4k
page flashes.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
