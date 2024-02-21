Delivery-date: Wed, 21 Feb 2024 08:47:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rchKE-00GzDL-1Y
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 08:47:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rchKD-00040s-Da
	for lore@pengutronix.de; Wed, 21 Feb 2024 08:47:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rSYTil5fFAutbionYMVhCkmXXqRDVcLdKt+Sm6Luaqo=; b=YEDenrxReGIlLv+/QC4Kshj9kZ
	RijX5BYYWKRzNcf6P3gOzcWkyJzRFxtQlgE7P+QDtSJKblOTPI3rBsnKo74hpUu4HMlkFXbW5bQf/
	MGILu7XH0Gu6MCzxQ7tblxP9+ttT9pb/D+/izCpwpNcfLo5v6PwFy9+Qm146Rc9YHiZ70eYwc4fF7
	YcIKsn8KdntU5ggK5endSgdOCDZ/iB+yN7AO41sT+k4je+dy53O6OUR4DE/G1KEx1uaVPJn+FiVOq
	50M+EtsaSta+tKhZyZbWm/mgxCbhdNUv/v1KQVxl0FzXl7uYhcV0YZ+LCYjUhiRBiaqJk5xHGJsNB
	UWXyqnzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rchJS-0000000HYCs-2Ep0;
	Wed, 21 Feb 2024 07:46:42 +0000
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rchJO-0000000HYBo-2M0b
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 07:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1708501598; x=1740037598;
  h=from:to:cc:subject:message-id:mime-version:date;
  bh=rSYTil5fFAutbionYMVhCkmXXqRDVcLdKt+Sm6Luaqo=;
  b=bUwf7K1vHLWHe99+M0HoMeELhF0Qkk91S/EIfNN384FByvoEcEOyCDRK
   YbdND3YT87DB0tD3xztUiB17hADdfaDQhf5geJV3i0hbZFmPBgyhme9je
   i2mO6tDYhHQH9mT5dJZ8KQLZhSnAIqnPvcE5j0w/rqOGwPqgSPc7IfKBN
   muiPMdmk+BuCuWTIl+ECzf8c4PNg+4XzLD7a4UgscV8ogHtTMT1egPyMD
   FxDEjBuXA7/ZVE9tyYqO0RG0Bud9VyXwoPOzYMXmPaPvD3ei8qQWwG0Bs
   sL0wFRbl/W4iG0kchB53GoErkWPRVvKry9xDO6N5zM+EQox0Cwrcio+02
   Q==;
X-CSE-ConnectionGUID: N1DnvIDESEiIYVVNGQ4hRQ==
X-CSE-MsgGUID: /dSySHmCQUSB56g4/2y+yg==
X-ThreatScanner-Verdict: Negative
IronPort-Data: A9a23:RZNLSq2UPWzYrNr5Q/bD5RVxkn2cJEfYwER7XKvMYbSIpGtil2len
 TNbADbYJbeXIjmmON5rK9ThqxtC/NSA/mJROEEx9HRgCWoVsqIpbvzDfhapYXqeJJ2YQh47t
 cxGO4WddJ1oRSOF+BmnauW78CghhfzRSrOjVreYanwhFF81GH57hUlvx7Y00tdi29G3a+/hV
 b0ehuWGULPy82UlajJ8B9u/gBNzoOyg/3Qbs00lI/xKsV/a0XISCdUUP6X2M3i9Qr5SWOWgQ
 76r8F3CxY+qwvtXIojjyt7GWk0WXqaAek+Nh2tNHaSjjxhG4Cc11+EwLv5bdUQSiwKP2dtrz
 I0Q9t3oITvFRZYg69nxKTEDVXkWAIVG5KPfcz/4rtOMiUHHfnvohf5pCQYuPoxfoo5L7Rp1G
 Y8lxEolNVbb79+L/Y9XatWAp+xyfJHmN9NOty1pkGjTUqZ7HM2TGaySudFW0TxgispCTKqHN
 5sSZAQ0YUWbaXWjGLu15LEWwb303CmvK1W0jHrP+MLbNkCKlFQZPIDFaYeTIprSA5wNwi50n
 0qel0zhGBYWKdeD/jSM93Ool4fnkDjyMG4oPOTQGsVC3hvLmAT/NDVMDQHn+aPj0xbnMz5iA
 xd8FhQG/PFaGHODHoGVsy2Q+BasohMaUtxMJOw2gCnlJn38ulvx6sAsF1atWfR+3CMEbWVCO
 myhxrsFMQdSXIi9EhpxwFs2QQSaYkD5JUdaDcMNoJBsD9PL+OnfhTqXJjpv/TLcYnQY1lgcz
 hjTxBXSiYn/guYtjom943HrrgmBp7n4cDATyTyLXlicu1YRiI6NP+RE6HDX6ORLI5nBFB+Ku
 2Ic3cSf4eAKS5qKkURhQs1URPf5vbDcYHuF2gQH85oJrlxB/1avcIZR+3d5P1tkKMINfzPBb
 E7euQcX75hWVJevRf8vO9jpUZp0pUTmPZPpbeHvTt9lW6VKXlLZ830pP1/Tzm+4xSDAlol6Y
 /93a/2EAXscCL8hyyGqSv0Z2Lkn7i87zGLXA5v8ynyP27OEaXSSWZ8BMUCSdaY46q2eqQnY+
 toZMNGFoz1WFuP3fi7K9KYLIFYFMGQhApb3u4pbe4arOApnMHksDfDM3akmfY112ahY/s/B8
 niVRk9f0kH+njvMLgDiV5x4QL/qT51wsipheyAtMFasnXMke57HALojSqbbtIIPrIRLpcOYh
 dFfEylcKpyjkgj6xgk=
