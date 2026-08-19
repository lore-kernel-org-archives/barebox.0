Delivery-date: Wed, 19 Aug 2026 16:13:05 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwh2O-004t7s-24
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:13:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB0402010F9
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:13:04 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=F1uGcu1e;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wr6rOLwEVhzlt4mBGflO3iQWbQoWyvRlDEbN7uUgOIo=; b=F1uGcu1efzsDM6Qh/lNDjh7k0D
	5jC7c7J5UFngkwjMC7sHl74ZrXAz3kcowruYgXIOS9nZo+DC+8SW+MTFVZpVAc/HCPX4NscsohzUR
	ARK43KousDqrRmnDtuaOH8RPJOF9Eoj3wD5QcpzUgthQ9BRW4ojk8o+/P79TAOy/TpctP9K0oS+Zn
	QajlpESp5w9RjfcomgYR/2gwYuHxFKMRAU8/qWIx7jhF4xFpAkoZr+GRZ5D822zSXD6jqgGEB49lI
	6wE0Lb/0wM8H/rdwwm8Swa1qPcPIJnBDVcyC058Bk0hiGnNgAo8CSQkulysXbACQ4N+iVzoY/zycB
	Ae2TpeYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh12-00000009whG-0Uvk;
	Wed, 19 Aug 2026 14:11:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh0w-00000009wg1-1snd
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:11:37 +0000
Received: from [IPv6:2a01:599:c23:20fa:7ad3:c64d:b867:16dc] (unknown [IPv6:2a01:599:c23:20fa:7ad3:c64d:b867:16dc])
	(Authenticated sender: fpg@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A7BA02010F9;
	Wed, 19 Aug 2026 16:11:31 +0200 (CEST)
Message-ID: <1c592c1d07c9ac368c9c19d1a25ed0a729f18007.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/5] efi: usb: add header for usb-efi
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
	 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Date: Wed, 19 Aug 2026 16:11:30 +0200
In-Reply-To: <3b8a01d2-dd9e-4de2-aa2b-ed5afcb5f309@pengutronix.de>
References: <20260817-v2026-06-0-topic-efi_usb-v2-0-3d45c1782ccc@pengutronix.de>
	 <20260817-v2026-06-0-topic-efi_usb-v2-1-3d45c1782ccc@pengutronix.de>
	 <825db791-decf-448f-a1d0-8368d1f85add@pengutronix.de>
	 <712f43633accc86e3f16b4a1f04beef41cdeadd8.camel@pengutronix.de>
	 <3b8a01d2-dd9e-4de2-aa2b-ed5afcb5f309@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_071134_668149_BB8B0EDC 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 2026-08-19 at 16:03 +0200, Ahmad Fatoum wrote: > Hi
    Fabian, > > On 8/19/26 3:32 PM, Fabian Pflug wrote: > > Hey, > > > > On Wed,
    2026-08-19 at 12:01 +0200, Ahmad Fatoum wrote: > > > Hello, > > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: e1jxjphy7u1aitoq4khchqb8et4mz9o8
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DB0402010F9

