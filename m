Delivery-date: Thu, 16 Mar 2023 13:36:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcmq5-002hUG-OG
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 13:36:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcmq5-0004U7-Jb
	for lore@pengutronix.de; Thu, 16 Mar 2023 13:36:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MPvcmyE63UtgOmQ8klRRZ9sPBO4Enx/mXbdwPpgHcA4=; b=jNsso6wjRxcLjtu9Rv5TVZtJXb
	aQSw2YduAYTYPFSRbvRVq3tTibjxUnM47OLdB1WIwBOr0JRL34FOErgKSW9om7N7325rFjkxfr76w
	nYMGV+5WAdWHouZhTdNrW+opdeaj/53TKsFWu6V1FGXpf0f0HvVqb1F006V722fcQe3e7zWqGun0K
	7ROIOFUWSD7P/CooHnoHnTbycuAoOXJ/wUlCq8hb+drD/xLuMsxBDj4/FCS1FkDo53bpnm5adXtJa
	Bqjr9O5jh2OuBouHzGcciZdcw2Q3lVO+OVWzPNTZn9pAeNQLWLWma8QFSljH4gFuunYCzTHGRpo8t
	Bar6qhHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmof-00GPIy-1T;
	Thu, 16 Mar 2023 12:34:45 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmob-00GPHt-02
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 12:34:43 +0000
Received: from Hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id BA25C40141
	for <barebox@lists.infradead.org>; Thu, 16 Mar 2023 13:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1678970067;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MPvcmyE63UtgOmQ8klRRZ9sPBO4Enx/mXbdwPpgHcA4=;
	b=Jtqe2fijh1beFSKo5GKQ2SJlBx8G4lye143ZGVIYe5cda9m3b4X3qtwZQELQsLMhLNaVud
	9joWs+U0y5du/Fz2rj+7e/K+6Bi1yLRJrZwvoLW5++TsQJfknlzSuypFmfkJINX/EDNYEh
	jOkN3XTOb5n9r6S6KdiG/GM5YCh1a3A=
Date: Thu, 16 Mar 2023 13:34:26 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <ZBMM0s2psJJj+/BI@Hephaistos.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_053441_524789_A59423B9 
X-CRM114-Status: UNSURE (   6.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Autoboot when idling at prompt possible?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi there,

in order to get the booting more robust I already changed
autoboot_abort_key from "any" to "ctrl-c".

We wan't to keep the autoboot_timeout to be able to access the
bootloader prompt manually or with install tools more reliably to a non
zero positive value. I.e. enter prompt with timeout greater than zero
still should be possible.

Is there a mechanism already implemented or thinkable to be added as a
command, which boots when the prompt is idling for a couple of minutes?
Lets say the bootloader caught ctrl-c by accident (free serial pins in
headless encasing in rough EMV environment) and idles there
for years...

Kind Regards
Konstantin


-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



