Delivery-date: Tue, 02 May 2023 11:23:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmET-002ApN-Mo
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:23:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmER-0003f9-NY
	for lore@pengutronix.de; Tue, 02 May 2023 11:23:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I8imebsizGPukDNg5E93gEkscKs8WvS4b/ASw7CNiIM=; b=cCY0mFiR1SYRtgW0fMqJpt3SRw
	yxpALyqsJs5dXPnSwFeP0NKBs82UCeuVMZ8L/sjNCKReENa4P54zW7IqlQahEEFCn0lQb6o+pAm2N
	s/khf77VEsNF8agrTnnBWQNBc4QGB9/J2M1B6eE8szbzsFP3ITbh2rQkTA7UkQwTKPWkBhe3tIy2q
	R1/LM6cY3tkbx7a32pqRtvqEr7dq7yS5h+rQwB4TJkSjjHAWL9VRRnGzxdlePxm3dJ2g5DdOGcx43
	/ZT6QT0JZS6kEJRuZH3Jk+RpG5YExogcu075WxfVbvt9fdOddyNSwOPw564A2Xv7t5tSRzYCg+0yI
	jY3fIlzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmDV-000lEV-0P;
	Tue, 02 May 2023 09:22:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmDR-000lDt-1i
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:22:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ptmDP-0003ZP-T1
	for barebox@lists.infradead.org; Tue, 02 May 2023 11:22:31 +0200
Message-ID: <85960db9-130d-f29a-c426-e0bee0e77cd2@pengutronix.de>
Date: Tue, 2 May 2023 11:22:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_022233_825039_E8D8DE98 
X-CRM114-Status: GOOD (  10.57  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [ANN] github.com/saschahauer/barebox is now
 github.com/barebox/barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Sascha has been maintaining a read-only Github mirror for a couple of years
now. This has been transferred today to https://github.com/barebox/barebox
The old https://github.com/saschahauer/barebox should forward to the new one.

There are currently no plans to change the mailing list driven contribution
model or the canonical repository at git.pengutronix.de/barebox

The reorganization was done to reduce confusion as some of the Github forks
shown in web searches are outdated and it's not apparent that Sascha's repo
is the "official mirror".

This has the nice side-effect that interested Github & barebox users can now
show a barebox badge on their profile. If you want one, just reply here or
over IRC for an invitation to the organization. This doesn't confer any
rights besides the normal read-only access, but members may navigate to
https://github.com/orgs/barebox/people to enable public display of
a barebox badge. :-)


Cheers and happy hacking,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


