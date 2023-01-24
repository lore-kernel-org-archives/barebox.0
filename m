Delivery-date: Tue, 24 Jan 2023 21:05:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPY8-000o4M-QB
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:05:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPY5-0007td-W0
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:05:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zQ6rnoKAWgFCWLXgevYdcOve/17RsiHcjaGehdDZyK8=; b=cGu8gegi0mtzKOjiyOUjXBqoaP
	AVFl3MADf2vbvhqZOhjjt6zM8YmUNSGQ43JvL/eFbfEAE3N7W3HRk23K8uojNXI7fg+72CbiQyM8T
	aw+ZaDkcOSLjL2bT6vxkVbwK//tAs9X2+KxGS0ead1hc9dM0JIHq/+SVb2W2kmXIGtmfp8lZcK0c5
	qtKCofcEif1yl5JU/sp7q8nCfW5cgzHAljTPGym2q4eTihinPxi3eRDMdhTZ2EIpAEz3duRHJd6Tn
	mNzJ1Z118G2AAvtgjLJMBrN+JAk5nuCWWMjj9p/Jm3ttQb2yhtMv9QxwfwFOY7u7eBuzlAAxMvvRr
	3BR6rSBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPWs-0059cr-It; Tue, 24 Jan 2023 20:04:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPWo-0059cK-3I
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:04:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPWm-0007lH-Kt; Tue, 24 Jan 2023 21:04:20 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPWm-0002sP-Dl; Tue, 24 Jan 2023 21:04:20 +0100
Date: Tue, 24 Jan 2023 21:04:20 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230124200420.GA7611@pengutronix.de>
References: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
 <9eb5ee2c-ce24-b8b2-9a61-a2e48f56fd5e@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
In-Reply-To: <9eb5ee2c-ce24-b8b2-9a61-a2e48f56fd5e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_120422_158388_04A1DA33 
X-CRM114-Status: GOOD (  24.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2023 at 06:33:25PM +0100, Ahmad Fatoum wrote:
>Hello Michael,
>
>On 10.01.23 16:17, Michael Grzeschik wrote:
>> If the multiplier is 0 in the descriptor bitfield the multiplier count
>> is one. For calculating the multiplier count the extra function
>> usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
>> and make multi packages work.
>>
>> While at it, we also remove the USB_EP_MAXP_MULT and
>> USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
>> defined in include/usb/ch9.ch anyway.
>
>This breaks fastboot for me on the STM32MP157-based LXA TAC:
>
>  =E2=94=82barebox@Linux Automation Test Automation Controller (TAC):/ usb=
gadget -A ''
>  =E2=94=82udc0: registering UDC driver [g_multi]
>  =E2=94=82multi_bind: creating Fastboot function
>  =E2=94=82g_multi usbgadget: Multifunction Composite Gadget
>  =E2=94=82g_multi usbgadget: g_multi ready
>  =E2=94=82dwc2 49000000.usb-otg@49000000.of: bound driver g_multi
>  =E2=94=82barebox@Linux Automation Test Automation Controller (TAC):/ dwc=
2 49000000.usb-otg@49000000.of: new address 7
>  =E2=94=82g_multi usbgadget: high-speed config #1: Multifunction Composit=
e Gadget
>  =E2=94=82ERROR: dwc2 49000000.usb-otg@49000000.of: dwc2_ep_enable: No su=
itable fifo found
>  =E2=94=82ERROR: fastboot: failed to enable in ep: Out of memory
>
>Could you look into it?

Yes! We found that the fifo handling on stm32mp1 is not right.
There is a patch for the kernel in discussion.

https://lore.kernel.org/linux-arm-kernel/20230112112013.1086787-1-u.kleine-=
koenig@pengutronix.de/

I just send v2 of this patch with a fix for the fifo
size handling in the local dts of barebox.

https://lore.barebox.org/barebox/20230124200114.3160585-1-m.grzeschik@pengu=
tronix.de/T/#m4440a84c96b72a77d47047c8958788fe475b7440

Can you test the series?

Thanks,
Michael

>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  drivers/usb/dwc2/gadget.c | 9 +--------
>>  1 file changed, 1 insertion(+), 8 deletions(-)
>>
>> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
>> index 7070485410..5a72ba795b 100644
>> --- a/drivers/usb/dwc2/gadget.c
>> +++ b/drivers/usb/dwc2/gadget.c
>> @@ -14,13 +14,6 @@
>>  #define spin_lock_irqsave(lock, flags) (void)(flags)
>>  #define spin_unlock_irqrestore(lock, flags) (void)(flags)
>>
>> -#ifndef USB_ENDPOINT_MAXP_MASK
>> -#define USB_ENDPOINT_MAXP_MASK	0x07ff
>> -#endif
>> -#ifndef USB_EP_MAXP_MULT
>> -#define USB_EP_MAXP_MULT(m)	(((m) & 0x1800) >> 11)
>> -#endif
>> -
>>  static void kill_all_requests(struct dwc2 *, struct dwc2_ep *, int);
>>
>>  static inline struct dwc2_ep *index_to_ep(struct dwc2 *dwc2,
>> @@ -484,7 +477,7 @@ static int dwc2_ep_enable(struct usb_ep *ep,
>>
>>  	ep_type =3D desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
>>  	mps =3D usb_endpoint_maxp(desc) & USB_ENDPOINT_MAXP_MASK;
>> -	mc =3D  USB_EP_MAXP_MULT(usb_endpoint_maxp(desc));
>> +	mc =3D usb_endpoint_maxp_mult(desc);
>>
>>  	/* note, we handle this here instead of dwc2_set_ep_maxpacket */
>>  	epctrl_reg =3D dir_in ? DIEPCTL(index) : DOEPCTL(index);
>
>--=20
>Pengutronix e.K.                           |                             |
>Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmPQOcEACgkQC+njFXoe
LGRVyBAAhJ9IqRZqDv8KwLsAvqM0zCUqZqNVXlfxUPDdzbiGt6Fv4o7iE5jJ1os8
TkWNLPKhjF4bjlKwVICpAamvAZDHt2YWFUt95K4pI4vhl2GBT4JMtNj4tx121xzB
4vVBbOF92mbJy8MURlVNIKSRudbIjpF72mBCKmA3uShmozGLeZpT3W85qs93ovNP
cdvY2k52Tn2KoSqg8VxEE51p2qzSmO/X93HA74NCZwHUO3UrJMm/xJE0HH37pN7E
cVwdLa+0hpWYRQKhISDJjfsvpZOjgdHw0eAplLoTEhRXIAZPRjhZxhj0NMbgnFfD
x3dLFmRBLDURcVWXqUl4lvB4Y/isZhud3cL8LY1jl+HElPF9j/4qbr7IxcLJ24nc
O7ahliiJuoL37exwFqSxL8zPf/DWUj7OkJWjKOKJjNqAeeftTEJ9Owh+gZVDvdlR
XFkjvB+NuowyWOYqRxb3RB6mAOyQvMX42jOoc4SXe4ynfxBk8YneBtQUJJLJR4Ue
Gn4RqwNt2GH5pbfj76XiJtZGHDO7EVEb+lmX+BJd4btSBxcsvVviLr7EspU4cplf
pjfsOAlvMAnRGvWGUPZVptP2sVYUlw+/ES0wuSU2SWkqkYraB8SfOhK6GqxO6o0n
r+WV/e5rUXo2bhlnpNhijny+LSy/3k2wZg8C0Ucwu8i+JGQVpps=
=Ks5k
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--


