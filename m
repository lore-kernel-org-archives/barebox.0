Delivery-date: Mon, 14 Apr 2025 17:21:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Lck-000goI-2u
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 17:21:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Lck-0000FP-9L
	for lore@pengutronix.de; Mon, 14 Apr 2025 17:21:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2gumVdILNNuQ5pkDFOcAednTNEyZ8cOCbKzeVzQn1E4=; b=ee+//oPy+6gsSVcvKzdaIHVzAT
	J1zY4PBhc1GtdNoUq4NzlldqDbdKOWlx8+d0WdY1S9tHD/fYJteMasjuLpHExk67SyeasaGuY2efO
	ZrXNt9DL4pMHzGdh7/Lhuxh8fQe3Qc3gidSwS0qOMpedC9Rf2IF/xdUAkdVLlj+ZKs9G+1hr5B967
	RbpLtfpPw9Gv3VAD+xDG1y8pR+WLNElDiuJ3PGfOaWt3uK7lJXbn+KFBNVQoUHZPsBQkLCKW2JZiA
	GoGnC0kRLfYWHHOYA2Q7Hkkl8NlUvkYYiLAUDV8odQvht9xZ++3jGwYTUeKrEapAyosdR5XPPP2Z8
	blTaF0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LcF-00000002bNj-343P;
	Mon, 14 Apr 2025 15:20:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LI7-00000002WiM-0whI
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 15:00:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LI5-0000k4-PE; Mon, 14 Apr 2025 17:00:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LI5-000Gfh-1v;
	Mon, 14 Apr 2025 17:00:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LI5-000L10-1a;
	Mon, 14 Apr 2025 17:00:05 +0200
Date: Mon, 14 Apr 2025 17:00:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_0i9cXehlM2D5EE@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
 <20250411074045.2019372-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411074045.2019372-9-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_080007_266497_5E61AED8 
X-CRM114-Status: GOOD (  22.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/10] scripts: Add Barebox TLV Generator Tooling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 11, 2025 at 09:40:43AM +0200, Ahmad Fatoum wrote:
> From: Chris Fiege <cfi@pengutronix.de>
> 
> This host-tooling creates binaries in the Barebox TLV format.
> It is intended to be used in the factory (either as script or library)
> and creates a tlv binary from a given schema and data.
> 
> For convenience an example schema and dataset are provided.
> 
> diff --git a/scripts/bareboxtlv-generator/requirements.txt b/scripts/bareboxtlv-generator/requirements.txt
> new file mode 100644
> index 000000000000..a1f7e3b3f2a3
> --- /dev/null
> +++ b/scripts/bareboxtlv-generator/requirements.txt
> @@ -0,0 +1,2 @@
> +crcmod
> +pyaml
> diff --git a/scripts/bareboxtlv-generator/schema-example.yaml b/scripts/bareboxtlv-generator/schema-example.yaml
> new file mode 100644
> index 000000000000..4927b869513d
> --- /dev/null
> +++ b/scripts/bareboxtlv-generator/schema-example.yaml
> @@ -0,0 +1,48 @@
> +magic: 0xc6895c21
> +max_size: 0x100

The first thing I tried with this was according to the user
documentation:

./bareboxtlv-generator.py --input-data data-example.yaml schema-example.yaml tlv.bin

And fed that into the barebox tlv command. I ended up with an empty node
because the magic doesn't match.

Can we change the magic to TLV_MAGIC_BAREBOX_V1 in the example and only
add things here that are supposed to be generic? That would make the
example more useful as a starting point.

> +
> +tags:
> +  factory-timestamp:
> +    tag: 0x0003
> +    format: "decimal"
> +    length: 8
> +    example: 1636451762
> +
> +  modification:
> +    tag: 0x0005
> +    format: decimal
> +    length: 1
> +    example: 42
> +    purpose: "0: Device unmodified; 1: Device has undocumented modifications"

0 is unmodified, 1 is modified and 42 is what? ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


