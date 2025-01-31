Delivery-date: Fri, 31 Jan 2025 14:07:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqk6-006kdH-29
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 14:07:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqk6-0005eh-Nm
	for lore@pengutronix.de; Fri, 31 Jan 2025 14:07:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oI6XelKtA987LrESSZA+mt7riHMsea6gOqNgivlI5PA=; b=OBmnv4tVEJVpfX204AFu4JJ7yk
	kAwrtXb9X6fHIH/6Eld22CeGzksbZiE8gdCjIofFBFtPEdq/r/ojB55MK3UJpFsC589C8wkJEy8v7
	9Inv/R0Tv+BekrSZunjtU7xI7CqVQtdKxboMc0HEkvIKgzzDvPL1tD3Hnpxai8AYeWlijONrybs4f
	0GYBY1KGnXrC2Pzh8vlUfRRGna4xOxc6syn8sqmCCVSVdMOrfQcSzN6sb/FTc9Cx4QLHBomfHHJDC
	22Q4GUHx6UsdYajHYejEbagOKH7EdUBM36s8lyo9i9XZaaifER9D6/N315s19ZS3RXyMbRszRUqyD
	r8Nkijhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqjj-0000000Aeqr-13GA;
	Fri, 31 Jan 2025 13:07:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqjg-0000000AeqU-3Nai
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 13:07:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqjf-0005Z7-Jv; Fri, 31 Jan 2025 14:07:03 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqjf-002nmX-18;
	Fri, 31 Jan 2025 14:07:03 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqjf-006Rxr-0n;
	Fri, 31 Jan 2025 14:07:03 +0100
Date: Fri, 31 Jan 2025 14:07:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>
Message-ID: <Z5zK9xOFksuEEbmk@pengutronix.de>
References: <20250130120814.1053382-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130120814.1053382-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_050704_847579_EB76F95F 
X-CRM114-Status: GOOD (  21.02  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/2] nvmem: bsec: Add support for OTP permanent write
 lock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 30, 2025 at 01:08:13PM +0100, Oleksij Rempel wrote:
> From: Robin van der Gracht <robin@protonic.nl>
> 
> Introduce a mechanism to permanently lock OTP eFuses after programming by
> adding a new `writelock` parameter. When `writelock` is enabled, the
> driver:
> 
> - Programs the OTP fuse using `BSEC_SMC_PROG_OTP`.
> - If successful, triggers `BSEC_SMC_WRLOCK_OTP` (OP-TEE:
>   `STM32_SIP_SVC_BSEC_WRLOCK_OTP`) to permanently disable further
>   modifications to the OTP word.
> 
> Security Concern:
> Without this lock mechanism, an OTP word can still be altered by OR-ing
> additional bits onto the existing value, as STM32 BSEC OTP fuses only
> allow one-way bit transitions from 0 to 1. This is a potential security
> risk when dealing with keys or sensitive configuration values, as an
> attacker could modify certain OTP bits without fully replacing the
> original value.
> 
> Warning! Write lock is enabled globally per BSEC device:
> - While `writelock=1`, all writes via the BSEC device will be
>   permanently locked.
> - The user must avoid writing unintended values during this period,
>   as they will become irrevocable.
> 
> Example Use Case:
> To program and permanently lock an OTP word:
> bsec0.permanent_write_enable=1
> bsec0.writelock=1
> mw -l -d /dev/stm32-bsec 0x00000170+4 $some_data
> bsec0.permanent_write_enable=0
> bsec0.writelock=0

I don't really like this writelock approach. It makes it hard to write
something to OTP without locking and then lock it later. This can only
be done by writing the same data again, with writelock enabled this
time.

We have support for a protect operation, originally used for flashes.
This looks like a good match for this purpose. Could we use it here?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