IronPort-HdrOrdr: A9a23:EgG44K6cu4QJeUrJhgPXwPbXdLJyesId70hD6qkRc31om6mj/K
 qTdZsgpHzJYVoqNU3I4OrwXpVoIkmzyXcW2+Us1N6ZNWHbUAHBFvAa0WKI+VLd8kPFltK02c
 9bAspD4NCZNykcsS7xiDPIdurJz7G8gcSVuds=
X-Talos-CUID: 9a23:kJaPHWAw02XiF9T6Ew8+2EgKO+wISVDc7UbuHWmXMDppcoTAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3AP3aFKA2uNGR2GTXln/Wl82lSczUjpKiVGXstlL4?=
 =?us-ascii?q?/hvKuaHJ/Z3DHnXemTdpy?=
X-IronPort-AV: E=Sophos;i="6.06,175,1705359600"; 
   d="p7s'?scan'208";a="80020266"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>, 
	Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander
 Dahl <ada@thorsis.com>
Message-ID: <6d3f7b365e1c4683912e8dc74c845721@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----74E5C6CC7A0FCC4FBECFA0A1C226553C"
Date: Wed, 21 Feb 2024 08:46:33 +0100 (CET)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_234639_069823_DE2134EC 
X-CRM114-Status: GOOD (  42.28  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc
 created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an S/MIME signed message

------74E5C6CC7A0FCC4FBECFA0A1C226553C
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

It took me a while to think about it.
First I would like to explain my current boot process and then how I =
think
it would like with your suggestion.


Now:

Disk layout:
- rpi boot fat: dt-2nd.img, barebox-dts, rpi-elf, config.txt
- root A
- root B

Boot process:
- rpi boot loader
	* load dt-2nd.img and dt
	* read Hat Eeprom
	* apply fixups to dt
- barebox with dt from r2
	* bootchooser select A or B
	* load kernel and dt from A or B
	* copy stuff to kernel dt from barebox internal dt as fixups
- linux boot


Your approach:

Disk layout:
- rpi boot fat: bb-rpi.img, some-dts, rpi-elf, config.txt
- root A
- root B

Boot process:
- rpi boot loader
	* load bb-rpi.img and dt
	* read Hat Eeprom
	* apply fixups to dt
- barebox with built-in dt
	* bootchooser select A or B
	* load kernel and dt from A or B
	* copy stuff to kernel dt from /vc.dtb as fixups
- linux boot

I can remember that I tried to implement the fixups as script in the
environment first, but switched to C somewhen.
I can not recall the reason, sorry.
I guess it was related to recursive copy.
The C code uses of_merge_node or something like that, which is not =
available
as command, I think.
If we can keep the patches an just do something like if /vc.dtb then =
apply
fixups, I would be fine with your approach.
But I guess this almost exactly matches the `if(!IS_ERR(root))
rpi_vc_fdt_parse(root);` approach.
If you just revert the patches, I guess I would have to find a way to do =
it
in script.

Regards, Denis

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de>=20
Sent: Tuesday, February 20, 2024 4:33 PM
To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>; Roland Hieber
<rhi@pengutronix.de>; Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org; Alexander Dahl <ada@thorsis.com>
Subject: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc
created nodes

[EXTERNAL EMAIL]
=20

Hello Denis,

On 20.02.24 09:16, Denis OSTERLAND-HEIM wrote:
> Hi,
>=20
> I think so, too.
> I think that my mistake was in =
5ea6e19737e10973ce2cf785970e32562d9ee8f1.

Yes.

>> @@ -379,17 +381,17 @@ static void rpi_vc_fdt(void)
>> 		if (oftree->totalsize)
>> 			pr_err("there was an error copying fdt in pbl:
> %d\n",
>> 					be32_to_cpu(oftree->totalsize));
>> -		return;
> This return previously avoided a call of rpi_vc_fdt_parse().
>=20

[snip]

>> 	rpi_env_init();
>> -	rpi_vc_fdt();
>> +	root =3D rpi_vc_fdt();
>> +	rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
> Now rpi_vc_fdt_parse() is called in both cases.
> So, it should be:
> 	if (!IS_ERR(root))
> 		rpi_vc_fdt_parse(root);
>> 	rpi_set_kernel_name();
>>
> ...
>=20
> Or do I miss something?

Now that I think of it, I think the commit should just be reverted.
I don't see the utility of using barebox-dt-2nd.img on the Raspberry Pi:

  - If the board is already supported, use barebox-raspberry-pi.img, =
which
    has the DT built-in.

  - If the board is not supported , use barebox-raspberry-pi.img, which
    will take the outside DT and save it where the board code expects =
it.

What do you think?

Thanks,
Ahmad

>=20
> Regards, Denis
>=20
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Sent: Monday, February 19, 2024 10:43 PM
> To: Roland Hieber <rhi@pengutronix.de>; Denis Osterland-Heim=20
> <denis.osterland@gmail.com>
> Cc: barebox@lists.infradead.org; Denis OSTERLAND-HEIM=20
> <denis.osterland@diehl.com>; Alexander Dahl <ada@thorsis.com>
> Subject: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc created=20
> nodes
>=20
> [EXTERNAL EMAIL]
> =20
>=20
> Hello Roland,
>=20
> On 19.02.24 20:14, Roland Hieber wrote:
>> Hi,
>>
>> On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim wrote:
>>> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>>
>>> The video core creates some additional nodes.
>>> This code takes over this values.
>>> The /hat node is only there if an raspi hat with EEPROM is detected.
>>>
>>> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>> =A0arch/arm/boards/raspberry-pi/rpi-common.c | 39
>>> +++++++++++++++++------
>>> =A01 file changed, 30 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
>>> b/arch/arm/boards/raspberry-pi/rpi-common.c
>>> index ceafd55a56..713fad78c9 100644
>>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>>> @@ -264,19 +264,37 @@ static enum reset_src_type=20
>>> rpi_decode_pm_rsts(struct device_node *chosen,
>>> =A0
>>> =A0static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>>> =A0{
>>> -=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_chosen =3D data;
>>> -=A0=A0=A0=A0=A0=A0=A0struct device_node *chosen;
>>> +=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_node =3D data;
>>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *node;
>>> +=A0=A0=A0=A0=A0=A0=A0struct property *pp;
>>> =A0
>>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_create_node(root, "/chosen");
>>> -=A0=A0=A0=A0=A0=A0=A0if (!chosen)
>>> +=A0=A0=A0=A0=A0=A0=A0node =3D of_create_node(root, =
vc_node->full_name);
>>> +=A0=A0=A0=A0=A0=A0=A0if (!node)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -ENOMEM;
>>> =A0
>>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, "overlay_prefix", =
chosen);
>>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, "os_prefix", =
chosen);
>>> +=A0=A0=A0=A0=A0=A0=A0for_each_property_of_node(vc_node, pp)
>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_node, =
pp->name, node);
>>> =A0
>>> =A0=A0=A0=A0=A0=A0=A0=A0return 0;
>>> =A0}
>>> =A0
>>> +static struct device_node *register_vc_fixup(struct device_node=20
>>> +*root,
>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const char =
*path) {
>>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *ret, *tmp;
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0ret =3D of_find_node_by_path_from(root, path);
>>> +=A0=A0=A0=A0=A0=A0=A0if (ret) {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp =3D of_dup(ret);
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp->full_name =3D =
xstrdup(ret->full_name);
>>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fd=
t_fixup, tmp);
>>> +=A0=A0=A0=A0=A0=A0=A0} else {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_info("no '%s' node =
found in vc fdtn", path);
>>> +=A0=A0=A0=A0=A0=A0=A0}
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0return ret;
>>> +}
>>> +
>>> =A0static u32 rpi_boot_mode, rpi_boot_part;
>>> =A0/* Extract useful information from the VideoCore FDT we got.
>>> =A0 * Some parameters are defined here:
>>> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct=20
>>> device_node
>>> *root)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0free(str);
>>> =A0=A0=A0=A0=A0=A0=A0=A0}
>>> =A0
>>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_find_node_by_path_from(root, =
"/chosen");
>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/system");
>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/axi");
>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/reserved-memory");
>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/hat");
>>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/chosen/bootloader");
>>> +=A0=A0=A0=A0=A0=A0=A0chosen =3D register_vc_fixup(root, "/chosen");
>>
>> This throws a lot of new warnings and errors on our RPi 3B:
>>
>>     barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
>>     Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6
>>
>>     Board: Raspberry Pi 3 Model B
>>     deep-probe: supported due to raspberrypi,3-model-b
>>     netconsole: registered as netconsole-1
>>     bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
>>     bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
>>     mci0: detected SD card version 2.0
>>     mci0: registered disk0
>>     state: New state registered 'state'
>>     state: Using bucket 0@0x00000000
>>     malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
>>     WARNING: no property 'serial-number' found in vc fdt's '' node
>>     no '/system' node found in vc fdt
>>     no '/axi' node found in vc fdt
>>     no '/hat' node found in vc fdt
>>     no '/chosen/bootloader' node found in vc fdt
>>     WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
>>     WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen'
node
>>     WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
>>     WARNING: 'pm_rsts' value not found in vc fdt
>>     ERROR: Won't delete root device node
>>     environment load /boot/barebox.env: No such file or directory
>>     Maybe you have to create the partition.
>>
>> Do you have any idea what is going on here?=20
>>
>> I also don't see /vc.dtb, which should have been created. I have
>> 'vc.kernel: kernel7.img' in the 'global' output, but nothing else=20
>> starting with vc.*.
>=20
> I think that a non-existent /vc.dtb is expected if there's no DTs in=20
> the boot partition as is the case with DistroKit (except for rpi4) or=20
> if using barebox-dt-2nd.img.
>=20
> I think the info/warning messages should just be dropped.
>=20
> Cheers,
> Ahmad
>=20
>>
>>  - Roland
>>
>>> =A0=A0=A0=A0=A0=A0=A0=A0if (!chosen) {
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_err("no '/chosen' =
node found in vc fdtn");
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto out;
>>> =A0=A0=A0=A0=A0=A0=A0=A0}
>>> =A0
>>> -=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fdt_fixup, =
of_dup(chosen));
>>> -
>>> =A0=A0=A0=A0=A0=A0=A0=A0bootloader =3D of_find_node_by_name(chosen, =
"bootloader");
>>> =A0
>>> =A0=A0=A0=A0=A0=A0=A0=A0str =3D of_read_vc_string(chosen, =
"bootargs");
>>> --
>>> 2.39.2
>>>
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

------74E5C6CC7A0FCC4FBECFA0A1C226553C
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyMTA3
NDYzM1owLwYJKoZIhvcNAQkEMSIEINSCR7d6kREOp4pdCImt32PMvfMSZyoIJXhJ
eikfRsUmMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBAH3eqf9XG5YZWQKO5t2AyKImfM1EbToQBZZUL8w/FBP81MlqDqWpvYOC/cF6
8Zja9z886N/JCcYIN7Eyt//9utqc2ZuqF1asbdcfE4Il2lEZ36WRMH3x66Q+pE13
7K619Dox6rT7zIbeDUjCic1YjrzVW3N5veu30AJZ1uErOVpq+ua/wF4bbzRQzkiN
IdyfTkCxi6hs6vD7qj/j647IXslI7GmEFUhsIBkmEnF88ThOpDXKrjaYTuRzqHDe
kOYulQlmpPSPaZSdaAFxUhhvmH2BaPy9IZI1ueQtTe4Skq9G0npxb/huQOu89SOT
XVwnYYdbj8cwHFdMjtFCRCNPagM=

------74E5C6CC7A0FCC4FBECFA0A1C226553C--



