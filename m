Delivery-date: Sat, 28 Dec 2024 14:34:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tRWxS-00DlKA-0u
	for lore@lore.pengutronix.de;
	Sat, 28 Dec 2024 14:34:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tRWxS-0001SP-6v
	for lore@pengutronix.de; Sat, 28 Dec 2024 14:34:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=++QqQtt5EiVFifEPTY7uv/9XcZkdQ6fqTluBsL6VK/w=; b=kpvOc5XVtFAQlFBMXvaV/AqsUo
	rRsZi1zyy7Ld+9ZRlvUVNjCZRl5qC6CaMoaFiug1D6UOqnCFbr/WWHvsDrI9iDFgJp6MnmFHAcb9R
	AqNZ6iizgIxuZyYf+QO7tx/cJ1e4+sK/f6sIcRyiZt+tbuDGW5SCSnMZxCr9BZ1hBRVmqselyG88v
	Cev+B0qxAlYvq9OeLbteFxASSlFcM6mUjmiuht2RkrLZawOO2pfIsScZx2ZDfl0DctPaJb46VeWcO
	V/YV5Q77lQATFT5h/ryG5aCE1Q8zJaqvEjlWRQt8x+fzc4DxmdgqByPtfrd7rd2Z2fRGIa6EgqtsC
	SjxVPwDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRWwj-00000001vcU-1oiM;
	Sat, 28 Dec 2024 13:33:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRWwg-00000001vbz-0StQ
	for barebox@lists.infradead.org;
	Sat, 28 Dec 2024 13:33:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tRWwb-0001A5-Lu
	for barebox@lists.infradead.org; Sat, 28 Dec 2024 14:33:29 +0100
Message-ID: <70ed4e27-32a0-4114-97d5-adaf2ab5572a@pengutronix.de>
Date: Sat, 28 Dec 2024 14:33:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_053334_161493_78CB142A 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox on lore.kernel.org, OE-core and Mastodon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Many might have noticed already, but for those that didn't, there has been
few things happening regarding to barebox that didn't hit the mailing list:

  - The barebox mailing list is being indexed at lore.kernel.org[1] for
    a few months now.
    lore.barebox.org continues to work, but indexing on lore.kernel.org
    means that https://lore.kernel.org/all/ will now also show
    barebox matches and improved b4 support, including web relay[2]!

  - There's an upstream barebox recipe[3] now in OpenEmbedded-Core!
    The next Yocto release should make barebox integration easier than ever.

  - There's a Mastodon presence now at @barebox@fosstodon.org[4] for those
    interested in following barebox-related news such as these. I intend to
    highlight major changes and news such as the above, so follow us there if
    you're interested.

Also feel free to spread the word: tag @barebox@fosstodon.org if you do something
cool with barebox or let me know if you'd like to show affiliation with the
barebox project by joining the Github organization.

[1]: https://lore.kernel.org/barebox/
[2]: https://b4.docs.kernel.org/en/latest/contributor/send.html#authenticating-with-the-web-submission-endpoint
[3]: https://git.openembedded.org/openembedded-core/commit/?h=master-next&id=5c69f5626278a6e9756188a5771b18075380f52d
[4]: https://fosstodon.org/@barebox

Cheers from 38c3,
Ahmad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



