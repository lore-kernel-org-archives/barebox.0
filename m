Delivery-date: Fri, 17 Feb 2023 19:09:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT5An-00AJDx-9r
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 19:09:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT5Am-0000u8-6u
	for lore@pengutronix.de; Fri, 17 Feb 2023 19:09:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PrGgHRvTeiqmDK9sgLpHzXSQOdr+9wZ0EjIHb1rlKmI=; b=3zgjAnA1bXhtx3PsLXubcpwkYl
	tM1IYVNvl1qAqmh/aH4QapZDpyIwgZoPGtsu+JiF/DQelwpCh3kr5VeziqeLTajX0IZbQn0kxSzdL
	YMzWhJyAMBFbjmQKCm6GJWuYZ2AOoewgtrgI20xjUfF57pE4jaZtvNUFTk7iatB5TGslHu1oZqnDi
	NQ9ADjKqZY5c4a7w7UdaBAxnPzvmcMSj2b6AhV+kQlgmDs2NOlqhT83mjOdjjdN/jFIymgoMjQkg/
	+GEovuuwryEA8ZFP9Ouf0cTlNEQ5dzelXaijpPRAOwPEenrnMWVjU8gg0JvIp8mtM/zYr0NXEkJIE
	a0b4er9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT59g-00FM4Y-6N; Fri, 17 Feb 2023 18:08:20 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149] helo=fx409.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT59b-00FM3r-3d
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:08:17 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 761CE349604
	for <barebox@lists.infradead.org>; Fri, 17 Feb 2023 19:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1676657289;
	bh=PrGgHRvTeiqmDK9sgLpHzXSQOdr+9wZ0EjIHb1rlKmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=1dLqdYC9JMj4I5GiHmSgGGRycbNhPSTaOiGCYTBgPcz6Pt6LSqVTLFyiQM/nYokuv
	 iMnSAuFGl8IhbolVaMfmgMTwWhv/WZiOblbF5ZloJ/NqFqDrRi+5n2lpGSASthRs+a
	 ViszLts2KG7DWUZ7tU6B4u9pO3f9HvfuhshXAoTM=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id 39FDE3494F0; Fri, 17 Feb
 2023 19:08:09 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 5CA62349489; Fri, 17 Feb
 2023 19:08:08 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 3705D27E0533; Fri, 17 Feb 2023
 19:08:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 1DBA627E0536; Fri, 17 Feb 2023 19:08:08 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 o6szN_uaDNfR; Fri, 17 Feb 2023 19:08:08 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 08D2D27E0533; Fri, 17 Feb 2023
 19:08:08 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <baa3.63efc288.5a1e9.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1DBA627E0536
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1676657288;
 bh=PrGgHRvTeiqmDK9sgLpHzXSQOdr+9wZ0EjIHb1rlKmI=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=U5VNX1nWkdJUxgzkzLfcW/yFYgN9UrXGLz3WKG3XuGwjGupLXqswWFuNQdnpn7Bnl
 A+76DWYD4qqerHIi6G0oFmvHzICrueP66BWzXONZ1M5PGLneeBK78G0jkTya9ONEoz
 Vchz/IvtnL0PTvMFYV3aXp8mWsCBO2Q6JO2/tYLI=
Date: Fri, 17 Feb 2023 19:08:06 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230217180806.GD2498@tellis.lin.mbt.kalray.eu>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
 <20230217173057.1839835-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230217173057.1839835-9-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_100815_328268_5794AAFF 
X-CRM114-Status: UNSURE (   5.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 08/20] ARM: i.MX6: gw54xx: rename watchdog nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 06:30:45PM +0100, Ahmad Fatoum wrote:
> Newer device trees have renamed nodes to adhere to schema. Add the new
> node names as well. Proper way would be to add aliases in barebox DT and
> use reproducible names, but given that I can't test my changes, do this
> small change nad hope the new names are stable enough.
typo s/nad/and/ ;)







