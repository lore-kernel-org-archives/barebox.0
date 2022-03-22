Delivery-date: Tue, 22 Mar 2022 09:31:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZv1-002Ljt-MZ
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 09:31:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWZv3-0006KW-LH
	for lore@pengutronix.de; Tue, 22 Mar 2022 09:31:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UffFbKK68Sdq4t1ZJGtKpejqqW2qD4KgEMJePFMuqz0=; b=5GqEC2lsXH2KwBWDGOivpVLMGv
	llmoBlIgShgp3XYeC+uRzv9eQPlmtxoggrPDzW23Et4Z3NI2mmZ5AZrV1kgzSkSizQG8QJHlj1omS
	brOESrGoJcx5kUCjQuzNDOhdfCRSnKzA9SHewusUm1pZPavLSNEaJvi/cbrFafQ6D+Q3Gei2h/q9h
	wdXmlqsBYLqBrYZnGqx1dC5PjWwRg+OsE+mfiM6MOKfiQZWzjHspm2bbwzIpDrrcQVsbJInktg6ug
	/UBSZaqzw37I/yMTPEj25o0UwDwhvOjPsBlzS3K2n13aX85HOa7VlvAlDLKBZIgH+7dk4mrzhoPsg
	/biEXnFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWZtj-00APay-3w; Tue, 22 Mar 2022 08:29:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWZtN-00APWF-K3
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 08:29:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nWZtM-0005zO-Bi; Tue, 22 Mar 2022 09:29:24 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nWZtM-0005Ff-0Y; Tue, 22 Mar 2022 09:29:24 +0100
Date: Tue, 22 Mar 2022 09:29:23 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, Sascha Hauer <sha@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <20220322082923.GL11246@pengutronix.de>
References: <20201221003251.83042-1-ahmad@a3f.at>
 <20201221003251.83042-2-ahmad@a3f.at>
 <20210106100543.GO19063@pengutronix.de>
 <20220321221717.GJ11246@pengutronix.de>
 <4bbe2758-ff16-6694-8bad-b8df2c254a48@pengutronix.de>
 <20220322081905.GK11246@pengutronix.de>
 <1c74b901-fa87-e922-0f37-e50478ac905b@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1c74b901-fa87-e922-0f37-e50478ac905b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:26:53 up 101 days, 17:12, 75 users,  load average: 0.08, 0.12,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_012925_710501_98944E01 
X-CRM114-Status: GOOD (  31.31  )
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
Content-Type: multipart/mixed; boundary="===============7131823416659194519=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: dwc2: Add support for optional usb phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============7131823416659194519==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bFUYW7mPOLJ+Jd2A"
Content-Disposition: inline


--bFUYW7mPOLJ+Jd2A
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable



