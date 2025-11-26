Delivery-date: Wed, 26 Nov 2025 12:17:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODW8-0053Yn-2X
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 12:17:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vODW8-0008Ai-2L
	for lore@pengutronix.de; Wed, 26 Nov 2025 12:17:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2RbV0FqXrLA/T7HRP9miulh3xc1aPPlcj0IToimz4LY=; b=VdDh5rvNd0qQXV4l1KV7vtwGjc
	NyASk8XONUPUcTT8rmY9lF/L0tRHW2v49Q4AmJsU/Kh35nfc4ZCajnJ6X5TFeMyTU8olKIdJ90gHY
	XopSq9OglP8liwfBVL0SjWqBN+9pmIRjfSsh3VaKdu/28oy7/Dq6KTQyDpurHG2feq6vf7eSZxJfm
	Mq/ulDt+boibenF2Vqb1Ej+iWlSp9DWp8a+Lntj261OmNtGfS3o0RtWzBMWIrAIzcG9ycU4fMjTb/
	IlniJozRpNZjPixpwSlfzcI+Z9vJ1m7MxTOY4U3Tq4DbWwkkhRDgdzrtTQ/AmC6ia6/LHhlLbwyg6
	h+yG03XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODVY-0000000Etmp-2di5;
	Wed, 26 Nov 2025 11:16:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vODVW-0000000EtlD-04Am
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 11:16:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1vODVI-00084S-3m; Wed, 26 Nov 2025 12:16:08 +0100
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1vODVH-002axC-30;
	Wed, 26 Nov 2025 12:16:07 +0100
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1vODVH-00000002HpF-3F4s;
	Wed, 26 Nov 2025 12:16:07 +0100
Message-ID: <a85ee8260b70ae896e634b024a47c1a5385abfd4.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Wed, 26 Nov 2025 12:16:07 +0100
In-Reply-To: <540bcb3e-c678-410c-aaa9-e60e28bf62ff@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
	 <aRww5p7AxPtgEmgm@pengutronix.de>
	 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
	 <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
	 <11773b48d0ce0781f1ec24e3a98e81137f913de1.camel@pengutronix.de>
	 <aSQ1AWPxHw4knocf@pengutronix.de>
	 <540bcb3e-c678-410c-aaa9-e60e28bf62ff@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_031622_080075_65F85D48 
X-CRM114-Status: GOOD (  39.43  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 2025-11-24 at 20:58 +0100, Jonas Rebmann wrote:
> Hi Jan,
>=20
> On 2025-11-24 11:35, Sascha Hauer wrote:
> > On Wed, Nov 19, 2025 at 04:15:40PM +0100, Jan L=C3=BCbbe wrote:
> > > On Tue, 2025-11-18 at 10:57 +0100, Jonas Rebmann wrote:
> > > > On 2025-11-18 10:49, Jonas Rebmann wrote:
> > > > > On 2025-11-18 09:40, Sascha Hauer wrote:
> > > > > To me the big question is: What is a SoC UID?
> > > > >=20
> > > > > Is it an arbitrary string that happens to be, for many SoCs compo=
sed of
> > > > > [0-9A-F] and efficiently represented in binary in the efuses? The=
n it
> > > > > feels a bit surprising to me to compare this 'arbitrary vendor-pr=
ovided
> > > > > string' case-insensitively.
> > > > >=20
> > > > > But if we consider this an arbitrary block of binary data, typica=
lly
> > > > > looked at in hexadecimal then I suggest we use the raw "bytes"-fo=
rmat I
> > > > > sent an RFC patch for on Nov 12, and compare to
> > > > > barebox_get_soc_uid_bin(). I originally wrote that RFC patch for =
storing
> > > > > SoC UIDs but had a conversation with Ahmad that led me to view th=
e SoC
> > > > > UID as an arbitrary string. However now that we have
> > > > > barebox_get_soc_uid_bin(), I'm tempted to change my mind.
> > > >=20
> > > > I did consider changing this for v2 however in your [PATCH v2 1/9]
> > > > "introduce SoC UID" you mentioned that "Others even print the binar=
y
> > > > data as decimal (qcom).". If we where to use 'raw "bytes"-format' a=
s in
> > > > my RFC, the data YAMLs would have hexadecimal representation and I'=
m not
> > > > sure if that could get too confusing. At least we could consider to=
 add
> > > > a (mandatory?) YAML-field that specifies the number system.
> > >=20
> > > As the UID is normally read from registers or messages exchanged with=
 a security
> > > enclave, each SOC vendor has already defined a binary format. We shou=
ld just
> > > store that unmodified in the TLV value instead of inventing a custom =
format.
> >=20
> > The format is not custom, it's the format Linux provides in sysfs.
> >=20
> > It might be confusing if the SOC UID we use has a different format.
>=20
> After further discussion with Sascha and Ahmad, I will stick to
> comparing strings in v3.

Sascha, Jonas and I discussed this again internally after my short vacation=
.

> As there is neither a kernel interface nor a barebox shell interface to
> read the binary representation of the SoC UID, or at least to read some
> uniform (e.g. always hexadecimal) string representation of the SoC UID,
> this would be too impractical. Instead we're taking care that the
> soc_uid string representation in barebox always matches the
> representation given in the kernel. This way, the serial_number/soc_uid
> values easily read from barebox environment or kernel sysfs can be used
> directly without SoC-specific parsing.
>=20
> I would however rename this to `tlv_bind_soc_uid_string` so we can have
> `tlv_bind_soc_uid_bin` in addition if needed later.

One main job of a (project specific) schema [1] is to convert between the
strictly defined binary representation in the encoded TLV and the (perhaps
project specific) human-readable representation. Take for example the
"calibration" format use for analog calibration parameters used in the LXA =
TAC:
https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-generator=
/bareboxtlv-generator.py#L350
The schema defines that the binary representation is one or more 4 byte big=
-
endian IEEE 754 binary32 float. As the human-readable representation, a dec=
imal
number is used.

To follow this approach, we should use the SoC-sepecific binary representat=
ion
of the SOC UID in the encoded TLV, as this is strictly defined by the SoC v=
endor
and can never change over a project's life-time. Different ways to read out=
 the
UID might use different formats: In the case of the AM62L, we have hex from=
 the
kernel's sysfs, hex from the ROM code via UART and binary (at an specific
offset) via DFU.=20

The generator and barebox can then translate between the encoded and the hu=
man-
readable forms defined in each schema as appropriate for each specific proj=
ect
and manufacturing workflow. This provides a well-defined and stable format =
in
the TLV and some necessary flexibility (at runtime) to adjust if external t=
ools
change their formats.

The schema should specify the required UID length and which human readable =
form
to use (e.g. lower case hex), so that only those inputs are accepted.

Regard,
Jan

[1] https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-gener=
ator/schema-example.yaml

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


