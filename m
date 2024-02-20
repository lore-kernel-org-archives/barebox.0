Delivery-date: Tue, 20 Feb 2024 09:24:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcLQh-00Fm6K-2T
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 09:24:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcLQg-0005Is-QW
	for lore@pengutronix.de; Tue, 20 Feb 2024 09:24:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ST4VJ5JxkI2MRf20MME7PFqrto0W63K3zI6pCZdYyk8=; b=tipvM+Qf53Z9rlQ41IyHGmAQWQ
	3EXYDiDa4Tz2LoD0ej2Hx2BfFmHezDaDNyMyA1mB5m/FTRJwEl8CRsIVijtYDWblmECuILYmnVIuN
	Rvq88zvxASrJ5jVIzRx+OWKp3OuGKEqTLdRtbiQZRBxkDxBfF/Qmdy5TtMxqGwf7vrS+wLpqZMm8W
	6ImIchF1wUA3FrqbtkKFay5DBs7PP04yUlNjdDRcBrUbjv1Gim6kbJAvmlInBSpjtjsU7W2Ym5fWO
	HbFCAT4LHLAHDfny+1mo87E2xzSatyXiKVpyrwIVfl8rH2wFm37OODkJiiwWA2S9dB5xONnY7kCdx
	CXNhKT5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLQ3-0000000DgD7-2cjA;
	Tue, 20 Feb 2024 08:24:03 +0000
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLQ0-0000000DgCE-1XJJ
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 08:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1708417440; x=1739953440;
  h=from:to:cc:subject:message-id:mime-version:date;
  bh=ST4VJ5JxkI2MRf20MME7PFqrto0W63K3zI6pCZdYyk8=;
  b=DeJWtl+6zZr66WXI/NM70DtxzWwrx1W/l0Y/jNfoOLVM27xLVwwFsbcU
   wr7eko5IrM2z4LhJROgBBnIFyW6ZoBSwgCrf7nTVYSPHck1W2qMwmf/3s
   eIsulLDW+q4/YNEphaKGKo/XOTSLcHPBuPhRMeAEUrlA8uUoP6WKeBgEu
   pGvhoou6vh39LnaVonHqHEfIYTA7bDtVAnaa1X+Csac2K5aT56AN/i0Dd
   3s7OmwDDrpyp8Z3taELR6qgeqLFjj+oCtnwHaLzo5emuC1H+He88UkL/f
   V2svEgYqGlPKLf8INAmMnIOHFpmrfCJbNFtHyPkcaW4QMHH2Dbiy0nASd
   A==;
