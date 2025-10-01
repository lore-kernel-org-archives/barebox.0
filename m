Delivery-date: Wed, 01 Oct 2025 10:29:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sDg-0034Xt-0E
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:29:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sDf-0007E1-ET
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:29:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9dvZ31LsgDNz81mLxbhdMNmhyMEGGsrol0WyCGwP50=; b=uq0rZzxFYGxdiM2fkQlcdrTcFx
	HkzFHtEmxUNtnU6lwHqZsgfTxlUQvc1WAlB8VoVTbgFJ6vhgmffnKM/6GdcL0ixjEXv5xvS8Xa2GJ
	RBqq1NJZxCMNwmlFkrI5EWBvvQazg0LAPMzfWgnHUnCRK1+eISYQYPZP4BZOxx4ygarqt1jnjXljV
	iLOx90JIow8OV9xkP4xabaW+ktYl9wzb3CxdIXMIbGrmGRA6e1nZbDGZ/5q5RxrLd1McsIvgSyPTq
	lOoMGN389d6EGDxlkrgJIiFfbCrirlhrQayDpkS8uJNWua0fCkv1exQX4mNhsrlDfQczBexDowCVY
	8WPOiXRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sD9-000000071QT-1jyZ;
	Wed, 01 Oct 2025 08:29:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sD6-000000071Pp-2lVg
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:29:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v3sD4-00072N-Na; Wed, 01 Oct 2025 10:29:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v3sD3-001Nn4-1C;
	Wed, 01 Oct 2025 10:29:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v3sD3-006STQ-0t;
	Wed, 01 Oct 2025 10:29:13 +0200
Date: Wed, 1 Oct 2025 10:29:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <aNzmWRrCKVlBcdaA@pengutronix.de>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
 <175922885404.3633259.17777224412857358925.b4-ty@pengutronix.de>
 <aade6cdb-3244-4468-8bab-215a54fdef15@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aade6cdb-3244-4468-8bab-215a54fdef15@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_012916_693794_C124EC54 
X-CRM114-Status: GOOD (  16.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] ARM: boards: add support for Enclustra Mercury
 SA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 30, 2025 at 03:04:52PM +0200, David Picard wrote:
>    Hi,
> 
>    It works. Except you missed the changes in arch/arm/dts/socfpga_cyclo
>    ne5_mercury_sa2.dtsi
>    Here is a patch to fix it.

Ok, thanks. I merged in the missing change.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


