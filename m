Delivery-date: Wed, 15 Apr 2026 08:28:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtja-00CKCX-0H
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtjZ-0005Xp-IP
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9rjTuKIVUGWZR8KG+gSJoCT8PDcXw5/Ii2gnUTbHzFs=; b=V35LjTiyGjsSv/0ADOsi/2bzVn
	+nPsY+I6vxQ5bGWE6z2y0fOiVoG+HHF4mH8wQoOyJlDhcaDssToPtDtbAbjx7qrQRbPL++6rKd6RG
	fF5tJlP++w0sETrP4ugVRzExGW4p4x7cD7n7/hGPmhqxpaXYovTJNoyCCArNhXgZ4LjaerBAqm3Zo
	An35/402vODvMEFzLBnrg4B/A7ewSymo9oGjQ0QK1Yasqe3pMV221CrEEIdOjSmlB2IORUSW59nAS
	4hNjPiaEuuKXBKjHCFu1xWCfzvxMHbiqzXsCr2uqLYUCp0EZL6jY3Lu92SrpDOkRNI76rhELEY4G9
	fVZ34BIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtjC-00000000eGK-1GXV;
	Wed, 15 Apr 2026 06:27:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtj9-00000000eG0-47Ie
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:27:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtj8-0005RH-8H; Wed, 15 Apr 2026 08:27:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtj8-005St4-0D;
	Wed, 15 Apr 2026 08:27:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtj8-0000000DpcN-003G;
	Wed, 15 Apr 2026 08:27:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Chali Anis <chalianis1@gmail.com>
In-Reply-To: <20260414135936.714776-1-a.fatoum@pengutronix.de>
References: <20260414135936.714776-1-a.fatoum@pengutronix.de>
Message-Id: <177623447399.3296630.4470440917806302597.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:27:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_232756_029199_3D575B8A 
X-CRM114-Status: UNSURE (   5.17  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] bootm: require EFI boot when running as payload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Apr 2026 15:59:35 +0200, Ahmad Fatoum wrote:
> An EFI-stubbed ARM64 Linux kernel can be optionally started as EFI
> application via its PE entry point or it can be directly executed with
> the normal boot protocol.
> 
> To support both in barebox, we have a global.bootm.efi parameter that
> allows choosing either:
> 
> [...]

Applied, thanks!

[1/1] bootm: require EFI boot when running as payload
      https://git.pengutronix.de/cgit/barebox/commit/?id=b40f7d8795e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



