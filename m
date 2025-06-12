Delivery-date: Thu, 12 Jun 2025 15:19:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhqU-006WNp-0I
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 15:19:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPhqT-0004Xp-Cz
	for lore@pengutronix.de; Thu, 12 Jun 2025 15:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XcCVzzuI2NJHFPMuwDbR7BfErQFkM1DvhQOKJg/dOuM=; b=ruhKRJNFssQCWlRSDVXDjGh/q6
	rCE8DM0cRTCOr3usKsX/MyP1j1A9dt9jyq2rD389uA2RjeG7Vqi8qXtG18eQHU8pKksO8A/LkdoOS
	OEDqn8bxd9YpabTprGJjjpqAjMiC+1N53IM7BstptBnqZgXYMJqU+Us0dHLcQ6BFayAcfCeRyWFy9
	bgRuQOQQRmLbH7cWTBHp/qbmGEidntsjrBn7cslHeeYYIHnzEXnhrc/UDsLOGUTIQUfxOz1skU5Pr
	4y1DXFFhteRb2Jo2ky2zOPu/mF/tDe50xJ40rj/W/N/yVUKYVIJs+bBKH11JFEJjpEnkgYzOpdGeM
	iOaIlxZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhpg-0000000DMf3-0nd2;
	Thu, 12 Jun 2025 13:19:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPfPy-0000000D1uG-3Y18
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 10:44:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPfPx-0007O1-0q; Thu, 12 Jun 2025 12:44:21 +0200
Message-ID: <88d6ff32-3303-4e66-b886-b2c459913648@pengutronix.de>
Date: Thu, 12 Jun 2025 12:44:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Manish Pandey2 <Manish.Pandey2@arm.com>
Cc: BAREBOX <barebox@lists.infradead.org>,
 Raymond Mao <raymond.mao@linaro.org>, Jose Marinho <Jose.Marinho@arm.com>,
 "rouven.czerwinski@linaro.org" <rouven.czerwinski@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Michael Tretter <m.tretter@pengutronix.de>, Dan Handley
 <Dan.Handley@arm.com>,
 "op-tee@lists.trustedfirmware.org" <op-tee@lists.trustedfirmware.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
References: <89ad64f2-fbda-48a3-9a27-5eaff5be9292@pengutronix.de>
 <VI1PR08MB1021788AAFA0E6A859BA3C18CC074A@VI1PR08MB10217.eurprd08.prod.outlook.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <VI1PR08MB1021788AAFA0E6A859BA3C18CC074A@VI1PR08MB10217.eurprd08.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_034422_891676_5F829C34 
X-CRM114-Status: GOOD (  30.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Firmware Handoff for DT Overlay created by OP-TEE?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Manish,

On 6/12/25 12:13, Manish Pandey2 wrote:
> Thanks Ahmad for reaching out!

Thanks for the quick response.

> There is a PR [1] on the Firmware Handoff specification that is still
> under discussion. Could you take a look and see if it could accommodate
> your use case?

Cool, thanks for pointing it out. I will check it out in detail.

> To confirm my understanding, would the desired flow be something like:
> 
>  1.
>     *BL31 passes a read-only DT* to OP-TEE via the Transfer List (TL)

DT comes from BL2 originally, but yes, BL31 passes it along.

>  2.
>     *OP-TEE consumes* the DT, adds memory reservations via a *DTO*, and
>     appends this DTO to the TL

My original thought was that BL2 (via BL31) allocates some memory and
passes it via transfer list for OP-TEE to fill out.

This allows reclaiming the space used by the overlay, which would
otherwise not be possible:

  - If OP-TEE uses arbitrary memory, it may turn out to be used
    otherwise

  - If OP-TEE uses its own memory that it reserves, the space is
    never reclaimed as it doesn't know when it's no longer needed

>  3.
>     *BL31 then forwards* the updated TL to BL33

Right.

> 
> Does that match what you had in mind?

Thanks,
Ahmad

> 
> 
> [1]: https://github.com/FirmwareHandoff/firmware_handoff/pull/74
> <https://github.com/FirmwareHandoff/firmware_handoff/pull/74>
> 
> ------------------------------------------------------------------------
> *From:* Ahmad Fatoum <a.fatoum@pengutronix.de>
> *Sent:* 11 June 2025 19:09
> *To:* Manish Pandey2 <Manish.Pandey2@arm.com>
> *Cc:* op-tee@lists.trustedfirmware.org <op-
> tee@lists.trustedfirmware.org>; BAREBOX <barebox@lists.infradead.org>;
> rouven.czerwinski@linaro.org <rouven.czerwinski@linaro.org>; Michael
> Tretter <m.tretter@pengutronix.de>; kernel@pengutronix.de
> <kernel@pengutronix.de>
> *Subject:* Firmware Handoff for DT Overlay created by OP-TEE?
>  
> Hello Manish,
> 
> In your recent talk[1] at LinaroConnect about the Firmware Handoff
> specification, you were asking about what other use cases it could
> address for OP-TEE.
> 
> We ran into a possible use case that we would like to share:
> 
> BL2 can pass a DT to OP-TEE, which it would use to discover memory and
> to fix up with memory reservations covering the memory it carves out for
> itself.
> 
> OP-TEE also supports passing along the reservations as a device tree
> overlay. AFAICS, there is no way currently to have both: A DT for OP-TEE
> to probe hardware from and a way to pass the normal world a device tree
> overlay in return.
> 
> I think this could be neatly addressed with Firmware Handoff and would
> be a motivation for us to implement support in barebox BL2/BL33 to take
> advantage of this. The current way is suboptimal as we would prefer the
> DT passed to OP-TEE to be read-only. This avoids either having to copy
> it or to pad it sufficiently in anticipation of it growing with the
> addition of the new nodes.
> 
> [1]: https://www.youtube.com/watch?v=RxU798h8aiE <https://
> www.youtube.com/watch?v=RxU798h8aiE>
> 
> Cheers,
> Ahmad
> 
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/ <http://
> www.pengutronix.de/>  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