On Wed, 2026-08-19 at 16:03 +0200, Ahmad Fatoum wrote:
> Hi Fabian,
>=20
> On 8/19/26 3:32 PM, Fabian Pflug wrote:
> > Hey,
> >=20
> > On Wed, 2026-08-19 at 12:01 +0200, Ahmad Fatoum wrote:
> > > Hello,
> > >=20
> > > On 8/17/26 10:47 AM, Fabian Pflug wrote:
> > > > Convert the spec in [1] to a header, that is useable for barebox.
> > > > The async headers are not defined, since it is currently not planne=
d to
> > > > support async in addition to sync.
> > > >=20
> > > > [1] https://uefi.org/specs/UEFI/2.11/17_Protocols_USB_Support.html
> > >=20
> > > Some nitpicks below. You don't need to resend for just those, but if =
you
> > > are sending a v2, it would be good to address these as well.
> > >=20
> > > >=20
> > > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > >=20
> > > Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > >=20
> > > >=20
> > > > ---
> > > > v2:
> > > > - Fixed wrong type in header for get_string_descriptor
> > > > ---
> > > > =C2=A0include/efi/protocol/usb.h | 66 +++++++++++++++++++++++++++++=
+++++++++++++++++
> > > > =C2=A01 file changed, 66 insertions(+)
> > > >=20
> > > > diff --git a/include/efi/protocol/usb.h b/include/efi/protocol/usb.=
h
> > > > new file mode 100644
> > > > index 0000000000..78953a4fa7
> > > > --- /dev/null
> > > > +++ b/include/efi/protocol/usb.h
> > > > @@ -0,0 +1,66 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > > +
> > > > +#ifndef __EFI_PROTOCOL_USB_H_
> > > > +#define __EFI_PROTOCOL_USB_H_
> > > > +
> > > > +#include <efi/types.h>
> > > > +#include <linux/usb/usb.h>
> > >=20
> > > Nitpick: I would drop this and just predeclare struct devrequest.
> >=20
> > It is also
> >=20
> > struct usb_config_descriptor
> > struct usb_device_descriptor
> > struct usb_interface_descriptor
> > struct usb_endpoint_descriptor
>=20
> as all of these are used behind a pointer, just predeclare them as well
> (don't define them).
>=20

Okay.


> >=20
> > >=20
> > > > +
> > > > +enum efi_usb_data_direction {
> > > > +	EFI_USB_DATA_IN,
> > > > +	EFI_USB_DATA_OUT,
> > > > +	EFI_USB_NO_DATA
> > > > +};
> > > > +
> > > > +//
> > > > +// Error code for USB Transfer Results
> > > > +//
> > > > +#define EFI_USB_NOERROR 0x0000
> > > > +#define EFI_USB_ERR_NOTEXECUTE 0x0001
> > > > +#define EFI_USB_ERR_STALL 0x0002
> > > > +#define EFI_USB_ERR_BUFFER 0x0004
> > > > +#define EFI_USB_ERR_BABBLE 0x0008
> > > > +#define EFI_USB_ERR_NAK 0x0010
> > > > +#define EFI_USB_ERR_CRC 0x0020
> > > > +#define EFI_USB_ERR_TIMEOUT 0x0040
> > > > +#define EFI_USB_ERR_BITSTUFF 0x0080
> > > > +#define EFI_USB_ERR_SYSTEM 0x0100
> > >=20
> > > Nitpick: Add some tabs between the macros and the values for indentat=
ion?
> >=20
> > I could, but clang-format will remove the tabs. And I like to just call=
 it to format the rest and not have the
> > hassle to
> > revert formatting here.
>=20
> Does it also do that, when you sync against an up-to-date .clang-format
> from the kernel?
>=20

Since the only difference are the ForEachMacros. Yes. (Tested it nonetheles=
s)

/Fabian

> Cheers,
> Ahmad
>=20
> >=20
> > /Fabian
> >=20
> > >=20
> > > > +struct efi_usb_io_protocol {
> > > > +	efi_status_t(EFIAPI *control_transfer)(
> > > > +		struct efi_usb_io_protocol *this, struct devrequest *request,
> > > > +		enum efi_usb_data_direction direction, u32 timeout, void *data,
> > > > +		efi_uintn_t length, u32 *status);
> > > > +	efi_status_t(EFIAPI *bulk_transfer)(struct efi_usb_io_protocol *t=
his,
> > > > +					=C2=A0=C2=A0=C2=A0 u8 device_endpoint, void *data,
> > > > +					=C2=A0=C2=A0=C2=A0 efi_uintn_t *length,
> > > > +					=C2=A0=C2=A0=C2=A0 efi_uintn_t timeout, u32 *status);
> > > > +	void *usb_io_async_interrupt_transfer;
> > > > +	efi_status_t(EFIAPI *sync_interrupt_transfer)(
> > > > +		struct efi_usb_io_protocol *this, u8 device_endpoint,
> > > > +		void *data, efi_uintn_t *length, efi_uintn_t timeout,
> > > > +		u32 *status);
> > > > +	void *efi_usb_io_isochronous_transfer;
> > > > +	void *efi_usb_io_async_isochronous_transfer;
> > > > +	efi_status_t(EFIAPI *get_device_descriptor)(
> > > > +		struct efi_usb_io_protocol *this,
> > > > +		struct usb_device_descriptor *desc);
> > > > +	efi_status_t(EFIAPI *get_config_descriptor)(
> > > > +		struct efi_usb_io_protocol *this,
> > > > +		struct usb_config_descriptor *desc);
> > > > +	efi_status_t(EFIAPI *get_interface_descriptor)(
> > > > +		struct efi_usb_io_protocol *this,
> > > > +		struct usb_interface_descriptor *desc);
> > > > +	efi_status_t(EFIAPI *get_endpoint_descriptor)(
> > > > +		struct efi_usb_io_protocol *this, u8 index,
> > > > +		struct usb_endpoint_descriptor *desc);
> > > > +	efi_status_t(EFIAPI *get_string_descriptor)(
> > > > +		struct efi_usb_io_protocol *this, u16 lang_id, u8 string_id,
> > > > +		wchar_t **desc);
> > > > +	efi_status_t(EFIAPI *get_supported_languages)(
> > > > +		struct efi_usb_io_protocol *this, u16 **lang_id_table,
> > > > +		u16 *table_size);
> > > > +	efi_status_t(EFIAPI *port_reset)(struct efi_usb_io_protocol *this=
);
> > > > +};
> > > > +
> > > > +#endif
> > > >=20


