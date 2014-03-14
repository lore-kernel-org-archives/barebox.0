Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.icid.cu ([200.55.133.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOYjk-0000Ow-FC
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 20:29:49 +0000
Received: from icid.cu ([10.10.0.3])
 by mail.icid.cu (8.13.8/8.13.8) with ESMTP id s2EK9tqM009861
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 16:09:55 -0400
Received: from [10.10.8.78] by icid.cu
 (Cipher TLSv1:RC4-MD5:128) (MDaemon PRO v9.6.1)
 with ESMTP id md50007098469.msg
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 14:44:08 -0500
Message-ID: <532366FD.509@icid.cu>
Date: Fri, 14 Mar 2014 16:30:53 -0400
From: raespi <raespi@icid.cu>
MIME-Version: 1.0
References: <532207C7.9020206@icid.cu>	<20140313212810.4179d0c2@e6520eb>	<53234E31.2070300@icid.cu>
 <20140314211858.05897c4e@e6520eb>
In-Reply-To: <20140314211858.05897c4e@e6520eb>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problem booting with Micron MT29F8G08ABABAWP ...
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

So what I'm understanding here is that it isn't enough to fix an oobsize =

also the 4k support is needed. I'm guessing it's not something so =

trivial then, I'll have to delve in deeper.  Any tips on how to code it =

as simple as possible?? I'm a programmer but I'm not familiarized with =

the inner workings of a NAND flash or how to initialize it from the =

bootloader.

On 03/14/2014 04:18 PM, Eric B=E9nard wrote:
> Hello,
>
> Le Fri, 14 Mar 2014 14:45:05 -0400,
> raespi <raespi@icid.cu> a =E9crit :
>
>> Hello again ... diving through the drivers/mtd/nand/nand_base.c code I
>> managed to boot with this little modification in the
>> nand_flash_detect_onfi() function just before exiting from it:
>>
>>       if ( mtd->oobsize > 128 )
>>         mtd->oobsize =3D 128;
>>
> then you tell your flash has an OOB of 128 when it has more ...
>
>> Apparently the only allowed oobsizes are 8, 16, 64 and 128 according to
>> the nand_scan_ident() function.  I followed Eric's advice in seeing how
>> the i.Mx manages it and it's something like this:
>>
>> NFC_V3_CONFIG2_SPAS(((mtd->oobsize > 218) ?
>>               218 : mtd->oobsize) >> 1)
>>
> that's specific to the i.MX NAND controller : you need to adapt the
> code of _your_ CPU's NAND controller to get it to properly support 4k
> page flashes.
>
> Eric
>
>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
