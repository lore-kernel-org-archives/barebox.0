Delivery-date: Fri, 06 Feb 2026 14:09:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLaq-009UbA-1d
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:09:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLap-0000NM-HN
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:09:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yZt9bvWDz1BUYvzg2F5bL+J9AEflxdAFMf45CvBou+Q=; b=ucbJUhpnaOCIDn0CBQ/jVd3wwH
	pXYqz0Ui+f+083zElbE14pO9yNT3ZI0sKlvPazikMKimaw8xwbRgIn0ZQpjU3G+bheCUk89vnc+vu
	WrbqGD1WIVUPTXpMs57IvH8zEtYILcsh0DmWcO9z/IjrZ/rYItkCSGrqyCC3mFw6x5D1EIrf2Oq2q
	EJciX8Au+jvb06LZpMPuwmEt222bcb5BCkdo51G3JnrK/5S6szOTZQZryhBzEasaQdeapqsZSYnqL
	F4+6vSGDJm2DK5YxC/IZq4lST/SxG1vIIq+A1dMn2+x6P8ooJm0/BBzqZi78aYL3cX6W0vraIrlmV
	kdn0MF3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLaN-0000000BLMS-0bDy;
	Fri, 06 Feb 2026 13:09:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLaK-0000000BLLy-3Gtz
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:09:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voLaJ-0000HH-4W; Fri, 06 Feb 2026 14:09:19 +0100
Message-ID: <11768616-d5d9-40a2-acb3-beef9055e7a2@pengutronix.de>
Date: Fri, 6 Feb 2026 14:09:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-3-a80b234ce1a1@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-3-a80b234ce1a1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_050920_821437_C2902D07 
X-CRM114-Status: GOOD (  16.21  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] mfd: Add Hexagon EFI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/5/26 4:45 PM, Marco Felsch wrote:
> This adds the EFI core driver to communicate with the system
> co-processor.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

but see below for some nits should there be a v2.

> +	max_msg_len = HGS_EFI_SEP_FRAME_PREAMBLE_SZ +
> +		      HGS_EFI_SEP_FRAME_POSTAMBLE_SZ +
> +		      efi->coder->sep_header_hdrsize + cmd->payload_size;
> +	msg = p = xzalloc(max_msg_len);
> +	if (!msg) {

xzalloc never fails.

> +		dev_err(dev, "No memory\n");

dev_err allocates memory, so this wouldn't work anyway.

> +	/* Split header from payload first for the following str-ops on buf */
> +	payload = strstr(buf, ":");

Nitpick: strchr()

> +	if (!payload) {
> +		dev_warn(dev, "Failed to find header delim\n");
> +		return -EINVAL;
> +	}
> +
> +	hdrlen = payload - buf;
> +	if (hdrlen > sizeof(struct hgs_efi_sep_ascii_hdr)) {
> +		dev_warn(dev, "Invalid header len detected\n");
> +		return -EINVAL;
> +	}
> +
> +	*payload = 0;
> +	payload++;
> +
> +	/*
> +	 * Albeit the CRC is optional and the calc as a few flaws the coder may
> +	 * has added it. Skip the CRC check but do the msg-id check.
> +	 */
> +	p = strstr(buf, ",");

Nitpick: strchr()


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



