Delivery-date: Mon, 18 May 2026 12:44:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvSL-0016WG-1P
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:44:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvSK-0007a6-T7
	for lore@pengutronix.de; Mon, 18 May 2026 12:44:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8680yW69LtmPq2Y42sHBOniJ+y86ScDdPqZ/l5EVRQ=; b=dDDgLgSS8hdlfIVHF1LNa60zBl
	Z1oPmIXvxwR305Po4FG6A5AOkCQSWuuSYv9swlU09Ndape+VdgEO5kV2kJHxezVQEORT3XEXO1Fol
	WiBq9Cyn3vl+F1VkpvAMSL3CNMHOAbzTLcaANH2NOpol3gmeB9T/t793y/gtAA2TG7scjVkMnGeif
	DWywnSfalHN4unfCwEUmUu15GRI+2zabUq4M2OnwtKObgZEZF2km7Mi/NRU1n+/47H6gaLUZrtHKy
	g8vKX4wophKVzS7DQszDV58N8+Kkg8lp/Eepuu2O5AztuDktJbrRTQ5o+JfSKtJQ/LdCCa0NcgAM6
	lcFp5l+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQz-0000000FHpR-2Reh;
	Mon, 18 May 2026 10:42:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQy-0000000FHpE-3Wnq
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 10:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=K8680yW69LtmPq2Y42sHBOniJ+y86ScDdPqZ/l5EVRQ=; b=JmIes5gL6wVF1ltoAnuTbCNBth
	glstKathWjkFGVKFxiop8VTka0bmeJdbkG/HiAJAlXD+KeRnvHHNh9GnwvprqZCKLgnfkaIB43ijM
	fxU90f/ApVHnzjVyPhI3jhmE9aXO2z/1gYL3VGgTDaaZzkuEYQOGZjg/hnr16DSOmV5EzieRrBxqA
	0S1SfE4THOd6Btf3esX9UEsKM+e4XrSU6aljCl/LpIJ3F+l/JDmqPkugpmCZVgL7j0lRDb+fct46w
	YvVSNoVu6tVh2690vqOjKPbfTkZvBu+BsVnQfejdwequfQxV49c5BSd/bshjSUsACMW7+R2IaHU22
	0UeJmrog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvQv-0000000Anpy-04xQ
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:42:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQu-0007Nm-Na; Mon, 18 May 2026 12:42:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQu-000Zt0-0L;
	Mon, 18 May 2026 12:42:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOvQu-0000000GwIr-2amE;
	Mon, 18 May 2026 12:42:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260518071740.23003-1-a.fatoum@pengutronix.de>
References: <20260518071740.23003-1-a.fatoum@pengutronix.de>
Message-Id: <177910096861.4037336.11512987981597696881.b4-ty@pengutronix.de>
Date: Mon, 18 May 2026 12:42:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_114249_596600_FE8F403D 
X-CRM114-Status: UNSURE (   4.93  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ci: pytest: bump Debian installer image to 13.5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 09:17:28 +0200, Ahmad Fatoum wrote:
> Debian 13.5 has been released on 16th of May and the old images are no
> longer available, thus bump the version we use in our boot tests.
> 
> 

Applied, thanks!

[1/1] ci: pytest: bump Debian installer image to 13.5
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b94a34101fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