X-CSE-ConnectionGUID: 0H1zvpDSQa6AWkF2xE++SQ==
X-CSE-MsgGUID: +5KV29hlSmqvTqgn5zMK8Q==
X-ThreatScanner-Verdict: Negative
IronPort-Data: A9a23:RHZxk69n7XCaSAryPTeiDrUDRn6TJUtcMsCJ2f8bNWPdYAtShnVHk
 jtMCC3fZaGVKn+1IIo1b5D1rB1Y6NKQjINT/DAc7nRsSn8MsZXebTjyBkn5NHLPf5aYRk9ut
 5lPO4HJd5o+E3XRqEanbuO48HMjj/zXS7ChVbSYMCkuHAI8E3pxg0w4wbE13NNmj4KyUlzlV
 b8ezSH6EAbNN2lcaTNMu8pv0S9HvOjuoGFf+V8zdOsNsF7Tl31TB5UaYqqrKzzkQcxUKej8T
 PzHlNmFEhjiE2QQ5qmNyfCjGnAiQqLOJVrJzXlbSrPkjhlPpih02aE+c/EGbQBLiHCJqNY3w
 89J7cHzCF9BAkG3owhubvUiO3o4ZcV70L/bPWDt9ouM0FKAf3rhw/EoB0YzepUb+6EvaV2ij
 sf0Ww3hFDjYwbre/Y+GdwVMuigCBJexbdtE4y8ww2rUUPx7GsHIG/uUvdZU0T5t2soXTPvSO
 5NJODFiUk/NMkZFUrs15DDSv8/13CWlI20AwL6xjfBqi4QG5FUpiNABCPKMJ5rSA50Txx7Ez
 o7/1zyRKgkAM9CCwiay/Huph+ve9Qv2Q4t6+IeQr5aGu3XNgDRNYPEqfQHj+6Xh0BTmA4s3x
 3E8oULCk4BjrSRHcfGtB3VUkFbc1jYAVtxZFfEN6Q3l4sI4NC7AWwDo5hYYADAXnJdeqQ4Cj
 zdlrPuwbdBbi4B5fFrGnluiQZFeDgBORYMKTXdsoQLoeLAPqqlr5v7EZo4L/KJYErQZsNw/q
 tyHhHFWulkdsSIE//2bpELZmx6Xn5GXZzE2yF/HcyHm1TosMeZJZ6TwgbTaxfpFPo2WUQHb+
 nMDgdDY4OEDDZXLnyuIKAkPNOjxoabfdmSMxwc0RfHN9Bz0k5KnVYxd5jBlYkByLssefTbvb
 GffuA5R4NlYO37CgapfPNPhWp5znPOI+dLNFa33UIAfYpxKcRaZwDhhYxOC+kO9qR15+U04E
 dLBGSq2Nl4WBKJm13yxXPsQy7siwCwWymbaRJS9xBOiuZKUbWSYQ7AVGF+PdfwiqqKCrh/c/
 9tWO42N0Ro3eOS4bCDL9pMWBUgHK3cmGYrxrc1HMOKOSiJ8GGAJE/LXzq49YYtjnrQTmuqg1
 nixU2dEyF3lnnzcbw6NbxhehKjHUZNtpn0kZXZqMVel23xlaoG19M/zaqcKQFXuz8Q7pdYcc
 hXPU5/o7ihnItgfxwkgUA==
IronPort-HdrOrdr: A9a23:ZKKSEaqgDdaDg3mULDh/chUaV5r+eYIsimQD101hICG9E/bo6P
 xG+c5x6faaslcssQ4b6La90cW7LU80tqQFmLX5RI3SITUO4VHYUL2KjrGSvQEIeRefygcH79
 YZT0EWMrSZZ2SS6/yU3ODSKbsdKbe8npxB+I/lvg1QpChRGtpdBtNCe2Sm+jEffnggOXNALu
 v+2iOxnUvFRZ2/VLXfOkU4
X-Talos-CUID: =?us-ascii?q?9a23=3A3fZmvmhghxXTF5Rs7WxeZ1x0ATJuKl2E3mnID3S?=
 =?us-ascii?q?BADhAd767E0+9u+Bfqp87?=
X-Talos-MUID: 9a23:2uoI8gSvCw1Pj7eARXSv2RJcbpZo55+rEV4xiJoA5tuhFnxJbmI=
X-IronPort-AV: E=Sophos;i="6.06,172,1705359600"; 
   d="p7s'?scan'208";a="79892193"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>, 
	Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander
 Dahl <ada@thorsis.com>
Message-ID: <a5fe06de7d1b497f971f638a397efe20@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----EDBF63FD9B1DF10E113C597AC77E2371"
Date: Tue, 20 Feb 2024 09:16:37 +0100 (CET)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_002400_943624_B45FC755 
X-CRM114-Status: GOOD (  31.39  )
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
Subject: RE: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc created
 nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an S/MIME signed message

------EDBF63FD9B1DF10E113C597AC77E2371
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I think so, too.
I think that my mistake was in 5ea6e19737e10973ce2cf785970e32562d9ee8f1.

