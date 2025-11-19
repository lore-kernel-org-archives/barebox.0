Delivery-date: Wed, 19 Nov 2025 16:16:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLjuk-002hTz-1H
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 16:16:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLjuj-0006nH-QM
	for lore@pengutronix.de; Wed, 19 Nov 2025 16:16:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kotel5JkxtE33EKt/JMprDg7fG+5VHDVJEACHmW5SYo=; b=A+mlLj1iJ81jTXXAgiWyUhJk20
	c/ys2VZfeyreRXm4L8OXngdSAh3i77gkPdUSULZq4BN9PH15wU/z70s1agjMRPGP+gQbivsDdyMiR
	TYsO16HkFMk/WYi3sxUp6e/XPJv3wRZhJjhQ3bCHz/XczPTSQJP6hqsM0UVM2vxv+iaxBR0WN8+rr
	vJYtaK82T0tdsYhEpsXOiqB/Gpoea3DYDzGHLoaKGcOPZBekDbR8LyakonSMNi28A8C7Z+p1c8c8L
	TeDLV8Wv68i4WJrPHPRioCHTrw1dkUTsO96d9pgbL4HJp0UrcxtofB11CmW/MdBa/1qmiCnjOdMSe
	Ol7kS21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjuL-00000003TUF-0PfE;
	Wed, 19 Nov 2025 15:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjuI-00000003TTF-3Rx9
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 15:15:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjuH-0006ib-9H; Wed, 19 Nov 2025 16:15:41 +0100
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjuH-001Grj-0I;
	Wed, 19 Nov 2025 16:15:41 +0100
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1vLjuG-000000002CF-3s6C;
	Wed, 19 Nov 2025 16:15:41 +0100
Message-ID: <11773b48d0ce0781f1ec24e3a98e81137f913de1.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Wed, 19 Nov 2025 16:15:40 +0100
In-Reply-To: <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
	 <aRww5p7AxPtgEmgm@pengutronix.de>
	 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
	 <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2+deb12u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_071542_860043_6A821ABF 
X-CRM114-Status: GOOD (  24.20  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2025-11-18 at 10:57 +0100, Jonas Rebmann wrote:
> Hi again, tiny addition:
>=20
> On 2025-11-18 10:49, Jonas Rebmann wrote:
> > On 2025-11-18 09:40, Sascha Hauer wrote:
> > To me the big question is: What is a SoC UID?
> >=20
> > Is it an arbitrary string that happens to be, for many SoCs composed of
> > [0-9A-F] and efficiently represented in binary in the efuses? Then it
> > feels a bit surprising to me to compare this 'arbitrary vendor-provided
> > string' case-insensitively.
> >=20
> > But if we consider this an arbitrary block of binary data, typically
> > looked at in hexadecimal then I suggest we use the raw "bytes"-format I
> > sent an RFC patch for on Nov 12, and compare to
> > barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storin=
g
> > SoC UIDs but had a conversation with Ahmad that led me to view the SoC
> > UID as an arbitrary string. However now that we have
> > barebox_get_soc_uid_bin(), I'm tempted to change my mind.
>=20
> I did consider changing this for v2 however in your [PATCH v2 1/9]
> "introduce SoC UID" you mentioned that "Others even print the binary
> data as decimal (qcom).". If we where to use 'raw "bytes"-format' as in
> my RFC, the data YAMLs would have hexadecimal representation and I'm not
> sure if that could get too confusing. At least we could consider to add
> a (mandatory?) YAML-field that specifies the number system.

As the UID is normally read from registers or messages exchanged with a sec=
urity
enclave, each SOC vendor has already defined a binary format. We should jus=
t
store that unmodified in the TLV value instead of inventing a custom format=
.

In the schema yaml file, we could freely define how a "bytes" format is
translated from and to a human readable representation, by adding an "text-
encoding" property (e.g. "hex-lower"/"hex-upper"/"base64") as fits each use=
-
case.

Jan
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


