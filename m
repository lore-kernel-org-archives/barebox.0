Delivery-date: Wed, 25 Jun 2025 11:51:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUMmS-00AtKV-03
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 11:51:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUMmR-0000yH-GO
	for lore@pengutronix.de; Wed, 25 Jun 2025 11:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FPFdN3KYNMRb4r3u7JtjgZWU6kOzmv6n2aLtcP9ty5E=; b=zIvDiaW3LIuI8lbmY40RAmWo1a
	omoC8hFiHjgiYLiQDKNr6isDJ6mfk/RTO5hKD3Cov1dbeGFF+lAZs8fBZgS1DjLh1H4/Z/i8c/xQL
	5gcaKo1pHPUpbMZjy8BGm57wSALaj5DoRVFSu6IoGkXxxHKjebQt7WLv0p2HcKugknMlR9pKaRXj/
	6N8IRI1YjgyYpq7uo3giNe7vqx/Ctk9aT2uwYWaJW6OFRpf9GWOnyHwVpMxHeGGl7ltZIkOvqTto/
	5BjhiW9d6+d0YWcEe9zXq2zI0cn3OfKmWBUeczVgdQg4/Nxz3cpXPzFRmsFR+daZ6Y2jlwYE2aPN1
	a4yXWHxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMlr-00000008BkM-3OTb;
	Wed, 25 Jun 2025 09:50:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULuP-000000082VM-0S8R
	for barebox@bombadil.infradead.org;
	Wed, 25 Jun 2025 08:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=FPFdN3KYNMRb4r3u7JtjgZWU6kOzmv6n2aLtcP9ty5E=; b=WCJv0yUy1xYM0pWK5V/EKBe+qM
	EFkihcYDLaD0i2XCVvv9o0fy7ep7wrIkLjfbmCxg+5DAo+6tQNCGqNQ7OUIZE6x3XpVyDMwCyYT22
	BbGGjiUow5rVaAkz2uQ4RT+4Ykuk7wvs1Sm1mG/FUvJ58zz2R+JebuFIzXRh6xFXOVyzOQ3rIRjbf
	Ul5+9giwi5InjTKWSCI5LgFE7MLNyL7Pc+NJH4Pto6K80kuRoWdQ9JVgzul19eTSTFPotwO9X62zO
	sQYxKEefyHvXUvaCeMLhnU2qYYQpJUhEbzU+f/p8wdyxVy8Mxd1Gg8SMnfzwusdnrlyc2pQU/18SN
	On7ujZkg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULuK-00000005hvH-42ek
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 08:55:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uULuI-00047A-1J; Wed, 25 Jun 2025 10:55:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uULuG-005Ffg-0Q;
	Wed, 25 Jun 2025 10:55:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uULuG-00H60v-04;
	Wed, 25 Jun 2025 10:55:00 +0200
Date: Wed, 25 Jun 2025 10:54:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aFu5Y1-1w7z4AbA7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_095505_108709_1376BB97 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: v2025.06.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I just released v2025.06.1.

v2025.06.0 contains an annoying bug which requires a stable update.

v2025.06.0 won't let you create a file in filesystems supported by the
legacy FS layer, most prominently used by the FAT filesystem. This is
easy to reproduce by issuing a "echo -o /vfat/foo bar" when /vfat is
contains a mounted FAT. This also breaks saving the environment on
systems which store the environment on FAT partitions like the TI
Omap/AMxxx and Raspberry Pi platforms.

If you are affected by this bug please update to v2025.06.1.

See https://lore.kernel.org/barebox/20250624152148.2230298-1-a.fatoum@pengutronix.de/T/#u
for the patch and background of the issue.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