On Tue, Mar 22, 2022 at 09:25:12AM +0100, Ahmad Fatoum wrote:
>On 22.03.22 09:19, Michael Grzeschik wrote:
>> On Tue, Mar 22, 2022 at 06:35:22AM +0100, Ahmad Fatoum wrote:
>>> On 21.03.22 23:17, Michael Grzeschik wrote:
>>>> On Wed, Jan 06, 2021 at 11:05:43AM +0100, Sascha Hauer wrote:
>>>>> On Mon, Dec 21, 2020 at 01:32:50AM +0100, Ahmad Fatoum wrote:
>>>>>> Linux doesn't seem to enforce a fixed order between phy_init and
>>>>>> phy_power_on. The Linux dwc2 driver does power_on and then phy_init,
>>>>>> which is the inverse of what barebox is currently doing.
>>>>>>
>>>>>> The PHYs normally used with dwc2 are written with this in mind.
>>>>>> For example, our stm32-usbphyc driver fails to disable:
>>>>>>
>>>>>> =A0 ERROR: stm32-usbphyc 5a006000.usbphyc@5a006000.of: PLL not reset
>>>>>> =A0 ERROR: phy1: phy exit failed --> -5
>>>>>>
>>>>>> Because Linux does exit -> power_off, but barebox does power_off ->
>>>>>> exit.
>>>>>>
>>>>>> Issue was raised upstream:
>>>>>> https://lore.kernel.org/lkml/6cd01e79-fdc0-3bd4-32b5-a85142533f8a@pe=
ngutronix.de/T/#t
>>>>>>
>>>>>> Until this is settled, swap the order to follow what Linux does.
>>>>>> This is suboptimal, because it means controller drivers have differe=
nt
>>>>>> order of the operations and that you can't combine arbitrary PHYs and
>>>>>> controllers, but it seems unlikely we will support combinations that
>>>>>> aren't supported by Linux in the first place anyway.
>>>>>
>>>>> This is valuable information and I don't want it to be lost, so inste=
ad
>>>>> of applying this as a fixup I rewrote the subject to:
>>>>>
>>>>> usb: dwc2: swap order of phy_init and phy_power_on to what Linux does
>>>>>
>>>>> and applied it as a separate patch.
>>>>
>>>> With this patch applied, some stm32mp1 do seem to timeout when
>>>> addressing the core.
>>>>
>>>> WARNING: dwc2 49000000.usb-otg@49000000.of: dwc2_core_reset: Timeout! =
Waiting for Core Soft Reset
>>>> ERROR: dwc2 49000000.usb-otg@49000000.of: probe failed: Connection tim=
ed out
>>>>
>>>> When I revert this patch. Everything works fine again.
>>>>
>>>> Is it possible that we can revert it in mainline now?
>>>
>>> Since 0e37f94fbe1b ("phy: stm32: sync with upstream"), the phy-stm32-us=
bphyc now
>>> has no poweron/poweroff callbacks, so a revert seems to only slightly c=
hange
>>> timing. I'd suggest you dig some more.
>>
>> That is not true. phy_power_on also enables the phy_regulator. Changing
>> this order has the effect that the regulator is enabled after or before
>> phy_init call.
>
>Oh, good point.
>
>>>> How can I reproduce the case this was fixing in the first place?
>>>
>>> The case was that barebox calls poweron/init in a different order than =
Linux.
>>> This point is moot now though because poweron is no longer provided by =
the
>>> driver.
>>
>> Still not true, though.
>
>Isn't this the same order Linux uses? Powering on regulator and then phy_i=
nit?
>Why does it lead to issues in barebox, but not in Linux?

I have no clue so far. Especially as this seems to have implications on
the platform I am working on but not on the dk2. Although both use the
same st,stpmic1 node vdd_usb for the phy_regulator.

Regards,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--bFUYW7mPOLJ+Jd2A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmI5iOEACgkQC+njFXoe
LGQ/CxAAm3eoKqBU/l6njwiWOvKfYEMDRFbK1xysFBab4xPAKgjX52HXuNFCFhtu
Md+i2f+vqd150hrYa43tRnF1CYFG4XMtG+TU99OcxrnS0KV7mI+Q9cE0fKCrf3/m
H3PNL6SxEZS5amLP72jlBSuvsIBDcwYqo8L9QEl5wqOS2EP8sFM+xwOQIU8zPapP
uKaz4stcb9GABl09OLiwM4uN5okWlYqoG7B4f5AlSFyQlg/2kChX0R4y+R8CMn35
010RJpAjGSEnv0prcuxDgmJ1wUbEu4lLJzjb2WBpegmeawD73dC97iFqc5aLK6Jh
fkHy7nUfvf/j75mERqOG+TPJoIB6ahsml0J/q+sZ9n8kLMeheQJu5ckw2mIJRRbT
R5SKEFK9YUXyIgll0ltoX1faQ1ABUjWxRS35Vfp8PRsAAypEbaPrVBYIBcmJHfnB
6Wv3pRM04Iek0Td00Lq/kPdMXuRPbNJBA3jVmxf4FI1m7BSTpyamBEc8p/dxoLyj
ejGKhPL5u0yZapXbSuE6W9BWgQVK6tI2Sh4wWzLbe/Jd8PINCL3tZypmGk1+kE4D
iwPeQNwOFxS/j6zUj/wLx34IAYNVgy9Vxs4q3ufl5wvTKj2oYJwDrYcpdhjP56Rf
LIQQQwoXQeMQUbKjqGgYnng9nK84/+F+nFeS4hv1y9xXqZVERPs=
=w4pw
-----END PGP SIGNATURE-----

--bFUYW7mPOLJ+Jd2A--


--===============7131823416659194519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7131823416659194519==--


