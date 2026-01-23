Delivery-date: Fri, 23 Jan 2026 08:59:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjC4i-004PXf-39
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:59:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjC4h-0007qr-UG
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:59:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WbXTq2+XIgX+8kj7RDud4SP+Uq5euifOXFhlWUREyok=; b=DUDinpKviRlhgF3F2CU1/UHDYI
	8qboMX+NZccknk+0mv4YWoHkHILfwT8tZisoqRl7Rc8mQ8JncmcsNAG4Lf8XaXKucWIevpy3nBJCy
	uS/GJ0d2/awudzCqovvqky6YIXAj5T+vKQpegDpoIVSfm9644hQswbu2+jGSWKbccZ8eIpxW0PFeZ
	zhvUOAFLPM8wQ8Hs4BDfVU0woNfcBybYAWvZHprTBJQjNHR9TVrAA366vNkaHCMBJSwK0piD+uRZ9
	43MbXhoK63rIJLQP9Mjwj74cF/vxVZu5uxc9NT7DaKz8+Q7ABrby5N2HjlBv3DaNdHdkSwpLcKWTW
	GtT4MfTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjC4F-00000008P7A-1ZV9;
	Fri, 23 Jan 2026 07:58:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjC4C-00000008P6o-0j1v
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:58:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjC4A-0007l3-4o; Fri, 23 Jan 2026 08:58:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjC49-0023Zi-1O;
	Fri, 23 Jan 2026 08:58:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjC48-0000000GETF-2y96;
	Fri, 23 Jan 2026 08:58:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
References: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
Message-Id: <176915512870.3868706.11356966561089720946.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:58:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_235852_238547_22556548 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH v3 0/2] Bind TLV to SoC-UID register value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 17:11:10 +0100, Jonas Rebmann wrote:
> This series includes a mechanism for binding a TLV to a specific unit
> via the units SoC unique ID. This is to prevent interchange of the TLV
> in question between unit, which may be needed in certain secure boot
> scenarios.
> 
> As this is the first TLV field using a raw binary field, include support
> for such a field type in the bareboxtlv-generator.
> 
> [...]

Applied, thanks!

[1/2] tlv: Add tlv_bind_soc_uid mapping
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d2b3bc69290 (link may not be stable)
[2/2] bareboxtlv-generator: add raw "bytes"-format
      https://git.pengutronix.de/cgit/barebox/commit/?id=89444e26ae5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



