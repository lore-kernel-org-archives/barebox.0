Delivery-date: Tue, 05 Mar 2024 15:19:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhVdr-009mnh-0J
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 15:19:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhVdp-0004Vm-Of
	for lore@pengutronix.de; Tue, 05 Mar 2024 15:19:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HMjXeIChnA6/pWuh/rnauCdPzyjxdAD5XhuDDeTg6lQ=; b=t4gs6bClJ+MN76MNGf778mnKXw
	w58AXifXMylFstTPn9OnMT6QzrfJpop6rZ7RVy6LKfr6Ak7Aov7U1JoHaDB+xWYFHARb9fF/39Jd7
	9avRxzhpRKBoArCAE4PmbwvF2F1jvMHw+u2VXegU39sTG7pCgxmmrgFaNCh/tHzTarMhxjbnQV9HH
	3J0D0uUCwXw62FIMPRwUDJr0Mwk2wx5X4cJYxqUVt/Q7eUJCFHxmBZe4WORWsAC42CmQgDwdCq7o5
	qZktD0opu/fnjGULJkwEAciHbD+qfpKP9KApz7Vvl9QEBzkPZPVf3Cn6vm8Nwd63lDreqQoXjELL8
	wmePGnlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUZs-0000000Dghv-3X4g;
	Tue, 05 Mar 2024 13:11:28 +0000
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUZn-0000000Dgfk-3nzB
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 13:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1709644283; x=1741180283;
  h=from:to:cc:subject:message-id:mime-version:date;
  bh=HMjXeIChnA6/pWuh/rnauCdPzyjxdAD5XhuDDeTg6lQ=;
  b=GVttoenByMGb5vA+yYdNhEfX7b8czouBKd1XSuZecdSabe3Ef7sEVnD4
   IHBdTtlzLaUhZprvTkjteezyWM8RI9dj2lKuwgYEOaqMBwNRdsjt/vZ7R
   ZmnUEuVlqcHrRomrktNZRRnYp/OwU3XPd30lmowQPHS15v+0TeotHW+Tb
   OLpOyxovSJ1C8R/hlpQx7W9c1IcmJ4sEBfClJ7bflbjB6zaKlAe6ljvM2
   TgEXLjcoShqyu+N3EcmfkMGjeCr+T5y+z8z7j1OchMVTe6SVL+VWrOYNr
   wE0xa7qIpMKo2xXaWSeBYeS7sFlLc4uS2jwAHID1UWQ+NFqimf5pAQ7Nu
   Q==;