...
>@@ -363,7 +365,7 @@ out:
> 	return;
> }
>=20
>-static void rpi_vc_fdt(void)
>+static struct device_node *rpi_vc_fdt(void)
> {
> 	void *saved_vc_fdt;
> 	struct fdt_header *oftree;
>@@ -379,17 +381,17 @@ static void rpi_vc_fdt(void)
> 		if (oftree->totalsize)
> 			pr_err("there was an error copying fdt in pbl:
%d\n",
> 					be32_to_cpu(oftree->totalsize));
>-		return;
This return previously avoided a call of rpi_vc_fdt_parse().

>+		return ERR_PTR(-EINVAL);
> 	}
>=20
> 	if (magic !=3D FDT_MAGIC)
>-		return;
>+		return ERR_PTR(-EINVAL);
>=20
> 	size =3D be32_to_cpu(oftree->totalsize);
> 	if (write_file("/vc.dtb", saved_vc_fdt, size))
> 		pr_err("failed to save videocore fdt to a file\n");
>=20
>-	rpi_vc_fdt_parse(saved_vc_fdt);
>+	return of_unflatten_dtb(saved_vc_fdt, INT_MAX);
> }
...
>@@ -480,7 +483,8 @@ static int rpi_devices_probe(struct device *dev)
> 	bcm2835_register_fb();
> 	armlinux_set_architecture(MACH_TYPE_BCM2708);
> 	rpi_env_init();
>-	rpi_vc_fdt();
>+	root =3D rpi_vc_fdt();
>+	rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
Now rpi_vc_fdt_parse() is called in both cases.
So, it should be:
	if (!IS_ERR(root))
		rpi_vc_fdt_parse(root);
> 	rpi_set_kernel_name();
>
...

Or do I miss something?

Regards, Denis

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de>=20
Sent: Monday, February 19, 2024 10:43 PM
To: Roland Hieber <rhi@pengutronix.de>; Denis Osterland-Heim
<denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org; Denis OSTERLAND-HEIM
<denis.osterland@diehl.com>; Alexander Dahl <ada@thorsis.com>
Subject: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc created =
nodes

[EXTERNAL EMAIL]
=20

Hello Roland,

