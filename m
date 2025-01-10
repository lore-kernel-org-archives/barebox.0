Delivery-date: Fri, 10 Jan 2025 12:32:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWDFO-000LiA-1e
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 12:32:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWDFO-0006m8-Nm
	for lore@pengutronix.de; Fri, 10 Jan 2025 12:32:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BLpO2LflFMxEqp5/kbi81pWuT/5qdnCC9W9K9Xck5E4=; b=qpmA4i9SwpWbkd1GpZO9LuxldF
	+j2cKOXx+CM5g2/Q9NrRmF2DtM4P0xzIm9/XO1oviqCvtVhAMQ+CuhUonMXafiizgtI/6462aqZzp
	x2jta+iSOwEY2KatbTJ0U2tWEuTXF9tlgdf5ORCab9zY6LmxfU9H5OMa8XKMp7/rJ1ugNC2gKQFOJ
	2UwEVQSB6LgyQpfqdU5/JUmf9iI61RfREnRFjHPXSBEqNzvB/y2HOcIJ3+X4vUwuhNSB0I22JI3BS
	qvH7tbpAf+WmJmjK+5SIMbMWXlCq+ifYpKvpcw+AqoS+ISh2wdCNJhWJYV6msb2mUVr0AwpcfTpI5
	95c75o6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWDEm-0000000F89J-2Y2D;
	Fri, 10 Jan 2025 11:31:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWDEj-0000000F87h-3grK
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 11:31:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tWDEh-0006hB-SS; Fri, 10 Jan 2025 12:31:31 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tWDEh-0009tD-2E;
	Fri, 10 Jan 2025 12:31:31 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tWDEh-001wFi-1x;
	Fri, 10 Jan 2025 12:31:31 +0100
Date: Fri, 10 Jan 2025 12:31:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Stefan Kerkmann <s.kerkmann@pengutronix.de>
Message-ID: <Z4EFE3V2FGUCRVBn@pengutronix.de>
References: <20250106113340.1224335-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106113340.1224335-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_033133_923452_D89D76E7 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: Re: [PATCH] scripts: imx: pass semicolons as substitute chars to
 compiler macros for CSF templating
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Basti,

On Mon, Jan 06, 2025 at 12:33:40PM +0100, Bastian Krause wrote:
> With CONFIG_HAB_CERTS_ENV=y, paths and PKCS#11 URIs to the HAB
> certificates are taken from environment variables (allowing for better
> integration with build systems). In this case these values are passed
> internally via compiler macros (-D) to the imx-image host tool. PKCS#11
> URIs usually contain semicolons. Semicolons, however, cannot be passed
> via compiler macros and cannot be escaped.

Try harder.

gcc -DFOO='"bar;baz"' test.c

#include <stdio.h>

int main(void)
{
	printf(FOO);
}

Works as expected, so does it work when you add single quotes around the
URI?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


