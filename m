Delivery-date: Tue, 10 Jan 2023 16:36:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGfV-007tf9-4W
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:36:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGfT-0007Lz-1T
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2pAMWqN/hOGJwtaBsiQCZ6GAuxECFM511/tfnmyotwM=; b=DVEIRNL/zrD4vi4QxyNlsLtlXj
	fat6nxE/HwtRGQGwugXdfGtxBflszonkOswW1rkF7DlPJCT0AKUwYVHlQ0xcNL7SSs8iIjLNHtldr
	EmGzoPO5jFGoFKwuCdiKoUWoGHWOK9UCyGS3BkbKB6V8zoxfXBknEUq2ihjMHb1F74ep48TEaxrj0
	g44oCB4ezGNMABtOAyMN2tKT+DFGNMVqcLeLgsdT9Ii+SUNg6iKEZJgAPeTDniIiKEg0eL6v2aTW2
	wnvgThyYNpH5/rgYsxlYofahF+uAV67hiRqFq4SCnnfPO/vD2LG43w5QEyY7xzQ151AeFoqd154PC
	YFDpJfBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGe5-007cGX-6k; Tue, 10 Jan 2023 15:34:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGe0-007cFD-FF
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:34:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pFGdz-0006vV-2B; Tue, 10 Jan 2023 16:34:31 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pFGdy-0007fZ-Rc; Tue, 10 Jan 2023 16:34:30 +0100
Date: Tue, 10 Jan 2023 16:34:30 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110153430.GA26065@pengutronix.de>
References: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
 <78914b10-2226-1eb7-3aff-35621bacf755@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
In-Reply-To: <78914b10-2226-1eb7-3aff-35621bacf755@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_073432_530648_CA6C1E7B 
X-CRM114-Status: GOOD (  23.93  )
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2023 at 04:23:11PM +0100, Ahmad Fatoum wrote:
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
>I assume this is a fix and should go into master?

Yes. The earlier the better.

>Could you shortly describe the symptoms?

When setting up an payload (bulk, iso, ...)  endpoint with the
multiplier of 1 (usual use case) the hs_ep->mc is set to 0, the
dedicated fifo setup in ep_enable is not calculating the values right
since the "size =3D hs_ep->ep.maxpacket * hs_ep->mc" is wrong.


>Cheers,
>Ahmad
>
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

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmO9hYQACgkQC+njFXoe
LGSjGQ/+Nb60GjZmHojzrNmAq9Ux+h2b+5I+zaCaDBHFvnpuf0RucAYrPSX6O70T
bD0XW0T5SSDsr3H7cOUFAugAuZgt9zAgBvKFl58FGyrTTVjg0OqEkvaw7wG86oH0
jFGWr6zS00pCP54/AWub7Fv28JEtuv4ir3hSiI7diw6gJqNA19oo89ni0fnBE+7y
pyCDWC882FScGmCmLX/qFM/kxqIXNTXHq27NrcHd/bLddp2k1XijV29fdoKTiN8u
TNx9EFAZQpFhM31qHSICzD2iqMNRcfRPwbz/I5byyKqnJfVyuEgqC+fDY+SSSgPI
B5Xy233Ph4M3qzNhjnwfY7FfT3s1impRkNw2oCcRMX+rt+TW8s5+CW4MsddXthxD
6FmT24vnhR+pSouXLNOzx3zojeuxxMwg5oHOpplnF8tPqQFGAljQGuTSozjys8Gh
TVGjG61MkA2TIUPQJC44Cpgz+6cE8Xe1ojxJYj4RIE5VsgLTpRwuJ7oMjE44ZSd/
0CDwMNW2OL8TkghNmV1qQa0ijIffZaJi7XKoqzu6+N0j6eufTcCPf8FBVRgp0uW0
XKT38teNflMmLhUgf/MjYT99t0TMkle7TBeANAmVaVboqKWg57JIP1GUdkBEM5cu
7+y8cBfDurMot+LlT5ksTEgTC9MAHw1yM6fJAoLrJgJ7VIwWd/E=
=T5lm
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