On 19.02.24 20:14, Roland Hieber wrote:
> Hi,
>=20
> On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim wrote:
>> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>
>> The video core creates some additional nodes.
>> This code takes over this values.
>> The /hat node is only there if an raspi hat with EEPROM is detected.
>>
>> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> =A0arch/arm/boards/raspberry-pi/rpi-common.c | 39=20
>> +++++++++++++++++------
>> =A01 file changed, 30 insertions(+), 9 deletions(-)
>>
>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
>> b/arch/arm/boards/raspberry-pi/rpi-common.c
>> index ceafd55a56..713fad78c9 100644
>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>> @@ -264,19 +264,37 @@ static enum reset_src_type=20
>> rpi_decode_pm_rsts(struct device_node *chosen,
>> =A0
>> =A0static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>> =A0{
>> -=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_chosen =3D data;
>> -=A0=A0=A0=A0=A0=A0=A0struct device_node *chosen;
>> +=A0=A0=A0=A0=A0=A0=A0const struct device_node *vc_node =3D data;
>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *node;
>> +=A0=A0=A0=A0=A0=A0=A0struct property *pp;
>> =A0
>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_create_node(root, "/chosen");
>> -=A0=A0=A0=A0=A0=A0=A0if (!chosen)
>> +=A0=A0=A0=A0=A0=A0=A0node =3D of_create_node(root, =
vc_node->full_name);
>> +=A0=A0=A0=A0=A0=A0=A0if (!node)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return -ENOMEM;
>> =A0
>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, "overlay_prefix", =
chosen);
>> -=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_chosen, "os_prefix", =
chosen);
>> +=A0=A0=A0=A0=A0=A0=A0for_each_property_of_node(vc_node, pp)
>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_copy_property(vc_node, =
pp->name, node);
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0=A0return 0;
>> =A0}
>> =A0
>> +static struct device_node *register_vc_fixup(struct device_node=20
>> +*root,
>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const char =
*path) {
>> +=A0=A0=A0=A0=A0=A0=A0struct device_node *ret, *tmp;
>> +
>> +=A0=A0=A0=A0=A0=A0=A0ret =3D of_find_node_by_path_from(root, path);
>> +=A0=A0=A0=A0=A0=A0=A0if (ret) {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp =3D of_dup(ret);
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0tmp->full_name =3D =
xstrdup(ret->full_name);
>> =
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fd=
t_fixup, tmp);
>> +=A0=A0=A0=A0=A0=A0=A0} else {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_info("no '%s' node =
found in vc fdtn", path);
>> +=A0=A0=A0=A0=A0=A0=A0}
>> +
>> +=A0=A0=A0=A0=A0=A0=A0return ret;
>> +}
>> +
>> =A0static u32 rpi_boot_mode, rpi_boot_part;
>> =A0/* Extract useful information from the VideoCore FDT we got.
>> =A0 * Some parameters are defined here:
>> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct device_node
>> *root)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0free(str);
>> =A0=A0=A0=A0=A0=A0=A0=A0}
>> =A0
>> -=A0=A0=A0=A0=A0=A0=A0chosen =3D of_find_node_by_path_from(root, =
"/chosen");
>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/system");
>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/axi");
>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/reserved-memory");
>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/hat");
>> +=A0=A0=A0=A0=A0=A0=A0register_vc_fixup(root, "/chosen/bootloader");
>> +=A0=A0=A0=A0=A0=A0=A0chosen =3D register_vc_fixup(root, "/chosen");
>=20
> This throws a lot of new warnings and errors on our RPi 3B:
>=20
>     barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
>     Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6
>=20
>     Board: Raspberry Pi 3 Model B
>     deep-probe: supported due to raspberrypi,3-model-b
>     netconsole: registered as netconsole-1
>     bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
>     bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
>     mci0: detected SD card version 2.0
>     mci0: registered disk0
>     state: New state registered 'state'
>     state: Using bucket 0@0x00000000
>     malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
>     WARNING: no property 'serial-number' found in vc fdt's '' node
>     no '/system' node found in vc fdt
>     no '/axi' node found in vc fdt
>     no '/hat' node found in vc fdt
>     no '/chosen/bootloader' node found in vc fdt
>     WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
>     WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen' =
node
>     WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
>     WARNING: 'pm_rsts' value not found in vc fdt
>     ERROR: Won't delete root device node
>     environment load /boot/barebox.env: No such file or directory
>     Maybe you have to create the partition.
>=20
> Do you have any idea what is going on here?=20
>=20
> I also don't see /vc.dtb, which should have been created. I have
> 'vc.kernel: kernel7.img' in the 'global' output, but nothing else=20
> starting with vc.*.

I think that a non-existent /vc.dtb is expected if there's no DTs in the
boot partition as is the case with DistroKit (except for rpi4) or if =
using
barebox-dt-2nd.img.

I think the info/warning messages should just be dropped.

Cheers,
Ahmad

>=20
>  - Roland
>=20
>> =A0=A0=A0=A0=A0=A0=A0=A0if (!chosen) {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0pr_err("no '/chosen' =
node found in vc fdtn");
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0goto out;
>> =A0=A0=A0=A0=A0=A0=A0=A0}
>> =A0
>> -=A0=A0=A0=A0=A0=A0=A0of_register_fixup(rpi_vc_fdt_fixup, =
of_dup(chosen));
>> -
>> =A0=A0=A0=A0=A0=A0=A0=A0bootloader =3D of_find_node_by_name(chosen, =
"bootloader");
>> =A0
>> =A0=A0=A0=A0=A0=A0=A0=A0str =3D of_read_vc_string(chosen, =
"bootargs");
>> --
>> 2.39.2
>>
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

------EDBF63FD9B1DF10E113C597AC77E2371
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyMDA4
MTYzN1owLwYJKoZIhvcNAQkEMSIEICWaOpi+XX1C9SsqsGYhMJztESNDuhTTK7Sv
9zOdM77iMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBABFB1s7wOzyO1ZXW7bqpP01SY2oFc6RKVZuDpshkHcD6vOSdlmGVIxVroKNh
18k3xdXxDQBmBLmuaeG+SVDJxwCniG4qMGtHaYy3FY7bJyWn2bQYVNWGofZlWB0D
oymB3mzK+imZ/lXAZ9uJagTLZXaRlw9X+6OI8YMGT47wUWr+rMEDbQBdoSSVKr7J
R97H8MAwha6T3dcZ8dzVWGvEqEBeRpX5YUEGAIT0ExAkG64DvJNpNtlRFzfid+SP
4RY7n4wa75A+xM+ZJdXvz4+h14TDK6NdJMh27ZlatfudVvP87GcSLgew8vf6/WXW
bZ1yEoqrJPO7g5sIrhW3u7fDKaE=

------EDBF63FD9B1DF10E113C597AC77E2371--