X-CSE-ConnectionGUID: /2S/DzKQQjqfBTihaWNtsg==
X-CSE-MsgGUID: afQscGADSKy9UlttoTUR3Q==
X-ThreatScanner-Verdict: Negative
IronPort-Data: A9a23:M23OZKl9iWj658dgwJCMBAfo5gxHJkRdPkR7XQ2eYbSJt16W5kVWj
 iJDADrXfqbVPH29ZpktO86x6Alf7siEipMhHTLYn1l2SnNPpIzdWs/xwizYZHzMd8SZExNss
 s9ONdSaIsxqQ3KF+kvya+Pr83dyi//ZFrahA+OdZix7GVRvGXl71Rg7keA03tRiiIS0Xg7U5
 rsezyGx1HqNglaYZUpPuvrTwP8WgNzypC8A7Bt5Zv1apxnSlnQVCNQUIqT2JGH8BZVXW+6NQ
 aDI1rXhll81hCzBee5J6J6gNBVif5bSIRSW2D0RWKWzmV5OpyEy1uAwM/9bYl1TzCmK2tBGz
 pNGr5joFERoZsXwdJ8mv2pl/1tWZusekILvIWSjqZ7UiFLZbD3gwvhuCAc9Oohf4uV2Rjkmy
 RBjE9x+U/z5r7nwmNqGd9RRauQfwOjDMN9P5Xs/lT/VA6d9SM+ZG/SUtIVS1Wdq3JEWRfzXO
 5ZFMGo+Zxn+OBAeYV1/5LDSPguLriSlL2cI+Ar9SY4fuTW7INlZieC1WDbtUoXXA50TxgDB/
 j6uE13RWnkyLMaYxSeO7kWij+rOmTKTcI8JHdVUzNYz6LGo7jJVUEN+uWeT+6Hj1hblA48Hc
 iT4xwJ1xUQM3B3yJjXCd03gyJK0lkZ0c8ZdFeQ89DaMxsL8i+pOLjFZJtLpQIVOWP4eHVTG5
 HfQ9z/aLWUHXImudJ6o3uz8QQVem8QiBTRqiScsFWPp6jR4yW05pkqnot1LSMZZgjBpcN1ZL
 v/jQCUW3t0uYcA3O6qTugr8xB6+haHwTBc7zDnWXmuayB9ia9vwD2CowQCzAfdoIIOLRVae5
 CJCkM+E9KYCDJyNkGqGR+Bl8LOBvq7DYGea2A4pRsJ7n9iu0yfLkYR47Dx4JVwvNd0YdCXta
 UnfkQ9Q6Z9XenCtaMebZqrhUp51kvO8SrwJUNjdYONVabdYWDSk7XBTYVKM2FzQqhMVxPRX1
 ZCzNJzE4WwhIahqyjutAeAGzbIxwik4yUvcQJn6y1Ks1r/2THScU7oPN0umauEi8LjCoQPb6
 d9TOsKGjRJFX4XWa2/Z+JIUMFUiNXU9Co3qsctRd/7FLgcOMHshCtfJzLUuZpB/mKJUhqHE8
 xmVU0NR4Eb/gmfcKB7MYXdmAI4DRr5zqGAwMjN0ZxCk2nUjZcCk670HH3cqQYQaGCVY5aYcZ
 5E4lw+oW5yjlhyvF+whUKTA
IronPort-HdrOrdr: A9a23:LJqQr6hemgCDRUv7smbld3P0kXBQXtIji2hC6mlwRA09TyX+rb
 HNoB17726WtN9/YhAdcLy7VJVoIkmwyXcW2/h1AV7KZmCP01dASrsN0WKL+Vfd8kbFltK1u5
 0OT0A0YOeAaWRHsQ==
X-Talos-CUID: =?us-ascii?q?9a23=3AZ2giYWv5wuCiW2suX+7f0pwp6ItiKEaa4GXzGna?=
 =?us-ascii?q?6EGhDdLyVQGC25Lhrxp8=3D?=
X-Talos-MUID: 9a23:yD3cygQ9zsb8tR9LRXTligh5P+hBz5+NGREwlYkavPW5D3dJbmI=
X-IronPort-AV: E=Sophos;i="6.06,205,1705359600"; 
   d="p7s'?scan'208";a="81277347"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>, 
	Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander
 Dahl <ada@thorsis.com>
