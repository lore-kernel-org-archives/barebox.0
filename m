Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.icid.cu ([200.55.133.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOX5L-0005LX-5o
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 18:44:01 +0000
Received: from icid.cu ([10.10.0.3])
 by mail.icid.cu (8.13.8/8.13.8) with ESMTP id s2EIO4YY008783
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 14:24:04 -0400
Received: from [10.10.8.78] by icid.cu
 (Cipher TLSv1:RC4-MD5:128) (MDaemon PRO v9.6.1)
 with ESMTP id md50007098184.msg
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 12:58:17 -0500
Message-ID: <53234E31.2070300@icid.cu>
Date: Fri, 14 Mar 2014 14:45:05 -0400
From: raespi <raespi@icid.cu>
MIME-Version: 1.0
References: <532207C7.9020206@icid.cu> <20140313212810.4179d0c2@e6520eb>
In-Reply-To: <20140313212810.4179d0c2@e6520eb>
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

Hello again ... diving through the drivers/mtd/nand/nand_base.c code I =

managed to boot with this little modification in the =

nand_flash_detect_onfi() function just before exiting from it:

     if ( mtd->oobsize > 128 )
       mtd->oobsize =3D 128;

Apparently the only allowed oobsizes are 8, 16, 64 and 128 according to =

the nand_scan_ident() function.  I followed Eric's advice in seeing how =

the i.Mx manages it and it's something like this:

NFC_V3_CONFIG2_SPAS(((mtd->oobsize > 218) ?
             218 : mtd->oobsize) >> 1)

Basically setting it to a value of 218.  I first tried a value of 218 =

and it didn't work, with a value of 128 I arrive at the prompt but not =

very cleanly I presume:

nand: ONFI param page 0 valid
OOBSIZE4: 128
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron =

MT29F8G08ABABAWP), 1028
Bad block table found at page 262016, version 0x01
Bad block table found at page 261888, version 0x01

I'm currently having trouble booting the kernel from the =

/dev/nand0.kernel partition, it boots fine from an SD partition meaning =

the boot mechanism in barebox is fine.  Still moving forward ...

On 03/13/2014 04:28 PM, Eric B=E9nard wrote:
> Hi,
>
> Le Thu, 13 Mar 2014 15:32:23 -0400,
> raespi <raespi@icid.cu> a =E9crit :
>> Hi ... I'm using barebox 2014.02.0 to boot with a clone of the mini2440
>> board using the MT29F8G08ABABAWP NAND.
>>
>> I'm getting the following error:
>>
>> barebox 2014.02.0 #1 Thu Mar 13 15:28:57 CDT 2014
>>
>> Board: <NULL>
>> nand: ONFI param page 0 valid
>> nand: ONFI flash detected
>> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron
>> MT29F8G08ABABAWP), 1024
>> nand: No oob scheme defined for oobsize 224
>> BUG: failure at drivers/mtd/nand/nand_base.c:3357/nand_scan_tail()!
>> BUG!
>> no stack data available
>> DIVN_UPLL0
>> MPLLVal [M:61h,P:1h,S:2h]
>> CLKDIVN:7h
>>
>> After this poing the board gets resetted back to the original point.  I
>> can never get to the barebox prompt.
>>
>> Any ideas on how to fix this ??
>>
> you may need to add support for 4k+224 page size to your nand
> controller.
> For example this was done for i.MX in comit
> 632c45795065e6a7471ab82be38e808eb6204341
>
> Eric
>
>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