Message-ID: <31cfa4b499ca4b6595df0ac15c146c2d@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----DD443D2E8FF77FCCECB1735AE1257902"
Date: Tue,  5 Mar 2024 14:11:15 +0100 (CET)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_051124_543711_9CD1B0DD 
X-CRM114-Status: GOOD (  40.38  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [EXT] Re: [EXT] Re: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi:
 fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an S/MIME signed message

------DD443D2E8FF77FCCECB1735AE1257902
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Cool. Thanks for the trigger.
Works fine on my side.
You can add my

Tested-by: Denis Osterland-Heim <denis.osterland@diehl.com>

Regards, Denis

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de>=20
Sent: Tuesday, March 5, 2024 11:34 AM
To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>; Roland Hieber
<rhi@pengutronix.de>; Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org; Alexander Dahl <ada@thorsis.com>
Subject: [EXT] Re: [EXT] Re: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: =
fixup
additional vc created nodes

[EXTERNAL EMAIL]
=20

On 29.02.24 07:03, Denis OSTERLAND-HEIM wrote:
> Hi,
>=20
> Well, the kernel in root A may have a different device tree, than the=20
> one in root B.
> This is the kernel version update case.
> What would break, depends on the changes to the dt.

Hmm, ok. I just sent a patch that should support both my and your use =
case.

Cheers,
Ahmad

>=20
> Regards, Denis
>=20
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Sent: Monday, February 26, 2024 1:39 PM
> To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>; Roland Hieber=20
> <rhi@pengutronix.de>; Denis Osterland-Heim <denis.osterland@gmail.com>
> Cc: barebox@lists.infradead.org; Alexander Dahl <ada@thorsis.com>
> Subject: [EXT] Re: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup=20
> additional vc created nodes
>=20
> [EXTERNAL EMAIL]
> =20
>=20
> Hello Denis,
>=20
> On 21.02.24 08:46, Denis OSTERLAND-HEIM wrote:
>> Hi,
>>
>> It took me a while to think about it.
>> First I would like to explain my current boot process and then how I=20
>> think it would like with your suggestion.
>>
>>
>> Now:
>>
>> Disk layout:
>> - rpi boot fat: dt-2nd.img, barebox-dts, rpi-elf, config.txt
>> - root A
>> - root B
>>
>> Boot process:
>> - rpi boot loader
>> 	* load dt-2nd.img and dt
>> 	* read Hat Eeprom
>> 	* apply fixups to dt
>> - barebox with dt from r2
>> 	* bootchooser select A or B
>> 	* load kernel and dt from A or B
>> 	* copy stuff to kernel dt from barebox internal dt as fixups
>> - linux boot
>>
>>
>> Your approach:
>>
>> Disk layout:
>> - rpi boot fat: bb-rpi.img, some-dts, rpi-elf, config.txt
>> - root A
>> - root B
>>
>> Boot process:
>> - rpi boot loader
>> 	* load bb-rpi.img and dt
>> 	* read Hat Eeprom
>> 	* apply fixups to dt
>> - barebox with built-in dt
>> 	* bootchooser select A or B
>> 	* load kernel and dt from A or B
>> 	* copy stuff to kernel dt from /vc.dtb as fixups
>=20
> This I don't understand. Why not use vc.dtb as kernel DT? You can=20
> still have barebox apply boot arg fixups and so on, but use /vc.dtb as
base?
>=20
>> - linux boot
>>
>> I can remember that I tried to implement the fixups as script in the=20
>> environment first, but switched to C somewhen.
>> I can not recall the reason, sorry.
>> I guess it was related to recursive copy.
>> The C code uses of_merge_node or something like that, which is not=20
>> available as command, I think.
>=20
> This can be made available to shell too if there's use for it, but I=20
> think this is tangential.
>=20
>> If we can keep the patches an just do something like if /vc.dtb then=20
>> apply fixups, I would be fine with your approach.
>> But I guess this almost exactly matches the `if(!IS_ERR(root))=20
>> rpi_vc_fdt_parse(root);` approach.
>> If you just revert the patches, I guess I would have to find a way to =

>> do it in script.
>=20
> What would break if you used vc.dtb as kernel DT?
>=20
> Thanks,
> Ahmad
>=20
>>
>> Regards, Denis
>>
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Tuesday, February 20, 2024 4:33 PM
>> To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>; Roland Hieber=20
>> <rhi@pengutronix.de>; Denis Osterland-Heim=20
>> <denis.osterland@gmail.com>
>> Cc: barebox@lists.infradead.org; Alexander Dahl <ada@thorsis.com>
>> Subject: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional=20
>> vc created nodes
>>
>> [EXTERNAL EMAIL]
>> =20
>>
>> Hello Denis,
>>
>> On 20.02.24 09:16, Denis OSTERLAND-HEIM wrote:
>>> Hi,
>>>
>>> I think so, too.
>>> I think that my mistake was in =
5ea6e19737e10973ce2cf785970e32562d9ee8f1.
>>
>> Yes.
>>
>>>> @@ -379,17 +381,17 @@ static void rpi_vc_fdt(void)
>>>> 		if (oftree->totalsize)
>>>> 			pr_err("there was an error copying fdt in pbl:
>>> %d\n",
>>>> 					be32_to_cpu(oftree->totalsize));
>>>> -		return;
>>> This return previously avoided a call of rpi_vc_fdt_parse().
>>>
>>
>> [snip]
>>
>>>> 	rpi_env_init();
>>>> -	rpi_vc_fdt();
>>>> +	root =3D rpi_vc_fdt();
>>>> +	rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
>>> Now rpi_vc_fdt_parse() is called in both cases.
>>> So, it should be:
>>> 	if (!IS_ERR(root))
>>> 		rpi_vc_fdt_parse(root);
>>>> 	rpi_set_kernel_name();
>>>>
>>> ...
>>>
>>> Or do I miss something?
>>
>> Now that I think of it, I think the commit should just be reverted.
>> I don't see the utility of using barebox-dt-2nd.img on the Raspberry =
Pi:
>>
>>   - If the board is already supported, use barebox-raspberry-pi.img,
which
>>     has the DT built-in.
>>
>>   - If the board is not supported , use barebox-raspberry-pi.img, =
which
>>     will take the outside DT and save it where the board code expects =
it.
>>
>> What do you think?
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> Regards, Denis
>>>
>>> -----Original Message-----
>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Sent: Monday, February 19, 2024 10:43 PM
>>> To: Roland Hieber <rhi@pengutronix.de>; Denis Osterland-Heim=20
>>> <denis.osterland@gmail.com>
>>> Cc: barebox@lists.infradead.org; Denis OSTERLAND-HEIM=20
>>> <denis.osterland@diehl.com>; Alexander Dahl <ada@thorsis.com>
>>> Subject: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc created =

>>> nodes
>>>
>>> [EXTERNAL EMAIL]
>>> =20
>>>
>>> Hello Roland,
>>>
>>> On 19.02.24 20:14, Roland Hieber wrote:
>>>> Hi,
>>>>
>>>> On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim =
wrote:
>>>>> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>>>>
>>>>> The video core creates some additional nodes.
>>>>> This code takes over this values.
>>>>> The /hat node is only there if an raspi hat with EEPROM is =
detected.
>>>>>
>>>>> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>>>> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>> ---
>>>>> =A0arch/arm/boards/raspberry-pi/rpi-common.c | 39
>>>>> +++++++++++++++++------
>>>>> =A01 file changed, 30 insertions(+), 9 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
>>>>> b/arch/arm/boards/raspberry-pi/rpi-common.c
>>>>> index ceafd55a56..713fad78c9 100644
>>>>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>>>>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>>>>> @@ -264,19 +264,37 @@ static enum reset_src_type=20
>>>>> rpi_decode_pm_rsts(struct device_node *chosen,
>>>>> =A0
>>>>> =A0static int rpi_vc_fdt_fixup(struct device_node *root, void =
*data)
>>>>> =A0{
>>>>> -=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_chosen =3D =
data;
>>>>> -=A0=A0=A0=A0=A0=A0=A0struct device_node *chosen;
>>>>> +=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_node =3D data;
>>>>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *node;
>>>>> +=A0=A0=A0=A0=A0=A0=A0struct property *pp;
>>>>> =A0
>>>>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_create_node(root, "/chosen");
>>>>> -=A0=A0=A0=A0=A0=A0=A0if (!chosen)
>>>>> +=A0=A0=A0=A0=A0=A0=A0node =3D of_create_node(root, =
vc_node->full_name);
>>>>> +=A0=A0=A0=A0=A0=A0=A0if (!node)
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -ENOMEM;
>>>>> =A0
>>>>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, =
"overlay_prefix", chosen);
>>>>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, "os_prefix", =
chosen);
>>>>> +=A0=A0=A0=A0=A0=A0=A0for_each_property_of_node(vc_node, pp)
>>>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_node, =
pp->name, node);
>>>>> =A0
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0return 0;
>>>>> =A0}
>>>>> =A0
>>>>> +static struct device_node *register_vc_fixup(struct device_node=20
>>>>> +*root,
>>>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const char =
*path) {
>>>>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *ret, *tmp;
>>>>> +
>>>>> +=A0=A0=A0=A0=A0=A0=A0ret =3D of_find_node_by_path_from(root, =
path);
>>>>> +=A0=A0=A0=A0=A0=A0=A0if (ret) {
>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp =3D of_dup(ret);
>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp->full_name =3D =
xstrdup(ret->full_name);
>>>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fd=
t_fixup, tmp);
>>>>> +=A0=A0=A0=A0=A0=A0=A0} else {
>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_info("no '%s' =
node found in vc fdtn", path);
>>>>> +=A0=A0=A0=A0=A0=A0=A0}
>>>>> +
>>>>> +=A0=A0=A0=A0=A0=A0=A0return ret;
>>>>> +}
>>>>> +
>>>>> =A0static u32 rpi_boot_mode, rpi_boot_part;
>>>>> =A0/* Extract useful information from the VideoCore FDT we got.
>>>>> =A0 * Some parameters are defined here:
>>>>> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct=20
>>>>> device_node
>>>>> *root)
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0free(str);
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0}
>>>>> =A0
>>>>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_find_node_by_path_from(root, =
"/chosen");
>>>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/system");
>>>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/axi");
>>>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/reserved-memory");
>>>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/hat");
>>>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, =
"/chosen/bootloader");
>>>>> +=A0=A0=A0=A0=A0=A0=A0chosen =3D register_vc_fixup(root, =
"/chosen");
>>>>
>>>> This throws a lot of new warnings and errors on our RPi 3B:
>>>>
>>>>     barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
>>>>     Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6
>>>>
>>>>     Board: Raspberry Pi 3 Model B
>>>>     deep-probe: supported due to raspberrypi,3-model-b
>>>>     netconsole: registered as netconsole-1
>>>>     bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
>>>>     bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
>>>>     mci0: detected SD card version 2.0
>>>>     mci0: registered disk0
>>>>     state: New state registered 'state'
>>>>     state: Using bucket 0@0x00000000
>>>>     malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
>>>>     WARNING: no property 'serial-number' found in vc fdt's '' node
>>>>     no '/system' node found in vc fdt
>>>>     no '/axi' node found in vc fdt
>>>>     no '/hat' node found in vc fdt
>>>>     no '/chosen/bootloader' node found in vc fdt
>>>>     WARNING: no property 'bootargs' found in vc fdt's '/chosen' =
node
>>>>     WARNING: no property 'overlay_prefix' found in vc fdt's =
'/chosen'
>> node
>>>>     WARNING: no property 'os_prefix' found in vc fdt's '/chosen' =
node
>>>>     WARNING: 'pm_rsts' value not found in vc fdt
>>>>     ERROR: Won't delete root device node
>>>>     environment load /boot/barebox.env: No such file or directory
>>>>     Maybe you have to create the partition.
>>>>
>>>> Do you have any idea what is going on here?=20
>>>>
>>>> I also don't see /vc.dtb, which should have been created. I have
>>>> 'vc.kernel: kernel7.img' in the 'global' output, but nothing else=20
>>>> starting with vc.*.
>>>
>>> I think that a non-existent /vc.dtb is expected if there's no DTs in =

>>> the boot partition as is the case with DistroKit (except for rpi4)=20
>>> or if using barebox-dt-2nd.img.
>>>
>>> I think the info/warning messages should just be dropped.
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>>  - Roland
>>>>
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0if (!chosen) {
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_err("no =
'/chosen' node found in vc fdtn");
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto out;
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0}
>>>>> =A0
>>>>> -=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fdt_fixup, =
of_dup(chosen));
>>>>> -
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0bootloader =3D =
of_find_node_by_name(chosen, "bootloader");
>>>>> =A0
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0str =3D of_read_vc_string(chosen, =
"bootargs");
>>>>> --
>>>>> 2.39.2
>>>>>
>>>>>
>>>>
>>>
>>
>=20

--=20
Pengutronix e.K.                           |                             =
|
Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|

------DD443D2E8FF77FCCECB1735AE1257902
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIIPQAYJKoZIhvcNAQcCoIIPMTCCDy0CAQExDzANBglghkgBZQMEAgEFADALBgkq
hkiG9w0BBwGgggxWMIIGUTCCBDmgAwIBAgICMAAwDQYJKoZIhvcNAQELBQAwgaMx
ITAfBgNVBAMMGERpZWhsIEdyb3VwIE1haWwgUm9vdCBDQTELMAkGA1UEBhMCREUx
EjAQBgNVBAcMCU51ZXJuYmVyZzEUMBIGA1UECgwLRGllaGwgR3JvdXAxFDASBgNV
BAsMC0RpZWhsIEdyb3VwMQ8wDQYDVQQIDAZCYXllcm4xIDAeBgkqhkiG9w0BCQEW
EXg1MDktY2FAZGllaGwuY29tMB4XDTE4MDUyOTEyMzIzNVoXDTI4MDUyNjEyMzIz
NVowgZQxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xFDASBgNVBAoMC0Rp
ZWhsIEdyb3VwMRswGQYDVQQLDBJEaWVobCBNZXRlcmluZyBUS0gxHzAdBgNVBAMM
FkRpZWhsIE1ldGVyaW5nIE1haWwgQ0ExIDAeBgkqhkiG9w0BCQEWEXg1MDktY2FA
ZGllaGwuY29tMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtISPrKPL
Zjjh//2n9b+GXgrhijJV2knQVC0+/FS3zGl4p2fboB+Vr4YHz1uilEvhsS1oG4FV
f1u0dqdmLVxDHBPMO2K1NKKOJN/6LDDfyiZGNqDOJke6FzrmDyPXXTDtgzWZfdnD
esx63XSxprre30oJ3BxDFS+/8UpuI628SPc1N4125rHeUXG4scKFSjqRPcIOAQ2X
veGXU2dYHzq7B02NA8tssmtJNwXjyvMjOw6HGZ8SB87TrFQm6drEtM7QhI/mfpGe
nTZ4nc84n0yKuMveav8IOspYbkOXzi4JapiOUpmccNLZdIiMg5WJQ0Xt9NSp5yD5
CYKideGrWgX2wNEBpalgjZoPPQDImcWEJx88/yYZ4FwtRD3VueFqpBr4z/bxwVDr
N2a/sEqnocY9Tm2EQyHFHDCJ9JyYEXB8W0LTFcUAx+uHijwPk/oIB5EeH8UygXlX
qUqII+BUZ+q5m5sIc4eXQ10UpUEjG/ptIyO1Ee/E0kPOWzHp07pPgXCZohZb3y41
Ha2pO6rXOsOmPBK2r2++fLWz3NFyfEJCmn6FcBNi003HUEVCup1D9/9yaPHPSieN
27sjQcQ96GbOitC99p3xMnSlg4N11lGeuTXCZjIGXdZL5/dThQaxneVA+hr2X+i1
KmqnesMaSBEuBEBDmbDbakEgJFVWtVeXuk8CAwEAAaOBmzCBmDASBgNVHRMBAf8E
CDAGAQH/AgEAMAsGA1UdDwQEAwIBBjAdBgNVHQ4EFgQUn8t6NGPzWsF+oZYXxmfn
p4Ok7rIwHwYDVR0jBBgwFoAUZrrYQMMD50v/OCDMgDN7y/GT2P8wNQYDVR0fBC4w
LDAqoCigJoYkaHR0cDovL2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMA0G
CSqGSIb3DQEBCwUAA4ICAQAl6hO6b6+GseZi3EAU+zPVhxNZP5Y+YsBnjf13jCGw
nUVvPz6giwXiCd9KIC4eCqqrJLTHwZe8c/9hSk5CCd6A5XAd3YudrPDvmIwms5Ex
OREMQkygZO6/qxfXO6IhfUO4HvYQtQexzHOLuxG/KdycVwWapA4acFzBurxFQ3aG
jvPRgvWxe2Mt3K9wLrEhvGrDmS8yg4bYNyBZGgax6LRhfW4/ShInVUa0koG2Sj+H
hKpppvqDK4FNgR2dKeCPoo28P9a+K9N3wkLKx4zxaxHegij0DsJOBAVbhk+vDWDO
gedjtT09c9bsykaXFzykyQeQz7cwrTQ1gDacdcDgywMDQzZKim9O3JpyzvXnD7mb
CvclM3xp9w6jIJbeaQE7HDlA9YIL/bSRIQq8mJcXArUevLK2MX/Mb+5m3UMU+zXc
ZqmaneeZeR4bOWrmmhK6bMuce6H+i2YB1vG3BAcSfKQUzZ1m6aKSW1FvjI3SZXQD
FzRzBwC5ql7i2ugtfOLNYjOO/fvAxNppIZb3IyWN1KBAI7YgS4nx0us/NIlWpTMW
91WeUtNBCp2sgi3VTi/TUel3RZ9x3tggMUhrksGkFXz2NUL85AdPV6BqJXXXHggd
121rnduE9ocMt0MFLuDPkMaHqKNzBAcKTcmFM8KYMJ5Z7NBqGtTAgHNVmEnU8gu3
czCCBf0wggPloAMCAQICAgtcMA0GCSqGSIb3DQEBCwUAMIGUMQswCQYDVQQGEwJE
RTEPMA0GA1UECAwGQmF5ZXJuMRQwEgYDVQQKDAtEaWVobCBHcm91cDEbMBkGA1UE
CwwSRGllaGwgTWV0ZXJpbmcgVEtIMR8wHQYDVQQDDBZEaWVobCBNZXRlcmluZyBN
YWlsIENBMSAwHgYJKoZIhvcNAQkBFhF4NTA5LWNhQGRpZWhsLmNvbTAeFw0yNDAx
MDIwOTE5MzlaFw0yNjAxMDIwOTE5MzlaMIG8MSIwIAYDVQQDDBlkZW5pcy5vc3Rl
cmxhbmRAZGllaGwuY29tMSgwJgYJKoZIhvcNAQkBFhlkZW5pcy5vc3RlcmxhbmRA
ZGllaGwuY29tMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMRwwGgYDVQQK
DBNEaWVobCBNZXRlcmluZyBUSy1IMRwwGgYDVQQLDBNEaWVobCBNZXRlcmluZyBU
Sy1IMRIwEAYDVQQHDAlOdWVybmJlcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDC4CfZJns8lrNXSkis30SmXgEPwIED4unjF8EoHzBRk5cQphMwuxVY
uFrZmkB8+FJ7kNnazQ5ddAH+7uh/w7vxEbch92iEpJxYRT6z9U7Mgw0sqGjzWQjd
sVzCSrWJrOdrHXc65BnAPOpjNDNe1dR8J9Z4a7OZU5NnQqJMT314j2gfGawGDakJ
Vph7S6v4AVmty1Fi4iRbaIamu8KJFrHQb5E1UVD5drrxW6TS0z/3YkrMQ6qA1fBB
Y271mRVq/1ByvJMgPJu7LtIyuGwGJw44RxF0JPLlqRWpsIa+z2cI48dkvwb8k0T1
rNSIj9urOmUEJGF5O8LioUy0vwmxeWF7AgMBAAGjggEtMIIBKTAfBgNVHSMEGDAW
gBSfy3o0Y/NawX6hlhfGZ+eng6TusjAJBgNVHRIEAjAAMCQGA1UdEQQdMBuBGWRl
bmlzLm9zdGVybGFuZEBkaWVobC5jb20wNQYDVR0fBC4wLDAqoCigJoYkaHR0cDov
L2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMDUGCCsGAQUFBwEBBCkwJzAl
BggrBgEFBQcwAoYZaHR0cDovL3d3dy5kaWVobC5jb20vcGtpLzAJBgNVHRMEAjAA
MB0GA1UdDgQWBBQK9y4jVYoCDsL7lhhJKjEP5wv1nTALBgNVHQ8EBAMCBaAwHQYD
VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBEGCWCGSAGG+EIBAQQEAwIFoDAN
BgkqhkiG9w0BAQsFAAOCAgEAB27J8TZvm6g0rtQpv4kqYwzkXOkCt27WHHWzl/JZ
knFwWH4mvlRSrQtKkx8cPb5xqqx7k4qXC7TAef4W5YmnpWDtw7YHQAygAsCV1+i8
uBhdnBVRYkLi0Brsqb/KaDVCFDAYn82kr8OlDaVl5GazIF5rTTUFVT7QEUewf5e7
Ej4tkepIMP8DW0mM9VRdiSd+DFQQQsQR91nJZS+Gd0jT2tW6SVtZEGnsdgKi9VOw
+/u7TPynQA3m70zel9t0RySfc5bfZGqEBK/nqU2g5n/qaHKT9cMM8vTAJOmzMv4W
p7j6RF851h+6c4kH0UsUR9LdbXsKS0KsKTmjPbmbuMAWSEafskq5lJdhIybBnGcp
FwOkXw6yLHhvmBQ27hVolbrAgLprlLBm8qLq0G3dPHlLwgnNlD6RAcjaVLOcqH3Q
HWHbKlVg310S75cll1rM+GAudWdsHWxOUbK7R0lwJf/E+FAXciAsExWzCQarpSFI
AYJjvnsYTiSWas6b5L/rKtyeWIz5wJ3ovxFaMglCtGNGh3sqKwVgb0PeGJ/hfXkV
Z3i06A/GFOMDvvZ4kI2OL2wwUftkvi8ID5g2nbX/WQh9y6zhlXtiOlA1IplU+PU3
OHrFL4SBW0X7j1l+9Jl9kGy/ukAr+9nWZ55nUoV/L9C1GLrAO5KF/fDpO2b7lidQ
mWUxggKuMIICqgIBATCBmzCBlDELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVy
bjEUMBIGA1UECgwLRGllaGwgR3JvdXAxGzAZBgNVBAsMEkRpZWhsIE1ldGVyaW5n
IFRLSDEfMB0GA1UEAwwWRGllaGwgTWV0ZXJpbmcgTWFpbCBDQTEgMB4GCSqGSIb3
DQEJARYReDUwOS1jYUBkaWVobC5jb20CAgtcMA0GCWCGSAFlAwQCAQUAoIHkMBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDMwNTEz
MTExNVowLwYJKoZIhvcNAQkEMSIEIBNegcYI0eNvvLw+dxZ1kSdMPkktplAzyzcS
/syjMWfdMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBAMHK9PcXVbZDt1v/nwUvjqlqzBcg7BONbKr6j1zhkLjseNUxkRFQGUtCn3nv
QnXEYSYafbuNNcquMBZZrpDf5+nEmGX6iilU0a50hTadNMn2CtXPpilp/hEFNTPc
pp3uZszCcxY4m/FAYv4vpKE2KEHlmgIiAqoUicuvD/hYIyDHW3d14BF3C1b3/yMI
a33OXXKe8oOQ0ZzHr9OLk/wQ39Y11f6PwqAkRKCiRiCVywTfijqzwgDCYwZ9ebZS
RcdF7GSURtvscDUNUJs6n0POhCqw2FqxmGynGoNTQbZ1+8t5owhlX9yQ4EJ/1BnH
O+PliAVwoGZw0PpIKqoSqIL49ts=

------DD443D2E8FF77FCCECB1735AE1257902--



